//destructibleObjects init

HZ_fnc_handleDestruction = compile preprocessfilelinenumbers "HZ\destructibleObjects\HZ_fnc_handleDestruction.sqf";


/* change stuff here */

whitelistObjects = [
"Land_SandbagBarricade_01_half_F",
"Land_SandbagBarricade_01_hole_F",
"Land_SandbagBarricade_01_F",
"Land_Barricade_01_10m_F",
"Land_Barricade_01_4m_F",
"ShedBig"];

blacklist = [

];

/* damage thresholds */
SMALLDAMAGE = 23;
LARGEDAMAGE = 60;


/*****************************/
/* No change stuff down here */
/*****************************/

BARRICADETYPES = ["stall","wall","thing","misc_thing","thingX","BagFence_base_F","Garbage_base_F","Wreck_Base"];
BARRICADETYPES = BARRICADETYPES + whitelistObjects;
publicVariable "BARRICADETYPES";
barricadeObjects = [];

startLoadingScreen [""];
{
	barricadeObjects = barricadeObjects + (allMissionObjects format ["%1",_x]);
} foreach BARRICADETYPES;

{
	if (!(_x in blacklist)) then {
		_x addEventHandler ["HitPart",{_this call HZ_fnc_handleDestruction}];
		_x setVariable ["HZ_damage",0];

	};
} foreach barricadeObjects;



#include "HZ_fncs.sqf";

endLoadingScreen;
