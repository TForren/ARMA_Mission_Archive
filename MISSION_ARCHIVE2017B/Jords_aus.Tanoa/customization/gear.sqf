#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "B_SL", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/dklollol/Olsen-Framework-Arma-3/wiki/gear.sqf

//when set to false, facewear types that are whitelisted will not be removed
FW_force_remove_facewear = true;

_unit call FNC_RemoveAllGear;

switch (_type) do {

#include "gearBluefor.sqf" 

//#include "gearOpfor.sqf" 

//#include "gearIndfor.sqf" 

};

