HZ_FOW = compile preprocessfilelinenumbers "HZ\HZ_FOW.sqf";
HZ_fnc_groupInfo = compile preprocessfilelinenumbers "HZ\HZ_fnc_groupInfo.sqf";
HZ_fnc_spawner = compile preprocessfilelinenumbers "HZ\HZ_fnc_spawner.sqf";
HZ_fnc_radioMessage = compile preprocessfilelinenumbers "HZ\HZ_fnc_radioMessage.sqf";
HZ_fnc_requestGroup = compile preprocessfilelinenumbers "HZ\HZ_fnc_requestGroup.sqf";
HZ_fnc_handleSpecials = compile preprocessfilelinenumbers "HZ\specials\HZ_fnc_handleSpecials.sqf";

#include "compositions\HZ_comp_init.sqf";

enemyFaction = west;
reqedUnits = [];
forcedReveal = [];

if (isServer) then {
	reqPoints = 500;
	publicVariable "reqPoints";
					//Cayo, somato, Gulan
	cityCenters = [[9354.25,5950.26,0], [9185.51,8263.82,0], [8888.96,7778.93,0]];
	propagandaTrucks = [];
	publicVariable "cityCenters";
};

if (player == ZeusCommander) then {
	_null = [] execVM "HZ\HZ_fnc_setupPurchaseSystem.sqf";
	["NOPE",reqTable,10,false,false] execVM "modules\ao.sqf";	
	//FOG Sim
	FOWEnabled = "FOW" call BIS_fnc_getParamValue;
	if (FOWEnabled == 1) then {	
		[ZeusCommander,enemyFaction] spawn HZ_FOW;
	};
};


