/*HZ_fnc_HajiHouse
 *  This script will fill a house with hajis
 *Takes in:
 *  [Trigger to use, ambush detection distance (meters)] 
 *Returns:
 *  Ambushing Hajis (doesn't return anything)
*/
if (isServer) then {
	
private _params = (_this select 0);
private _detectionDist = _params select 1;
private _cnt = 0;
private _posarray = [];

private _areaX = (triggerArea (_params select 0)) select 0;  
private _areaY = (triggerArea (_params select 0)) select 1;
private _randX = (random _areaX) * 2 - _areaX;
private _randY = (random _areaY) * 2 - _areaY;
private _chosenHousePos = [((getpos (_params select 0)) select 0) + _randX, 
							((getpos (_params select 0)) select 1) + _randY, 0];
private _house = nearestBuilding _chosenHousePos;

_PossibleUnits = ["CUP_O_TK_INS_Soldier_TL", "CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_AR", "CUP_O_TK_INS_Soldier_MG", "CUP_O_TK_INS_Guerilla_Medic", "CUP_O_TK_INS_Bomber"];

//Create position array
//as long as building position _cnt not equal to "[0,0,0]" keep looping
while {format ["%1", _house buildingpos _cnt] != "[0,0,0]" } do {
	_pos = _house buildingpos _cnt;		//select building position _cnt
	_posarray = _posarray + [_pos];		//add the position to the list
	_cnt = _cnt + 1;					//increment counter

	sleep 0.01;
};

/*fnc_checklevel
 * Determines the building level the newly spawned duder is on. Sets the unitpos accordingly
 * or deletes the unit if not even in the building.
 *Takens in:
 *  the new duder (obj), sky object (0bj), if the duder has LOS with the sky (0-1)
 *Returns:
 *  Nothing, get fucked.
*/
_HZ_fnc_checkLevel = {
	_newDuder = (_this select 0) select 0;
	_sky = (_this select 0) select 1;
	_los = (_this select 0) select 2;

	sleep 3; //give units a few to fall to their surface proxies
	
	if (_los < 0.5) then { //LOS is less than half, unit is inside
		_newDuder setUnitPos "MIDDLE";
	}
	else { //LOS is greater than half. unit must be outside
		//unit is outside but above second floor. Probably on a balcony or roof
		//unit must stay hidden as best as he can so prone
		if ((eyepos _newDuder) select 2 > 19) then { 
			_newDuder setUnitPos "DOWN";
		}
		else { //Ground level and outside. Only really possible if unit isn't in the building at all. delete
			deletevehicle _newDuder;
		};
		
		//Check if the poor sob is getting arma'd
		if (animationState _newDuder == "afalpercmstpsraswrfldnon") then {
			deletevehicle _newDuder;
		};
	};
	_newDuder allowdamage true; //Re enable damage
	if (true) exitWith {};
};//end _fnc_checkLevel

//create dot in sky to check LOS (if unit is outside)
_sky = "Sign_sphere10cm_EP1" createvehicle [(getpos _house) select 0, (getpos _house) select 1, ((getpos _house) select 2) + 50];
_sky setpos [getpos _sky select 0,getpos _sky select 1, 50];
_deleteSky = [_sky] spawn {
	sleep 10;
	deleteVehicle (_this select 0);
};

{
	_chosenUnit = _PossibleUnits call BIS_fnc_SelectRandom;
	_tempGroup = createGroup east;

	_newDuder = _tempGroup createUnit [_chosenUnit, _x, [], 0, "FORM"];
	
	_los = [objNull, "VIEW"] checkVisibility [eyePos _newDuder, getposASL _sky];
	
	//Every newDuder has his own checklevel spawn running.
	_checkLevel = [[_newDuder,_sky,_los]] spawn _HZ_fnc_checkLevel;
	_newDuder setSkill 0.2;
	_newDuder allowdamage false; //hit eventhandler will fire when units fall from heights. allowdmg later
	_newDuder disableAI "TARGET";
	_newDuder disableAI "MOVE";
	_newDuder disableAI "AUTOTARGET";
	_newDuder setdir (_house getRelDir _newDuder) + (getdir _house);
	_newDuder setSkill["AimShake",0.9];
	_newDuder setSkill["AimAccuracy",0.1];
	
	
	_newDuder addEventHandler ["Hit", {
		_chosenDuder = (nearestObject [getpos (_this select 0), "man"]);
		[_chosenDuder] spawn HZ_fnc_rallySquad;
		_wp = (group _chosenDuder) addWaypoint [[(position _chosenDuder select 0) + (random 20 -10),(position _chosenDuder select 1) + (random 20 -10), 0], 0];
	}];
	
} forEach _posarray;


//execAmbush
//Takes in: 
//  home pos of bulding [x,y,z], detection radius, unit that triggered the ambush 
//Returns:
//  NOoope
HZ_fnc_execAmbush = {
	_home = (_this select 0) select 0;
	_areaX = (_this select 0) select 1;
	_trigUnit = (_this select 0) select 2;
	_firstYell = true;

	{
	    if (side _x == east) then { //getting all indfor in the ambush area
			if (_firstYell) then { //this should only run once. First guy chosen
				_chosenYell = ["allah6","allah2"] call BIS_fnc_selectRandom; 
				[_x, _chosenYell,70] call CBA_fnc_globalSay3d; //The initial banzai Yell	
				_x setUnitPos "UP"; //stands up first for dramatic effect			
				sleep 1.1; //sleep a few seconds to let the first yeller yell.			
				_firstYell = false;
				_x setUnitPos "UP";
				_x enableAI "TARGET";
				_x enableAI "AUTOTARGET";
				_x enableAI "MOVE";
			};
			_chosenYell = ["allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9"] call BIS_fnc_selectRandom;
			
			[_x, _chosenYell,70] call CBA_fnc_globalSay3d; //everyone else yelling

			_x setUnitPos "UP";
			_x enableAI "TARGET";
			_x enableAI "AUTOTARGET";
			_x enableAI "MOVE";
			
			_x removeEventHandler ["Hit", 0];
			
			_x reveal [_trigUnit, 3]; //Haji knows about trigger unit
			
			//Randomly pick ground floor people to attack
			//if ((eyepos _x) select 2 < 19) then {//eyepos les than 19, most be on ground floor
				if (random 1 < 0.65) then {
					_wp = (group _x) addWaypoint [[(position _trigUnit select 0) + (random 20 -10),
											(position _trigUnit select 1) + (random 20 -10), 0], 0];
				};
			//};
			
		sleep 0.01;
	    };//end side check
	} forEach nearestObjects [_home, ["man"], _areaX];
	
	sleep 5;

};//end execAmbush



/*ambushChecker
 * Loops indefinitely until triggering unit causes ambush
 *takes in:
 *  homepos of building [x,y,z], length of detection radius (float)
 *Returns:
 *  Nope. Still nothing
*/
_ambushChecker = [[_house,_detectionDist]] spawn {
	_house = (_this select 0) select 0;
	_detectionDist = (_this select 0) select 1;
	_bluforHere = false;	
	_trigUnit = nil; //unit that triggers the ambush
	
	while {!_bluforHere} do {
	//hint format ["checking for blufor at %1", time];
		//check if blufor is in the area to be ambushed.
		{
			if (side _x == west) then {
				_bluforHere = true;
				_trigUnit = _x;
			}
		} forEach nearestObjects [_house, ["man"], _detectionDist];

		if (_bluforHere) then {	
			//hint "ambush triggered";
			[[_house,_detectionDist,_trigUnit]] call HZ_fnc_execAmbush;
		};//end bluforhere check
		
		sleep 5; //loop every 5 seconds
	}; //end waiting loop

};//end ambushchecker


/*HZ_fnc_rallySquad
 *Rallies up the hajis into a group. 
 *Takes in:
 *[who is rallying squad]
*/
HZ_fnc_rallySquad = {
	_duder = _this select 0;
	{
		_ambushGroup = createGroup east;
		if (side _x == east) then{
			[_x] join _ambushGroup;
			_x setUnitPos "UP";
			_x enableAI "TARGET";
			_x enableAI "MOVE";
			_x enableAI "AUTOTARGET";
			_x removeEventHandler ["Hit", 0];
		};
	} forEach nearestObjects [_duder, ["man"], 80];
};


if (true) exitWith {};
/*
handle = [] spawn { 
 while {true} do { 
  hint format["reldir: %1    dir: %2", (player getRelDir _house),getdir player]; 
  sleep 0.25; 
 }; 
}; 
*/

}; //end server block