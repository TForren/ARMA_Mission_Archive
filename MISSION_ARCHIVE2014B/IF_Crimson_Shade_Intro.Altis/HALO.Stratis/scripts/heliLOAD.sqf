_unit = _this select 1;
_veh = heli;

_veh hideObject false; 
_unit assignAsCargo _veh;
_unit moveInCargo _veh;