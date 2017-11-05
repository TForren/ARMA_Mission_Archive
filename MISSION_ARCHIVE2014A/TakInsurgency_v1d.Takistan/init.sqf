waitUntil { isServer || !isNull player };

enableSaving [false, false];
enableTeamswitch false;

#include "core\modules\gridMarkers\functions\functions.sqf"
#include "core\modules\cacheScript\functions\cacheFunctions.sqf"
#include "core\modules\cacheScript\functions\cacheGetPositions.sqf"

#ifndef execNow
#define execNow call compile preprocessfilelinenumbers
#endif

execNow "init-mods.sqf";
execNow "core\init.sqf";
execNow "support\init.sqf";
execNow "enemy\init.sqf";
execNow "init-custom.sqf";
[] execVM "module_cleanup\init.sqf";

diag_log format["Initialisation Completed"];

execNow "core\scripts\intro.sqf";