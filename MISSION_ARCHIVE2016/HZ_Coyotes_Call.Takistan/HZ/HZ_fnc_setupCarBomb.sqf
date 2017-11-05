/* HZ_fnc_setupCarbomb
 * Sets the given car to be a car bomb that will blow up on the trigger activating unit.
 * car bomb will chace until dead or blown up
 * ARGUMENTS: [iedCar, viedTrig]
 * RETURNS: Nothing
 * 
 * [[iedCar, viedTrig]] call HZ_fnc_setupCarbomb.sqf;
*/

if (!isServer) exitWith {} ; //Fuck off, clients.

private ["_params","_possibleExplosions"];

_params = _this select 0;
_iedCar = _params select 0;
_viedTrig = _params select 1;
_debug = false;

if (_debug) then {
	hint "Car Bomb Setup Initialized";
};

//Lying in wait for a trigger activating unit. Checking ever 2 seconds
[[_iedCar, _viedTrig]] spawn { 
	_iedCar = _this select 0 select 0;
	_viedTrig = _this select 0 select 1;
	
	sleep 3; //wait for eden to move units into their cars. Does not happen immediately.
	if (isNull driver _iedCar) exitWith {}; //no driver. quit out everything
	
	_iedCar setVehicleLock "LOCKEDPLAYER";
	_iedCar addMagazineCargoGlobal ["IEDLandBig_Remote_Mag", 1];  

		
	while {(alive (driver _iedCar)) && (alive _iedCar)} do { //driver and car still functional
		if (count (list _viedTrig) > 0) then { //something in trigger!
			_trigUnit = (list _viedTrig) select 0; //get first thing that triggered it
			//if (_debug) then {hint format ["%1 is now chasing target unit %2", (group _iedCar),(group _trigUnit)]};
			[[_iedCar, _trigUnit]] call beginChase;
		}
		else{
			sleep 2;
		};
	}; //end while
}; //end spawn block


/*detonateCarBomb
 *detonate carbomb if close enough, driver killed, car destroyed, or dud.
 * ARGUMENTS: [iedCar]
 * RETURNS: nothing
 */
detonateCarBomb = {
	_iedCar = _this select 0 select 0;
	_possibleExplosions = ["Bomb_03_F","Bomb_04_F","R_60mm_HE","R_80mm_HE","HelicopterExploSmall","Bo_Mk82"];
	_chosenExplosion = _possibleExplosions call BIS_fnc_selectRandom;
	_detonate = false; //default to false
	_yell = false; //yell if driver alive
	
	if (alive (driver _iedCar)) then { //guaranteed detonation
		_detonate = true;
		_yell = true;
	}
	else { 
		if (!alive _iedCar) then { //car destroyed. Higher chance of detonation
			if (random 1 > 0.3) then {
				_detonate = true;
			};
		}
		else { //car alive but driver must be dead. lower chance of detonation
			if (random 1 > 0.8) then {
				_detonate = true;
			};
		};
	};
	
	if (_detonate) then {
		if (_yell) then {
			[_iedCar, ("allah6"),50] call CBA_fnc_globalSay3d;
		};
		sleep ((random 2.5) + 1);
		_boom = _chosenExplosion createvehicle (getpos _iedCar);
		_iedCar setdamage 1;
	};
};//end detonateCarBomb


/*beginChase
 *called when enemy enters trigger area. begins the car bomb attack
 *ARGUMENTS: [iedCar, _trigUnit]
 *RETURNS: Nothing
*/
beginChase = {
	_iedCar = _this select 0 select 0;
	_trigUnit = _this select 0 select 1;	
	
	_nearEnemy = false;
	
	//car bomb too far. get in close
	//break out if car or driver no longer functional
	while {_iedCar distance _trigUnit > 10} do {
		
		//Check if any enemy is nearby
		{
			if (side _x == east) then {
				_nearEnemy = true;
				_trigUnit = _x;
			}
		} forEach nearestObjects [_iedCar, ["man","car","tank"], 10];
		
		
		if (_nearEnemy) exitWith {
			[[_iedCar]] call detonateCarBomb;
		};
		
		_chaseWP = (group _iedCar) addWaypoint [(position _trigUnit), 0];
		(group _iedCar) setBehaviour "CARELESS";
		[(group _iedCar), 0] setWaypointSpeed "FULL";
	
		if (!alive (driver _iedCar) || (!alive _iedCar)) exitWith {};
		
		sleep 1;
	};
	//Car is either disabled in someway or close enough. call detonate
	[[_iedCar]] call detonateCarBomb;

};//end beginChase


