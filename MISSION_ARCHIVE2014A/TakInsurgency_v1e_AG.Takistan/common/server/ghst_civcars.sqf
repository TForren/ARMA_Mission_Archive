/*V1.8.4- By: Ghost - creates empty vehicles at set positions and some can have ieds
ghst_civcars = [_locselpos,_rad,_maxcars,_ieds,_showmarks,_side] execvm "common\server\ghst_civcars.sqf";
ghst_civcars = [(getmarkerpos "center"),350,14,true,false,WEST] execvm "common\server\ghst_civcars.sqf";
*/
if (!isserver) exitwith {};

_centerposition = _this select 0;//position
_rad = _this select 1;//radius for vehicles to spawn
_maxcars = _this select 2;//max number of cars to spawn
_ieds = _this select 3;//true to have random ieds false for normal cars
_showmarks = _this select 4;//show location markers
_side = _this select 5;//side for mines to be known

//Vehicle list - edit as needed//
_vehcivlist = ["C_Offroad_01_F","C_Quadbike_01_F","C_SUV_01_F","C_Hatchback_01_f","C_Hatchback_01_sport_f","C_Van_01_box_f","C_Van_01_transport_f"];

_iedlist = ["Sh_120mm_HE","Bo_Mk82","Sh_155mm_AMOS","Sh_120mm_HE","Bo_GBU12_LGB","Sh_82mm_AMOS","Bo_Mk82"];

//Do not edit below this line unless you know what you are doing//
//////////////////////////////////////////////////////

//Get array of roads in area
_roads = (_centerposition nearRoads _rad);

_cars = floor(count _roads / 10);

if (_cars > _maxcars) then {_cars = _maxcars;};

//create empty vehicles
private ["_direction"];
for "_x" from 0 to (_cars) do {

	_roadssel = _roads call BIS_fnc_selectRandom;
	_roadconto = roadsConnectedTo _roadssel;
	_direction = [_roadssel, _roadconto select 0] call BIS_fnc_DirTo;
	_roads = _roads - [_roadssel];
	_pos =  [(getposatl _roadssel select 0)-5 * sin(random 359),(getposatl _roadssel select 1)-5 * cos(random 359)]; 
	_vehcivsel = _vehcivlist call BIS_fnc_selectRandom;
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
				[_pos,"ColorBlack","VBIED"] call fnc_ghst_mark_point;
			};
			//create loop to detect side and blow up
			[_veh,_iedlist,_side] spawn {
				_iedveh = _this select 0;
				_iedlist = _this select 1;
				_side = _this select 2;
				
				_iedsel = _iedlist call BIS_fnc_selectRandom;
				
					while {!(isnil "_iedveh") or (alive _iedveh)} do {
						sleep 4;
						if (damage _iedveh > 0.4) exitwith {};
						_near = (getpos _iedveh) nearObjects ["Man", 13];
						{if (side _x == _side) then {
						_iedveh setdamage 0.5;
						}} forEach _near;
					};
				if !(isnil "_iedveh") then {	
					_ied = _iedsel createVehicle (getpos _iedveh);
				};
			};
		} else {

			//create markers		
			if (_showmarks) then {
			[_pos,"ColorBlue","CIV CAR"] call fnc_ghst_mark_point;
			};
		};
	sleep 0.1;

};