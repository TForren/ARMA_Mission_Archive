HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

if (isServer) then {

garrisonUnits = (units manualGarrisonLead1);


reinforcers = [reinforcementVic1,reinforcementVic2];
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

//Garrison Area
[] spawn {
	sleep 1;
	_houses = nearestObjects [getpos garrisonArea1, ["house"], 150];
	
	garCount = 2;
	attempts = 0;
	while {garCount > 0} do {
		_chosenHouse = _houses call BIS_fnc_selectRandom;
		_cnt = 0;
		_posarray = [];
		_houses = _houses - [_chosenHouse];
		//systemchat "checking house";
		
		while {format ["%1", _chosenHouse buildingpos _cnt] != "[0,0,0]" } do {
			_pos = _chosenHouse buildingpos _cnt;		//select building position _cnt
			_posarray = _posarray + [_pos];		//add the position to the list
			_cnt = _cnt + 1;					//increment counter
			sleep 0.001;
		};
		
		if (count _posarray > 3) then {
			[_chosenHouse,5,2] call HZ_fnc_GarrisonHouse;
			garCount = garCount - 1;
		};
		
		attempts = attempts + 1;
		
		if ( (attempts > 500) || (time > 80)) exitWith {systemchat "garrison script gave up"};
		
	};
	//systemchat "done";
};


//Check for hunting
[] spawn {
	_bluNear = false;
	while {!_bluNear} do {

		_nearbyUnits = nearestObjects [(getpos swarmArea1), ["man"], 50];
		
		{
			if (side _x == west) then {_bluNear = true};
		} foreach _nearbyUnits;
		
		if (_bluNear) then {
			{
				_x dofollow (leader (group _x));
				_x setVariable ["acex_headless_blacklist", false];
				[_x, [(getpos swarmArea1 select 0) + (random 80 - 40),
					  (getpos swarmArea1 select 1) + (random 80 - 40),
					  0]
				] remoteExec ["doMove", 0, true];
			} foreach garrisonUnits;
		};
		sleep 10;
	};
};

HZ_fnc_getClosest = {
	_shortest = 9999;
	_closestDude = "";
	{
		if ( side _x == west && ((exitArea distance _x) < _shortest)) then {
			_shortest = (exitArea distance _x);
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
		
		[_x, [_newHuntLoc,0]] remoteExec ["addWaypoint", 0, true];
		[[_x,2], "TR UNLOAD"] remoteExec ["setWaypointType", 0, true];
		[[_x,2], "RED"] remoteExec ["setWaypointCombatMode", 0, true];
		[[_x,2], 100] remoteExec ["setWaypointCompletionRadius", 0, true];
		
		
		_huntHandle = [_x,_cargoGroup] spawn {
			_vicGroup = _this select 0;
			_vic = (vehicle (leader _vicGroup));
			_group = _this select 1;
			waitUntil {sleep 5; ((_vic distance waypointPosition (waypoints _vicGroup select 2)) < 30) || (behaviour (leader _group) == "COMBAT") };
			{unassignVehicle _x;_x action ["Eject",vehicle _x];} foreach units _group;
			sleep 10;
			_group spawn HZ_fnc_beginHunt;

		};
		
	} foreach reinforcers;
};


_alertHandle = [] spawn {
	while {!alerted} do {
		{
			if (behaviour _x == "COMBAT") then {
				startTime = time;
				waitUntil{sleep 1; (time - startTime > (60 * 10)) || ({alive _x} count [gaz1,gaz2,gaz] < 2)  };
				alerted = true;
				publicVariable "alerted";
				[] call HZ_fnc_callReinforce;
			};
		} foreach ([leader patrolGroup1] + [leader patrolGroup2] + [leader garrisonGroup1]);
		sleep 5;
	};
};



[] spawn {
	ls1 = "Loudspeaker" createvehicle [0,0,0];
	ls2 = "Loudspeaker" createvehicle [0,0,0];
	 ls1 attachTo [gaz, [1.2, 1.6, 1.2] ];  
	 ls1 setdir (getdir gaz) + 210;
	 ls1 setpos (getpos ls1);
	 ls2 attachTo [gaz, [-1.2, 1.6, 1.2] ];  
	 ls2 setdir (getdir gaz) - 270;
	 ls2 setpos (getpos ls2);

	utex1 = "UserTexture1m_F" createvehicle [0,0,0]; 
	utex2 = "UserTexture1m_F" createvehicle [0,0,0]; 
	/* utex1 attachTo [gaz, [1.2, -0.9, 0.5] ]; 
	 utex1 setdir (getdir gaz) + 259;
	 utex1 setpos (getpos utex1);
	 utex2 attachTo [gaz, [-1.3, -0.9, 0.5] ]; 
	 utex2 setdir (getdir gaz) - 281;
	 utex2 setpos (getpos utex2);
	 utex1 setObjectTexture [0, "propaganda.jpg"]; 
	 utex2 setObjectTexture [0, "propaganda.jpg"];
*/
	while {(alive gaz)} do {
		[gaz, "anthem",250] call CBA_fnc_globalSay3d;
		sleep 48;
	};
	{deletevehicle _x} foreach [ls1,ls2,utex1,utex2];
};
 

}; //server