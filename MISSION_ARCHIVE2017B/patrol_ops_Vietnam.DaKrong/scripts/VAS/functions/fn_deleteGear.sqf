#include "macro.sqf"
/*
	@version: 2.0
	@file_name: fn_deleteGear.sqf
	@file_author: TAW_Tonic
	@file_edit: 9/24/2013
	@file_description: Deletes a saved slot and prompts if you actually want to delete it.
*/
private["_slot","_data"];
_slot = lbCurSel VAS_load_list;
if(_slot == -1) exitWith {hint localize "STR_VAS_Prompt_selectSlotFail";};
if(vas_disableLoadSave) then {
	_data = missionNamespace getVariable format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot];
}else{
	_data = profileNameSpace getVariable format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot];
};

if(isNil {_data}) exitWith {hint localize "STR_VAS_Prompt_deleteSlotNoInfo";};
createDialog "VAS_prompt";
disableSerialization;

waitUntil {!isNull (findDisplay VAS_prompt_Display)};
(VAS_getControl(VAS_prompt_Display,VAS_prompt_text)) ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>%3 %1</t></t><br/><t align='center'><t size='2px'>%2</t></t>",_slot+1,_data select 0,localize "STR_VAS_Prompt_deleteSlotWarning"];
(VAS_getControl(VAS_prompt_Display,VAS_prompt_true)) ctrlSetText localize "STR_VAS_Prompt_deleteYes";
(VAS_getControl(VAS_prompt_Display,VAS_prompt_false)) ctrlSetText localize "STR_VAS_Prompt_deleteNo";

waitUntil {!isNil {vas_prompt_choice}};

if(vas_prompt_choice) then {
	if(vas_disableLoadSave) then {
		hint format["%2:\n%1",(missionNamespace getVariable format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot]) select 0,localize "STR_VAS_Prompt_deleteSuccess"];
		missionNamespace setVariable[format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot],nil];
		[1,true] spawn VAS_fnc_SaveLoad;
		vas_prompt_choice = nil;
	}else{
		hint format["You deleted slot:\n%1",(profileNameSpace getVariable format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot]) select 0];
		profileNameSpace setVariable[format["PO3_VAS_gearSlot_%1_%2_%3",side player, player getVariable ["PO3_VAR_roleAttribute","Rifleman"],_slot],nil];
		saveProfileNamespace;
		[1,true] spawn VAS_fnc_SaveLoad;
		vas_prompt_choice = nil;
	};
}else{
	vas_prompt_choice = nil;
	hint format["%2 %1",_slot+1,localize "STR_VAS_Prompt_deleteCanelled"];
};