#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "H":
		{
			clearWeaponCargoGlobal _vehicle; 
			clearMagazineCargoGlobal _vehicle;
			clearBackpackCargoGlobal _vehicle;
			clearItemCargoGlobal _vehicle;
			_vehicle addItemCargoGlobal ["ACE_epinephrine", 5];
			_vehicle addItemCargoGlobal ["ACE_packingBandage", 10];
			_vehicle addItemCargoGlobal ["ACE_morphine", 5];
			_vehicle addItemCargoGlobal ["ACE_personalAidKit",5];			
			_vehicle addItemCargoGlobal ["rhs_balaclava",4];
			_vehicle addItemCargoGlobal ["rhs_scarf",4];
		};
			case "LR":
		{
			clearWeaponCargoGlobal _vehicle; 
			clearMagazineCargoGlobal _vehicle;
			clearBackpackCargoGlobal _vehicle;
			clearItemCargoGlobal _vehicle;
		};
};