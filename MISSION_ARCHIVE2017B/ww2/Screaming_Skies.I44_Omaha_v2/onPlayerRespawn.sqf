player moveincargo (player getVariable "skytrain");

_loadout = (player getVariable "FW_Loadout");
if !(isNil "_loadout") then {
	[player, _loadout] call FNC_GearScript;
};