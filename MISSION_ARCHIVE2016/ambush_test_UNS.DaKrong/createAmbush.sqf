if (isServer) then {
	
private ["_home","_homeX","_homeY","_area","_areaX","_areaY","_unitCount","_spawnbuffer"];

//[this, enemycount]
_home = getpos (_this select 0); //get location of trigger
_homeX = (_home select 0);
_homeY = (_home select 1);
_area = triggerArea (_this select 0); //get area of trigger
_areaX = (_area select 0);
_areaY = (_area select 1);
_unitCount = (_this select 1); //number of enemies to spawn for ambush
_spawnbuffer = 8; //how many meters to subtract from possible spawn location. 
				//Allows some space for blufor to walk into trigger before stepping over an enenmy
	

_DEBUG = true;

	_debugstr = parseText format ["<t align='center' size='2.0'>Ambush Debug</t><br/>
		home: %1<br/>
		home XY: %2 %3<br/>
		area XY: %4 %5<br/>
		",_home,_homeX, _homeY,_areaX,_areaY];
		
	if (_DEBUG) then {hint _debugstr;};

_PossibleUnits = ['uns_nva10b', 'uns_rf_vc9a', 'uns_mf_vc9a', 'uns_nva12b', 'uns_nva12c', 'uns_nva12d', 'uns_nva10a'];

for "_i" from 1 to _unitCount do {
	_chosenUnit = _PossibleUnits call BIS_fnc_SelectRandom;
	_tempGroup = createGroup east;
	_randX = (random (_areaX)*2 - _areaX);
	_randY = (random (_areaY)*2 - _areaY);
	
	if (_randX < 0) then { _randX = _randX + _spawnbuffer} else {_randX = _randX - _spawnbuffer};
	if (_randY < 0) then { _randY = _randY + _spawnbuffer} else {_randY = _randY - _spawnbuffer};
	
	//_newDuder = _chosenUnit createUnit [[_areaX - _randX ,_areaY - _randY, 0], _tempGroup];
	
	_newDuder = _tempGroup createUnit [_chosenUnit, [_homeX - _randX ,_homeY - _randY, 0], [], 0, "FORM"];
	//"Sign_Sphere25cm_F" createvehicle [_homeX + _randX ,_homeY + _randY, 0];
	_newDuder setUnitPos "DOWN";
	_newDuder disableAI "TARGET";
	_newDuder disableAI "AUTOTARGET";
	
	//TOOD TEST THIS
	_newDuder addEventHandler ["Hit", {
		(_this select 0) setUnitPos "MIDDLE";
		(_this select 0) enableAI "TARGET";
		(_this select 0) enableAI "AUTOTARGET";
		_wp = (group (_this select 0)) addWaypoint [[(position (_this select 0) select 0) + (random 20 -10),
										(position (_this select 0) select 1) + (random 20 -10), 0], 0];
	}];
	
};

//ambushChecker
//takes in:
// 0: home pos of ambush trigger [x,y,z]
// 1: length of trigger area (float)
//Loops indefinitely until triggering unit causes ambush
_ambushChecker = [[_home,_areaX]] spawn {
	_home = (_this select 0) select 0;
	_areaX = (_this select 0) select 1;
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
		} forEach nearestObjects [_home, ["man"], _areaX];

		if (_bluforHere) then {	
			//hint "ambush triggered";
			[[_home,_areaX,_trigUnit]] call HZ_execAmbush;
		};//end bluforhere check
		
		sleep 5; //loop every 5 seconds
	}; //end waiting loop

	//waiting 1 minute after the ambush starts. 
	//(allows individuals to move freely and aggressively with their own individual waypoints
	sleep 30; 

	//rally all fighters into a normal group
	{
		//TEST THIS CHANGE
		//MOVE TO HERE
		_ambushGroup = createGroup east;
		if (side _x == east) then{
			//FROM HERE
			[_x] join _ambushGroup;
		};
	} forEach nearestObjects [_home, ["man"], _areaX * 2];

//TODO kill this block here
};//end ambushchecker


//execAmbush
//Takes in: 
// 0: home pos of ambush trigger [x,y,z]
// 1: x length of the trigger area
// 2: unit that triggered the ambush 
HZ_execAmbush = {
	_home = (_this select 0) select 0;
	_areaX = (_this select 0) select 1;
	_trigUnit = (_this select 0) select 2;
	_firstYell = true;


	{
	    if (side _x == east) then { //getting all opfor in the ambush area
			if (_firstYell) then { //this should only run once. First guy chosen
				_chosenYell = ["fullBanzai1","fullbanzai2"] call BIS_fnc_selectRandom; 
				[_x, _chosenYell,70] call CBA_fnc_globalSay3d; //The initial banzai Yell	
				_x setUnitPos "UP"; //stands up first for dramatic effect			
				sleep 2.1; //sleep a few seconds to let the first yeller yell.			
				_firstYell = false;
				_x enableAI "TARGET";_x enableAI "AUTOTARGET";
			};
			_chosenYell = ["banzai1","banzai2","banzai3","banzai4","banzai5","banzai6","banzai7"] call BIS_fnc_selectRandom;
			
			[_x, _chosenYell,70] call CBA_fnc_globalSay3d; //everyone else yelling

			_x setUnitPos "UP";
			_x enableAI "TARGET";
			_x enableAI "AUTOTARGET";
			
			_x removeEventHandler ["Hit", 0];
			
			_wp = (group _x) addWaypoint [[(position _trigUnit select 0) + (random 20 -10),
											(position _trigUnit select 1) + (random 20 -10), 0], 0];
		//sleep 0.01;
	    };//end side check
	} forEach nearestObjects [_home, ["man"], _areaX];
	
	sleep 5;

};//end execAmbush

};//end server block