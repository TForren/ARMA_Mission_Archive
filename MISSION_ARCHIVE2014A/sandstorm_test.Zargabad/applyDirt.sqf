	while {true} do {
		sleep 10; // sleeps for 10 seconds
		{
			if (isPlayer _x) then { 
				[nil, "AGM_Goggles_fnc_applyDustEffect", _x, false, true] call BIS_fnc_MP; 
			};
		} foreach playableUnits; 
	};