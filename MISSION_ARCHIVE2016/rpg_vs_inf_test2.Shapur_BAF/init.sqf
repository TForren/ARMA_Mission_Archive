/************************************************************
				HZ_rpgParty script 
					By Hoizen
Randomly periodically tells AI to use excess launcher rockets
on enemy infantry.

************************************************************/

/*HZ_fnc_checkLauncher
 *checks if the unit has a valid rpg
 *Takes in:
 * [_unit,[validLaunchers]]
 * returns:
 * [boolean (true if valid RPG detected),rpgClassname]
 */
HZ_fnc_checkLauncher = {
	_params = _this select 0;
	_unit = _params select 0;
	_validLaunchers = _params select 1;
	_valid = false;
	_acceptedLauncher = "";
	_result = [];
	{
		if (_x in _validLaunchers) exitWith {
			_valid = true;
			_acceptedLauncher = _x;
		};
	} foreach weapons _unit;
	
	if (!_valid) then {
		_result = [false,""];	
	} else{
		_result = [true,_acceptedLauncher];
	};
	_result;
};

/*HZ_fnc_checkLauncherAmmo
 *checks if the unit has valid RPG ammo. Validity is in the array and has > 1 left
 *Takes in:
 * [_unit,[validRPGAmmo]]
 * returns:
 * [boolean (true if valid ammo detected),rpgAmmoClassname]
 */
HZ_fnc_checkRPGAmmo = {
	_params = _this select 0;
	_unit = _params select 0;
	_validAmmo = _params select 1;
	_valid = false;
	_acceptedAmmo = "";
	_result = [];
	{
		if (_x in _validAmmo) exitWith { //exitWith should grab the first valid ammo in the array. simulates preference by index
			_valid = true;
			_acceptedAmmo = _x;
		};
	} foreach magazines _unit;
	
	if (!_valid) then {
		_result = [false,""];	
	} else{
		_result = [true,_acceptedAmmo];
	};
	_result;
};

/* stores all the AI's weapons except the RPG so they actually use it 
   takes in:
   [unit,chosenLauncher]
   returns:
   [array of weapons stored]
  */
HZ_fnc_storeWeapons = {
	_params = _this select 0;
	_unit = _params select 0;
	_launcher = _params select 1;
	_storedWeapons = [];
	{
		if !(_x == _launcher) then {
			systemChat format ["%1 has weapon %2, removing it",_unit, _x];
			_storedWeapons = _storedWeapons + [_x];
			removeallweapons _unit;
		};
	} foreach weapons _unit;
	systemChat format ["%1 now has %2", _unit,str(weapons _unit)];
	systemchat format ["%1 has primary: %2", _unit,str(primaryweapon _unit)];
	systemchat format ["%1 has current weapon: %2", _unit,str(currentWeapon _unit)];
	_storedWeapons;
};

/*HZ_fnc_checkUseConditions
* Determines if it is a valid time to use the rpg
*Takes in:
* [unit]
* returns:
* [valid(boolean),target]
*/

HZ_fnc_checkUseConditions = {
	_params = _this select 0;
	_unit = _params select 0;
	_result = [false,""];
	_target = (assignedTarget _unit);
	_LOS = false;
	_newTarget = "";
	
	if ((!isNull _target) && (vehicle _target == _target)) then {
		systemChat format ["%1 has assigned target on %2", _unit,_target];
		_LOS = !(lineIntersects [ eyePos _unit, eyepos _target, _unit, _target]);
		
		if (_LOS) then {
			_result = [true,_target];
		} else { //no loss on assigned target. check nearby objects
			systemChat format ["%1 has no LOS on %2. Checking nearby objects.", _unit,_target];
			_nearbyObjects = nearestObjects[_target,['Landvehicle','building'],12];
			systemChat format ["%1 found objects: %2", _unit,str(_nearbyObjects)];
			_i = 0;
			while {_i < count _nearbyObjects && !_LOS} do {
				_newTarget = _nearbyObjects select _i;
				_LOS = !(lineIntersects [ eyePos _unit, getposASL _newTarget, _unit, _newTarget]);
				systemChat format ["%1 LOS on %2 is %3", _unit,_newTarget,str(_LOS)];
				_i = _i + 1;
			};
			systemChat format ["LOS %1", str(_LOS)];
			if (_LOS) then {
				_result = [true,_newTarget];
				systemChat format ["%1 found new target %2.", _unit,_newTarget];
			} else {
				systemChat format ["%1 was unable to find any target", _unit];
			};
		};
	} else {
		systemChat format ["%1 has not been assigned a target", _unit];
	};
	_result;
};

/* Give unit the order to fire on a target. Won't get his rifle(or pistol) back until he fires the launcher
	takes in:
	[_unit,target,launcher,ammotype,storedWeapons]
	returns:
	N/A
*/
HZ_fnc_commandFire = {
	_params = _this select 0;
	_unit = _params select 0;
	_target = _params select 1;
	_launcher = _params select 2;
	_ammo = _params select 3;
	_storedWeapons = _params select 4;
	_startTime = time;
	_elapsedTime = 0;
	_unit selectWeapon secondaryWeapon _unit;
	
	_firedEH = _unit addEventHandler ["Fired", {
		(_this select 0) setVariable ["HZ_fired",true];
		systemChat format ["%1 fired!", _this];
	}];
	
	while {!(_unit getVariable "HZ_fired") && (alive _unit) && (_elapsedTime < 30) } do {
		systemChat format ["%1 trying to fire rpg", _this];
		_unit dowatch _target; 
		_unit doTarget _target;
		_unit forceWeaponFire[_launcher, weaponState _unit select 2];
		_elapsedTime = time - _startTime;
		sleep 5;
	};
	
	{
		_unit addWeapon _x;
	} foreach _storedWeapons;
	
};

[] spawn {
	_validLaunchers = ["rhs_weap_rpg7"];
	_validAmmo = ["rhs_rpg7_OG7V_mag","rhs_rpg7_TBG7V_mag""rhs_rpg7_PG7VL_mag"];
	
	while {true} do {
		{ //foreach
			if (side _x == independent) then {
				if (behaviour _x != "COMBAT") exitWith {};
					systemChat format ["%1 in combat!", _x];
				/* check if unit has valid launcher */
				_validLauncherReturn = [[_x,_validLaunchers]] call HZ_fnc_checkLauncher;
				if (_validLauncherReturn select 0) then {
					systemChat format ["%1 has valid launcher!", _x];
					
					/* check if unit knows about enemy */
					_useConditionReturn = [[_x]] call HZ_fnc_checkUseConditions;
					if !(_useConditionReturn select 0) exitWith {};
					systemChat format ["condition check return: %1", str(_useConditionReturn)];
					_target = _useConditionReturn select 1;
					
					/* check if unit has valid ammo */
					_validAmmoReturn = [[_x,_validAmmo]] call HZ_fnc_checkRPGAmmo;
					if (_validAmmoReturn select 0) then {
						
						/* store other weapons and command fire */
						_launcher = (_validLauncherReturn select 1);
						_ammo = (_validAmmoReturn select 1);
						_storedWeapons = [[_x,_launcher]] call HZ_fnc_storeWeapons;
						[[_x,_target,_launcher,_ammo,_storedWeapons]] spawn HZ_fnc_commandFire;
						
					};
				};
			};
			sleep 1;
		} foreach allUnits;
		sleep 10; //check every 20 seconds
	};//end while
};//end spawn


