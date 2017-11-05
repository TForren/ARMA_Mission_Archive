HZ_fnc_groupInfo = compile preprocessfilelinenumbers "HZ\HZ_fnc_groupInfo.sqf";
HZ_fnc_addReqPoints = compile preprocessfilelinenumbers "HZ\HZ_fnc_addReqPoints.sqf";
HZ_fnc_spawner = compile preprocessfilelinenumbers "HZ\HZ_fnc_spawner.sqf";
HZ_fnc_radioMessage = compile preprocessfilelinenumbers "HZ\HZ_fnc_radioMessage.sqf";
HZ_fnc_requestGroup = compile preprocessfilelinenumbers "HZ\HZ_fnc_requestGroup.sqf";
HZ_fnc_handleSpecials = compile preprocessfilelinenumbers "HZ\specials\HZ_fnc_handleSpecials.sqf";

HZ_EH_zeusLoaded = compile preprocessfilelinenumbers "HZ\EH\HZ_EH_zeusLoaded.sqf";
HZ_EH_zeusUnloaded = compile preprocessfilelinenumbers "HZ\EH\HZ_EH_zeusUnloaded.sqf";

#include "compositions\HZ_comp_init.sqf";

enemyFaction = independent;
reqedUnits = [];
forcedReveal = [];
zeusCommander = germanComander;
publicVariable "zeusCommander";

AAUnits = [AA1,AA2,AA3,AA4,AA5,AA6]; publicVariable "AAUnits";
HVTs = [hvt1,hvt2,hvt3]; publicVariable "HVTs";

if (isServer) then {
	reqPoints = 500;
	publicVariable "reqPoints";
	objectives = AAUnits + HVTs;
	publicVariable "objectives";
};


//Set face to Ironfront equivilent if available
try {
	_newFace = "LIB_" + (face player) + "_Native";
	[player, _newFace] remoteExec ["setFace", 0, netId player] ;
} catch {
	//oh well
};

if (player == zeusCommander) then {
	_null = [] execVM "HZ\HZ_fnc_setupPurchaseSystem.sqf";
	_markerstr = createMarker ["pointMarker",[1608,240]];
	_markerstr setMarkerShape "ICON";
	_markerstr setMarkerType "hd_dot";
	"pointMarker" setMarkerText format ["Points: %1",reqPoints];
};


if (!isServer) then {
	player addEventHandler ["Respawn", "this moveincargo (this getVariable 'skytrain')"];
};


//other server only stuff
if (!isServer) exitWith {};

{
	_x addEventHandler ["Killed", "[format ['%1 destroyed',_x],100] call HZ_fnc_addReqPoints"];
} foreach objectives;


[] spawn {
	while {true} do {
		{
			if (_x distance fw_guer_respawn < 200) then {
				_x moveincargo (_x getVariable "skytrain");
			};
			sleep 1;
		} foreach allunits;
		sleep 10;
	};
};

[] spawn {
	[ 
	 AAUnits, 
	 [[851,3476], [1533, 3390], [3000, 3000]], 
	 10 + random 5, 
	 0, 
	 {true} 
	] execVM "ambAA.sqf";
};

[] spawn {
	while {true} do {
		_randTup = [[start1,end1],[start2,end2],[start3,end3],[start4,end4]] call BIS_fnc_selectRandom;
		_ambFlyby = [getpos (_randTup select 0),getpos (_randTup select 1),800,"NORMAL","LIB_C47_Skytrain",INDEPENDENT] call BIS_fnc_ambientFlyBy;
		sleep 15;
	};
};

_handle = [] execVM "HZ\HZ_amb_trucks.sqf";