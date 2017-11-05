// Variables
	
	if (isNil "OBJ_Clr") then {OBJ_Clr = false;};
	if (isNil "BLU_Ocu") then {BLU_Ocu = false;};
	if (isNil "BLU_win") then {BLU_win = false;};
	if (isNil "tb3_netBusy") then {tb3_netBusy = false;};
	
// Self-interact menus

["Teleport >",["teleport"],"player distance start < 100"] call fmn_flexi_addMain;
	["teleport", "Teleport to SL", "[player] execVM 'scripts\teleportToSL.sqf'", "player distance start < 100", "Teleport Options"] call fmn_flexi_addSub;

//["Radio: Fires Net >",["FM Net"],"[player, 'ACRE_PRC148'] call acre_api_fnc_hasKindOfRadio"] call fmn_flexi_addMain;
	//["FM Net", "Firemission: 0862", "[0, [player] execVM 'radio\CFF_1.sqf'] call CBA_fnc_globalExecute;", "[player, 'ACRE_PRC148'] call acre_api_fnc_hasKindOfRadio && !tb3_netBusy && !FM_fired", "Fire Mission"] call fmn_flexi_addSub;
["Radio: Coy. Net >",["Coy Net"],"[player, 'ACRE_PRC148'] call acre_api_fnc_hasKindOfRadio"] call fmn_flexi_addMain;
	["Coy Net", "End Mission", "[-2, [player] execVM 'scripts\radio\radioMessage_1.sqf'] call CBA_fnc_globalExecute;", "[player, 'ACRE_PRC148'] call acre_api_fnc_hasKindOfRadio && !tb3_netBusy && OBJ_Clr && BLU_Ocu", "Coy. Messages"] call fmn_flexi_addSub;
["Admin: Menu >",["Admn"],"isAdmin"] call fmn_flexi_addMain;
	["Admn", "End Mission", "[-2, [] execVM 'scripts\radio\endAction.sqf'] call CBA_fnc_globalExecute;", "isAdmin", "Admin Options"] call fmn_flexi_addSub;
