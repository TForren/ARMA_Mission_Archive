/*
 Civilian Occupation System (COS)
 By BangaBob v0.41
 
 null=[] execVM "cos/cosInit.sqf";
 
 IMPORTANT: BEFORE PROCEEDING ADD AN OBJECT NAMED SERVER INTO THE EDITOR.
 
 To edit population of zones browse to line 95
 Open COS/AddScript_Unit.sqf to apply scripts to spawned units.
 Open COS/AddScript_Vehicle.sqf to apply scripts to spawned vehicles.
 To get Array of COS markers use _allMarkers=SERVER getvariable "COSmarkers";
*/
if (isnil "SERVER") then {Hint "You must ADD a object named SERVER";Player Sidechat "You must ADD a object named SERVER";}else{
if (isServer) then {

_distance=300;//Set spawn distance

blackListTowns = ["sagonisi"];// Remove towns from COS

whiteListMkrs=[];// Add Custom Markers for COS to populate 

DefaultSide = Civilian;// Set side of units spawned

_showMarker=false;// Show COS markers on map

showTownLabel = true;// Show town information when entering COS zones

debugCOS=false;// Show spawned units on the map

COSpedestrians=true; //Spawn pedestrians
COScars=true;// Spawn Cars
COSparked=true;// Spawn parked cars

// ADD/REMOVE UNITS FROM POOLS
COScivPool =["C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_beggar_F_afro","C_man_p_fugitive_F","C_man_p_shorts_1_F","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_shorts_4_F","C_man_w_worker_F"];	
COSmotPool =["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Offroad_01_F","C_SUV_01_F","C_Van_01_box_F","C_Van_01_fuel_F","C_Van_01_transport_F"];

COSmaxGrps=72;//Set Maximum group limit for COS at any one time (If limit is hit then civilians will be placed into a single group for each town)


// DO NOT EDIT BELOW
private ["_sizeX","_sizeY","_name","_pos","_mSize","_distance","_randomisation","_rad","_civilians","_vehicles","_parked","_markerID","_store","_minPositions"];
breakPatrol_FNC=compile preprocessFileLineNumbers "cos\patrolFnc.sqf";
unitScript_FNC=compile preprocessFileLineNumbers "cos\addScript_Unit.sqf";
vehScript_FNC=compile preprocessFileLineNumbers "cos\addScript_Vehicle.sqf";
COScomplete=false;publicvariable "COScomplete";
populating_COS=false;;
mkrArray=[];
server setvariable ["cosGrpCount",0];
_rad=75;
_slack=2;
{
_name = text _x;



if (_x in whiteListMkrs) 
	then {
	_sizeX=getMarkerSize _x select 0;
	_sizeY=getMarkerSize _x select 1;
	_pos=markerpos _x;
	_name=markerText _x;// GET MARKER DESCRIPTION IF WHITELIST
	if (_name == "") then {_name= _x;};
	deletemarker _x;
			}else{
		_sizeX = getNumber (configFile >> "CfgWorlds" >> worldName >> "Names" >> (text _x) >> "radiusA");
		_sizeY = getNumber (configFile >> "CfgWorlds" >> worldName >> "Names" >> (text _x) >> "radiusB");
		_pos=getpos _x;
				};
				
if (({_name==_x} count blackListTowns)>0) then {}else{
	if (_name == "") then {}else{			
		if (_sizeX < 50) then {_sizeX=150;};
		if (_sizeY < 50) then {_sizeY=150;};

	_markerID=format ["COSmkrID%1",_name];
		_foo = createmarker [_markerID, _pos];
		_foo setMarkerSize [_sizeX, _sizeY];
		_foo setMarkerShape "ELLIPSE";
		_foo setMarkerBrush "SOLID";
		_foo setMarkerColor "ColorGreen";
		_foo setMarkerText _name;
			mkrArray set [count mkrArray,_foo];
				if (!_showMarker) then {_foo setmarkerAlpha 0;}else{_foo setmarkerAlpha 0.5;};	
	
// Scan for houses around the marker area
	if (_sizeY>_sizeX) then {_mSize=_sizeY}else{_mSize=_sizeX};
		_houses= count (nearestObjects [_pos, ["house"], _mSize]);

		
// Customise population by number of houses
_randomisation=10;
	if (_houses <= 10) 
		then {
	_civilians=10+ round(random _randomisation);// Civilians spawned
	_vehicles=0;// Moving Vehicles Spawned
	_parked=1;// Parked Vehicles Spawned
			};		
 	if (_houses <= 30 and _houses > _randomisation) 
		then {
	_civilians=20+ round(random _randomisation);// Civilians spawned
	_vehicles=2;// Moving Vehicles Spawned
	_parked=2;// Parked Vehicles Spawned
			};
			
 	if (_houses <= 70 and _houses > 30) 
		then {
	_civilians=25+ round(random _randomisation);// Civilians spawned
	_vehicles=4;// Moving Vehicles Spawned
	_parked=2;// Parked Vehicles Spawned
			};
			
 	if (_houses <= 140 and _houses > 70) 
		then {
	_civilians=30+ round(random _randomisation);// Civilians spawned
	_vehicles=5;// Moving Vehicles Spawned
	_parked=3;// Parked Vehicles Spawned
			};
 	if (_houses > 140) 
		then {
	_civilians=40+ round(random _randomisation);// Civilians spawned
	_vehicles=5;// Moving Vehicles Spawned
	_parked=3;// Parked Vehicles Spawned
			};
if (!COSpedestrians) then {_civilians=0;};	
if (!COScars) then {_vehicles=0;};
if (!COSparked) then {_parked=0;};	
	

// Get Enough unique locations

_roadlist = _pos nearRoads _rad;
_minPositions=(_civilians+_vehicles+_parked+_slack);

if (count _roadlist <= _minPositions) 
	then {
	while {count _roadlist < _minPositions} do {
		if (count _roadlist >= _minPositions) exitwith {};
	
			_rad = _rad + _rad;
				_roadlist = _pos nearRoads _rad;		
				sleep 0.1;
			};
		};
	
// SAVE WAYPOINTS FOR WAYPOINTS
_store=20;
_roadWPS = [];
if (_minPositions > _store) then {_store= _minPositions};
_roadWPS resize _store;

for "_n" from 0 to _store do
		{
	_i=floor(random(count _roadlist));
     _roadWPS set [_n, _roadlist select _i];
		};
	
// save information
	_information=[_civilians,_vehicles,_parked,_roadlist,_roadWPS];
	_popVar=format["population%1",_foo];
		server setvariable [_popVar,_information];
		
			_trigger = createTrigger ["EmptyDetector",_pos]; 
			_trigger setTriggerArea [(_distance+_sizeX),(_distance+_sizeY),0,FALSE]; 
			_trigger setTriggerActivation ["ANY","PRESENT",true];
			_trigger setTriggerTimeout [1, 1, 1, true];
				_actCond="{vehicle _x in thisList && isplayer _x} count allunits > 0";
				_var=format["var%1", _markerID];
				_trigAct=format ["null= [%1] execVM ""cos\cosCore.sqf"";server setvariable [%2,true];",str _foo,str _var];
				_trigDe=format ["server setvariable [%1,false];",str _var];
			_trigger setTriggerStatements [_actCond,_trigAct,_trigDe];
	};
};
}foreach (nearestLocations [getArray (configFile >> "CfgWorlds" >> worldName >> "centerPosition"), ["NameCityCapital","NameCity","NameVillage","CityCenter"], 25000]) +whiteListMkrs;

SERVER setvariable ["COSmarkers",mkrArray,true];
COScomplete=true;publicvariable "COScomplete";
};

// LOCAL SCRIPTS
waituntil {COScomplete};
_mkrs=SERVER getvariable "COSmarkers";
null=[] execVM "COS\localScript.sqf";

};