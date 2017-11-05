/*V1.8.2- By: Ghost - creates empty vehicles at set positions and some can have ieds;
ghst_civcars = [_locselpos,_rad,_maxcars,_ieds,_showmarks] execvm "scripts\ghst_civcars.sqf";
ghst_civcars = [(getmarkerpos "center"),3000,40,true,false] execvm "scripts\ghst_civcars.sqf";
*/
if (!isserver) exitwith {};

_centerposition = _this select 0;//position
_rad = _this select 1;//radius for vehicles to spawn
_maxcars = _this select 2;//max number of cars to spawn
_ieds = _this select 3;//true to have random ieds false for normal cars
_showmarks = _this select 4;//show location markers

//Vehicle list - edit as needed//
_vehcivlist = ["C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F","C_Hatchback_01_f","C_Hatchback_01_sport_f","C_Van_01_box_f","C_Van_01_transport_f"];

_iedlist = ["Sh_120_HE","M_Mo_82mm_AT","Sh_82mm_AMOS","Sh_120_HE","Sh_82mm_AMOS","M_Mo_82mm_AT"];

//Do not edit below this line unless you know what you are doing//
//////////////////////////////////////////////////////

//Get array of roads in area
_roads = (_centerposition nearRoads _rad);

_cars = floor(count _roads / 10);

if (_cars > _maxcars) then {_cars = _maxcars;};

//create empty vehicles
private ["_direction"];
for "_x" from 0 to (_cars) do {

	_r = floor(random count _roads);  
	_roadssel = _roads select _r;
	_roadconto = roadsConnectedTo _roadssel;
	_direction = [_roadssel, _roadconto select 0] call BIS_fnc_DirTo;
	_roads = _roads - [_roadssel];
	_pos =  [(getposatl _roadssel select 0)-5 * sin(random 359),(getposatl _roadssel select 1)-5 * cos(random 359)]; 
	//_pos = _pos findEmptyPosition [5,10];
	_n = count _vehcivlist;
	_i = floor(random _n);
	_vehcivsel = _vehcivlist select _i;
	_veh = createVehicle [_vehcivsel,_pos, [], 0, "NONE"];
	_veh setFuel (0.3 + random 0.5);
	if (isnil "_direction") then {
	_veh setdir (random 360);
	} else {
	_veh setdir _direction;
	};
	_veh setPosATL [getposatl _veh select 0,getposatl _veh select 1,0];
	_veh setvelocity [0,0,0];
	
		//create ied
		if (_ieds and (floor (random 10) > 7)) then {
			//create markers for ieds
			if (_showmarks) then {
				_markname = str (_pos);
				_marker = createMarker [_markname, _pos];
				_marker setMarkerShape "ICON";
				_marker setMarkerType "mil_dot";
				_marker setmarkercolor "ColorBlack";
			};
			//create loop to detect blufor and blow up
			[_veh,_iedlist] spawn {
				_iedveh = _this select 0;
				_iedlist = _this select 1;
				
				_n = count _iedlist;
				_i = floor(random _n);
				_iedsel = _iedlist select _i;
				
					while {damage _iedveh < 0.4} do {
						sleep 4;
						_near = (getpos _iedveh) nearObjects ["Man", 15];
						{if (side _x == west) then {
						_iedveh setdamage 0.5;
						}} forEach _near;
					};
				_ied = _iedsel createVehicle (getpos _iedveh);
			};
		} else {

			//create markers		
			if (_showmarks) then {
			_markname = str (_pos);
			_marker = createMarker [_markname, _pos];
			_marker setMarkerShape "ICON";
			_marker setMarkerType "mil_dot";
			_marker setmarkercolor "ColorBlue";
			};
		};
	sleep 0.1;
	
	ghst_civcararray = ghst_civcararray + [_veh];
};
