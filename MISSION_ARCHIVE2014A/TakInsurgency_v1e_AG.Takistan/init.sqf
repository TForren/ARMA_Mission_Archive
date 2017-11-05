enableSaving [false, false];
enableTeamswitch false;
waitUntil { isServer || !isNull player };

if isServer then {definedTime = (paramsArray select 6)};
if isServer then {skipTime definedTime;};

#include "core\modules\gridMarkers\functions\functions.sqf"
#include "core\modules\cacheScript\functions\cacheFunctions.sqf"
#include "core\modules\cacheScript\functions\cacheGetPositions.sqf"

#ifndef execNow
#define execNow call compile preprocessfilelinenumbers
#endif

execNow "init-radios.sqf";
execNow "briefing.sqf";
execNow "core\init.sqf";
execNow "init-custom.sqf";
[] execVM "common\server\module_cleanup\init.sqf";

diag_log format["Initialisation Completed"];

// execNow "core\scripts\intro.sqf";