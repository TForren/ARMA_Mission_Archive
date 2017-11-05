/*
	GrenadeStop v0.8 for ArmA 3 Alpha by Bake
	Edited by Cuel 2013-03-08
	
	DESCRIPTION:
	Stops players from throwing grenades in safety zones.
	
	INSTALLATION:
	Move grenadeStop.sqf to your mission's folder. Then add the
	following line to your init.sqf file (create one if necessary):
	[] execVM "scripts\grenadeStop.sqf";
	
	CONFIGURATION:
	Edit the #defines below.
*/

#define SAFEY_ZONES []
#define MESSAGE			"Do not throw grenades inside the base!\nPress I instead of G to" +\
						" open your inventory.\nRebind the throw key to avoid accidents."

if (isDedicated) exitWith {};
waitUntil {!isNull player};

switch (side player) do {
	case blufor : {SAFETY_ZONES set [count SAFETY_ZONES, [(markerPos "respawn_west"),100]]};
	case opfor : {SAFETY_ZONES set [count SAFETY_ZONES, [(markerPos "respawn_east"),100]]};
	case independent : {SAFETY_ZONES set [count SAFETY_ZONES, [(markerPos "respawn_guerilla"),100]]};
	case civilian : {SAFETY_ZONES set [count SAFETY_ZONES, [(markerPos "respawn_civilian"),100]]};
};


player addEventHandler ["Fired", {
	if (_this select 2 == "HandGrenadeMuzzle") then
	{
		// Lazy evaluation now supported by default? Curly brackets not working.
		if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
		{
			deleteVehicle (_this select 6);
			titleText [MESSAGE, "PLAIN", 3];
		};
	};
}];
