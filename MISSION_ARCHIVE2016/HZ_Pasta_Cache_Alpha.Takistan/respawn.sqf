if (!civrespawnused) then {

spawngroup = createGroup civilian;  
respawnunit = "";
publicVariable "respawnunit";
_randompoint = ["p1","p2","p3","p4","p5","p6","p7","p8"] call BIS_fnc_selectRandom;
_randomciv = ['CUP_C_C_Citizen_02', 'CUP_C_C_Citizen_01', 'CUP_C_C_Citizen_04', 'CUP_C_C_Citizen_03', 'CUP_C_C_Pilot_01', 'CUP_C_C_Profiteer_02', 'CUP_C_C_Profiteer_03', 'CUP_C_C_Profiteer_01', 'CUP_C_C_Profiteer_04', 'CUP_C_C_Villager_01', 'CUP_C_C_Villager_04', 'CUP_C_C_Villager_02', 'CUP_C_C_Villager_03', 'CUP_C_C_Woodlander_01', 'CUP_C_C_Woodlander_02', 'CUP_C_C_Woodlander_03', 'CUP_C_C_Woodlander_04', 'CUP_C_C_Worker_03', 'CUP_C_C_Worker_04', 'CUP_C_C_Worker_02', 'CUP_C_C_Worker_01'] call BIS_fnc_selectRandom;
_randomciv createUnit [getMarkerPos _randompoint, spawngroup, 'respawnunit = this;'];
selectPlayer respawnunit; 
respawnunit = "";


//[player] join grpNull;
CSSA3_forceClose = true;
closeDialog 0;

player addEventHandler ["killed", {['killed',_this] spawn CSSA3_fnc_createSpectateDialog}];
player addEventHandler ["respawn", {['respawn',_this] spawn CSSA3_fnc_createSpectateDialog}];
["sand"] call acre_api_fnc_babelSetSpokenLanguages;	
civrespawnused = true;

} else {
	hint "You have already used your respawn";
};
