_veh = _this select 0;
_unit = _this select 1;
_alt = (getPos _veh select 2) - 3;
_dir = direction _veh;

unassignVehicle _unit; 
_unit action ["EJECT", _veh];
_unit setDir _dir + 90;
sleep 0.1;
[_unit,_alt,true,true,true] call COB_fnc_HALO;