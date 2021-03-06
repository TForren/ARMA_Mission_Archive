#include "macro.sqf"
/*
	File: fn_transferSaveGear.sqf

	Description:
	Laziness at it's best..
*/
private["_slot","_title"];
if(isNil "VAS_Loadout_Gear") exitWith {};
disableSerialization;
_title = ctrlText VAS_transfer_save_text;
_slot = lbCurSel VAS_transfer_save_list;

if(_slot == -1) exitWith {hint localize"STR_VAS_Prompt_slotSelFail"};

VAS_Loadout_Gear set[0,_title];
if(vas_disableLoadSave) then {
	missionNamespace setVariable[format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot],VAS_Loadout_Gear];
}else{
	profileNameSpace setVariable[format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot],VAS_Loadout_Gear];
	saveProfileNamespace;
};

closeDialog 0;

VAS_Loadout_Gear = nil;