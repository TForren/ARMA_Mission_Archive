if (!isServer) exitWith {};
private ["_roadlist","_mPos","_civilians","_vehicles","_parked","_groupCount","_localGrpCount","_zoneGroup","_grp","_PatrolVehArray"];
_mkr= (_this select 0);
_mPos=markerpos _mkr;

_varID=format["var%1", _mkr];
_var=server getvariable _varID;

_popVar=format["population%1", _mkr];
_information=server getvariable _popVar;
	_civilians=(_information select 0);
	_vehicles=(_information select 1);
	_parked=(_information select 2);
	_roadlist=(_information select 3);
	_roadWPS=(_information select 4);

IF (debugCOS) then {
COSGlobalSideChat=[_civilians,_vehicles,_parked, _mkr];publicvariable "COSGlobalSideChat";
player groupChat (format ["Town:%4 .Civilians:%1 .Vehicles:%2 .Parked:%3",_civilians,_vehicles,_parked, _mkr]);//for singleplayer

};	

_showRoads=false;				
	IF (_showRoads) then {
		{
	_txt=format["roadMkr%1",_x];
	_debugMkr=createMarker [_txt,getpos _x];
	_debugMkr setMarkerShape "ICON";
	_debugMkr setMarkerType "hd_dot";
		}foreach _roadlist;
					};
					

_groupCount=server getvariable "cosGrpCount";
_zoneGroup=createGroup DefaultSide;
_localGrpCount=1;

waituntil {!populating_COS};
populating_COS=true;
_groupCount=server getvariable "cosGrpCount";


// SPAWN PEDESTRIANS
_civilianArray=[];
_roadlist=_roadlist call BIS_fnc_arrayShuffle;	

for "_i" from 1 to _civilians do {

if (!(server getvariable _varID)) exitwith {_var=false;};

	_tempUnit=COScivPool select (floor(random(count COScivPool)));
	_tempPos=_roadlist select _i;
	
		if (COSmaxGrps < (_groupCount+_localGrpCount+1)) 
					then {
			_grp=_zoneGroup;	
					}else{
				_grp=createGroup DefaultSide;
				_localGrpCount=_localGrpCount+1;
						};
						
		_unit = _grp createUnit [_tempUnit, _tempPos, [], 0, "NONE"];	

				_civilianArray set [count _civilianArray,_grp];
					_roadlist set [_i, objnull];
					_roadlist = _roadlist - [objnull];	
					
				null =[_unit] execVM "cos\addScript_Unit.sqf";
					
					IF (debugCOS) then {
				_txt=format["INF%1,MKR%2",_counter,_mkr];
				_debugMkr=createMarker [_txt,getpos _unit];
				_debugMkr setMarkerShape "ICON";
				_debugMkr setMarkerType "hd_dot";
				_debugMkr setMarkerText "Civ Spawn";
						};
					};
												
// SPAWN VEHICLES
_vehicleArray=[];
_PatrolVehArray=[];

for "_i" from 1 to _vehicles do {

if (!(server getvariable _varID)) exitwith {_var=false;};

	_tempPos=_roadlist select _i;
	_tempVeh=COSmotPool select (floor(random(count COSmotPool)));	
	_tempUnit=COScivPool select (floor(random(count COScivPool)));
	
		_roadConnectedTo = roadsConnectedTo _tempPos;
		_connectedRoad = _roadConnectedTo select 0;
		_direction = [_tempPos, _connectedRoad] call BIS_fnc_DirTo;
					
	if (COSmaxGrps < (_groupCount+_localGrpCount+1)) 
		then {
			_grp=_zoneGroup;	
				}else{
			_grp=createGroup DefaultSide;
			_localGrpCount=_localGrpCount+1;
				};
						
	_veh = createVehicle [_tempVeh, _tempPos, [], 0, "NONE"];
	_unit = _grp createUnit [_tempUnit, getpos _veh, [], 0, "CAN_COLLIDE"];
		_veh setdir _direction;
				
			_unit assignAsDriver _veh;
			_unit moveInDriver _veh;
					
				_vehPack=[_veh,_unit,_grp];
				_PatrolVehArray set [count _PatrolVehArray,_grp];
				_vehicleArray set [count _vehicleArray,_vehPack];
					_roadlist set [_i, objnull];
					_roadlist = _roadlist - [objnull];	
								
null =[_veh] execVM "cos\addScript_Vehicle.sqf";
null =[_unit] execVM "cos\addScript_Unit.sqf";
										
		IF (debugCOS) then {
			_txt=format["veh%1,mkr%2",_counter,_mkr];
			_debugMkr=createMarker [_txt,getpos _unit];
			_debugMkr setMarkerShape "ICON";
			_debugMkr setMarkerType "hd_dot";
			_debugMkr setMarkerText "VEH Spawn";
						};
			};

