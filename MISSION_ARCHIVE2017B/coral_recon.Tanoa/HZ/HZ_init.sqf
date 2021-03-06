HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

HZ_fnc_getClosest = {
	_shortest = 9999;
	_closestDude = "";
	{
		if ( side _x == west && ((hvt distance _x) < _shortest)) then {
			_shortest = (hvt distance _x);
			_closestDude = _x;
		};
	} foreach allunits;
	_closestDude;
};

HZ_fnc_beginHunt = {
	_this spawn {
		while {true} do {
			_group = _this;
			//_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
			_avgLoc = getpos ([] call HZ_fnc_getClosest); 
			_newHuntLoc = [(_avgLoc select 0) + (random 50 - 25),(_avgLoc select 1) + (random 50 - 25),0];
			_group addWaypoint [_newHuntLoc,0];
			[_group,0] setWaypointType "SAD";
			[_group,0] setWaypointCombatMode "RED";
			{_x domove _newHuntLoc} foreach units _group;
			sleep 60;
		};
	};
};

HZ_fnc_callReinforce = {
	
	{//for each group
		{ //for each unit
			_x setVariable ["acex_headless_blacklist", false];
			_x dofollow (leader (group _x));
		} foreach (units _x);
		
		_x setBehaviour "AWARE";
		_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
		_newHuntLoc = [(_avgLoc select 0) + (random 200 - 100),(_avgLoc select 1) + (random 200 - 100),0];
		_cargoGroup = group ((crew (vehicle (leader _x))) select 4);
		
		//[_x, [_newHuntLoc,0]] remoteExec ["addWaypoint", 0, true];
		//[[_x,2], "TR UNLOAD"] remoteExec ["setWaypointType", 0, true];
		//[[_x,2], "RED"] remoteExec ["setWaypointCombatMode", 0, true];
		//[[_x,2], 100] remoteExec ["setWaypointCompletionRadius", 0, true];
		
		
		_huntHandle = [_x,_cargoGroup] spawn {
			_vicGroup = _this select 0;
			_vic = (vehicle (leader _vicGroup));
			_group = _this select 1;
			waitUntil {sleep 5; ((_vic distance waypointPosition (waypoints _vicGroup select 2)) < 30) || (behaviour (leader _group) == "COMBAT") };
			{unassignVehicle _x;_x action ["Eject",vehicle _x];} foreach units _group;
			systemchat format ["group %1  hunting",_group];
			sleep 10;
			_group spawn HZ_fnc_beginHunt;

		};
		
	} foreach reinforcers;
};

HZ_fnc_heloSearch = {
	_heloHandle = [] spawn {
		while {true} do {
			_group = heloGroup;
			_helo = (vehicle (leader _group));
			_helo flyinheight 70;
			_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
			_newHuntLoc = [(_avgLoc select 0) + (random 50 - 25),(_avgLoc select 1) + (random 50 - 25),0];
			[_group, [_newHuntLoc,0]] remoteExec ["addWaypoint", 0, true];
			[[_group,0], "SAD"] remoteExec ["setWaypointType", 0, true];
			[[_group,0], "RED"] remoteExec ["setWaypointCombatMode", 0, true];
			sleep 60;
		};
	};
};

if (isServer) then {

reinforcers = [reinforceVic1,reinforceVic2,reinforceVic3];
//reinforceInf = [reinforceInf1,reinforceInf2,reinforceInf3];
garrisonUnits = [];
alerted = false;

{ 
	_x setVariable ["acex_headless_blacklist", true];
	if (side _x == independent) then {
		_x addPrimaryWeaponItem "rhs_acc_2dpZenit";
		_x enablegunlights "forceOn";
		_x allowFleeing 0.5;

	};
} foreach allunits;


_alertHandle = [] spawn {
	while {!alerted} do {
		{
			if (behaviour _x == "COMBAT") then {
				startTime = time;
				waitUntil{sleep 1; (time - startTime > (60 * 10)) || (triggeractivated bluhere)  };
				alerted = true;
				publicVariable "alerted";
				[] call HZ_fnc_callReinforce;
				//[] call HZ_fnc_heloSearch;
			};
		} foreach ([leader garrisongroup1] + [leader garrisongroup2] + [leader garrisongroup3] + [leader garrisongroup4]);
		sleep 5;
	};
};


};



[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}
