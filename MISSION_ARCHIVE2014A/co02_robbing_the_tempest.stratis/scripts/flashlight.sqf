// [this] call compile preprocessFileLineNumbers "scripts\flashlight.sqf";

_unit = _this select 0;

_unit addPrimaryWeaponItem "acc_flashlight";
_unit unassignItem "NVGoggles_OPFOR"; 
_unit removeItem "NVGoggles_OPFOR";