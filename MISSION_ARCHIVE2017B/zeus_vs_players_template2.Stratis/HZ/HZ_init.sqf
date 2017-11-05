HZ_FOW = compile preprocessfilelinenumbers "HZ\HZ_FOW.sqf";
HZ_fnc_groupInfo = compile preprocessfilelinenumbers "HZ\HZ_fnc_groupInfo.sqf";
HZ_fnc_spawner = compile preprocessfilelinenumbers "HZ\HZ_fnc_spawner.sqf";
HZ_fnc_radioMessage = compile preprocessfilelinenumbers "HZ\HZ_fnc_radioMessage.sqf";
HZ_fnc_requestGroup = compile preprocessfilelinenumbers "HZ\HZ_fnc_requestGroup.sqf";
HZ_fnc_handleSpecials = compile preprocessfilelinenumbers "HZ\specials\HZ_fnc_handleSpecials.sqf";

HZ_EH_zeusLoaded = compile preprocessfilelinenumbers "HZ\EH\HZ_EH_zeusLoaded.sqf";
HZ_EH_zeusUnloaded = compile preprocessfilelinenumbers "HZ\EH\HZ_EH_zeusUnloaded.sqf";

#include "compositions\HZ_comp_init.sqf";

enemyFaction = west;
reqedUnits = [];
forcedReveal = [];

if (isServer) then {
	reqPoints = 1000;
	publicVariable "reqPoints";
};

if (player == ZeusCommander) then {
	_null = [] execVM "HZ\HZ_fnc_setupPurchaseSystem.sqf";
	//FOG Sim
	FOWEnabled = "FOW" call BIS_fnc_getParamValue;
	if (FOWEnabled == 1) then {	
		//commander, enemy faction, enemy vehicles
		[ZeusCommander,enemyFaction,[bv1]] spawn HZ_FOW;
	};
};


