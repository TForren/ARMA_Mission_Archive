if (isServer) then {
	#include "BIS_hideUnits.sqf"
	#include "handleLanding.sqf"
	//#include "HeliPath.sqf" // Removed until BIS_fnc_UnitPlay is Fixed
	#include "wavesMaster.sqf"
};

if (!isDedicated) then {
	#include "handleJIP.sqf"
};