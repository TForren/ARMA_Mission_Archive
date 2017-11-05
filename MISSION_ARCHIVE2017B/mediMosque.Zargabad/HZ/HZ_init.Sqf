HZ_fnc_wreckRoads = compile preprocessfilelinenumbers "HZ\HZ_fnc_wreckRoads.sqf";

if (isServer) then {
	[] spawn {
		sleep 3;
		execVM"HZ\Yelling\HZ_Yelling_init.sqf";
	};
};
