HZ_fnc_GarrisonHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_GarrisonHouse.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";


if !(isServer) exitWith {};

reinforcers = [wildcat1,wildcat2,motorReinforce1,warrior1,warrior2];
garrisonUnits = [];
alerted = false;

{ 
	if (side _x == independent) then {
		_x addPrimaryWeaponItem "rhs_acc_2dpZenit";
		_x enablegunlights "forceOn";
		_x allowFleeing 0.5;

	};
} foreach allunits;

{
	{
		_x setVariable ["acex_headless_blacklist", true];
		
	} foreach (units _x);
} foreach reinforcers;

HZ_fnc_callReinforce = {
	
	{
		{
			_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
			_x setVariable ["acex_headless_blacklist", false];
			_x dofollow (leader (group _x));
			[_x, [(_avgLoc select 0) + (random 200 - 100),
				  (_avgLoc select 1) + (random 200 - 100),
				   0]
			] remoteExec ["doMove", 0, true];
			
		} foreach (units _x);
	} foreach reinforcers;
	
};


[] spawn {
	while {!alerted} do {
		{
			if (behaviour _x == "COMBAT") then {
				alerted = true;
				publicVariable "alerted";
				[] call HZ_fnc_callReinforce;
			};
		} foreach units convoyGroup;
		
		sleep 10;
	};
};

/*
[] spawn {
	sleep 3;
	execVM"HZ\Yelling\HZ_Yelling_init.sqf";
}*/
