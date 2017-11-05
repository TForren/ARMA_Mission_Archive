enableSaving [false,false];
setViewDistance 1200;
setTerrainGrid 25;

[[
  ["rogaintask","Inspect Camp Rogain","The VIP needs to inspect Camp Rogain to ensure that the soldiers are doing their job.",blufor],
  ["generaltask","Visit the retired general","A now retired general has a house at Kill Farm. The VIP wants to visit him.",blufor],
  ["docktask","Public face","The VIP is really liked among the citizens of Stratis. He shall visit the docks of Agia Marina to show that he supports them",blufor],
  ["helitask","Look at new prototype","The army has a new prototype out for a helicopter, the VIP wants to have a look at it.",blufor],
  ["killviptask","Kill the VIP","Title says it all.",opfor]
],[
  ["Credits","Mission by Cuel
  <br />SHK_TASKMASTER 2 Made by: Shuko of LDD Kyllikki"]
]] execvm "shk_taskmaster.sqf";


CUL_fn_end = {
	// called with 0 = [[[WEST],"END1","END MESSAGE"],"CUL_fn_end"] spawn	BIS_fnc_MP
	private ["_type","_win"];
	if (!isDedicated) then {
		player addEventHandler ["Fired",{deleteVehicle (_this select 6)}];
		_win = ((side player) in (_this select 0));
		_type = (_this select 1);
		player switchMove "amovpercmstpslowwrfldnon";
		cutText [(_this select 2),"PLAIN DOWN"];
	}else {_win = true; _type = _this select 1};
	 [_type,_win,[true,10]] call BIS_fnc_endMission;	
};

waitUntil {isDedicated || !isNull player};

if (!isDedicated) then {
	[] execVM "initplayer.sqf";
};

if (isServer) then {
	[] execVM "initserver.sqf";
};