// Apply Patrol script to all units
null =[_civilianArray,_PatrolVehArray,_roadWPS] execVM "cos\CosPatrol.sqf";

				
// SPAWN PARKED VEHICLES
_ParkedArray=[];
for "_i" from 1 to _parked do {

if (!(server getvariable _varID)) exitwith {_var=false;};

	_tempVeh=COSmotPool select (floor(random(count COSmotPool)));
	_tempPos=_roadlist select _i;

		_roadConnectedTo = roadsConnectedTo _tempPos;
		_connectedRoad = _roadConnectedTo select 0;
		_direction = [_tempPos, _connectedRoad] call BIS_fnc_DirTo;
			
			_veh = createVehicle [_tempVeh, _tempPos, [], 0, "NONE"];
			_veh setdir _direction;
			_veh setPos [(getPos _veh select 0)-6, getPos _veh select 1, getPos _veh select 2];
								
		_ParkedArray set [count _ParkedArray,_veh];
		_roadlist set [_i, objnull];
		_roadlist = _roadlist - [objnull];
		
null =[_veh] execVM "cos\addScript_Vehicle.sqf";

	IF (debugCOS) then {
		_txt=format["Park%1,mkr%2",_counter,_mkr];
		_debugMkr=createMarker [_txt,getpos _veh];
		_debugMkr setMarkerShape "ICON";
		_debugMkr setMarkerType "hd_dot";
		_debugMkr setMarkerText "Park Spawn";
					};
			};

// Count groups 		
_groupCount=server getvariable "cosGrpCount";
_groupCount=_groupCount+_localGrpCount;
server setvariable ["cosGrpCount",_groupCount];
populating_COS=false;

if (showTownLabel and (server getvariable _varID)) 
	then {
	
	COSTownLabel=[(_civilians+_vehicles),_mkr];PUBLICVARIABLE "COSTownLabel";
	_population=format ["Population: %1",_civilians+_vehicles];
		0=[markerText _mkr,_population] spawn BIS_fnc_infoText;// FOR USE IN SINGLEPLAYER
		};

		
// DELETE UNITS/VEHICLES AFTER PLAYER LEAVES AREA
while {_var} do
	{
	_var=server getvariable _varID;
	if (!_var) exitwith {};
	sleep 1;
	};

waituntil {!populating_COS};
_counter=0;		
		{
_grp=_x;
_counter=_counter+1;
if (debugCOS) then { deletemarker (format["INF%1,MKR%2",_counter,_mkr]);};
{ deleteVehicle _x } forEach units _grp;
deleteGroup _grp;  
		}foreach _civilianArray;
		
_counter=0;
			{
_veh=_x select 0;
_unit=_x select 1;
_grp=_x select 2;
_counter=_counter+1;
if (debugCOS) then {deletemarker (format["veh%1,mkr%2",_counter,_mkr]);};

 
 // CHECK VEHICLE IS NOT TAKEN BY PLAYER
  if ({isPlayer _veh} count (crew _veh) == 0) 
	then {
{deleteVehicle _x} forEach (crew _veh); deleteVehicle _veh;
	}; 
 deletevehicle _unit;
 deletegroup _grp;
		}foreach _vehicleArray;

_counter=0;
			{
_counter=_counter+1;
 if (debugCOS) then {deletemarker (format["Park%1,mkr%2",_counter,_mkr]);};
 
  // CHECK VEHICLE IS NOT TAKEN BY PLAYER
  if ({isPlayer _x} count (crew _x) == 0) 
	then {
	deletevehicle _x;
	}; 
		}foreach _ParkedArray;

deletegroup _zoneGroup;


_groupCount=server getvariable "cosGrpCount";
_groupCount=_groupCount-_localGrpCount;
server setvariable ["cosGrpCount",_groupCount];
