
//Clients will get these

//utility
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";



//Stuff only the server will use
if (isServer) then {

HZ_fnc_setupGuards = compile preprocessfilelinenumbers "HZ\HZ_fnc_setupGuards.sqf";
HZ_fnc_initEnemyHQ = compile preprocessfilelinenumbers "HZ\HZ_fnc_initEnemyHQ.sqf";

HZ_fnc_setupQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_setupQRF.sqf";
HZ_fnc_activateQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_activateQRF.sqf";
HZ_fnc_activateGarrison = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_activateGarrison.sqf";

SOC addEventHandler ["GetOut", {(_this select 2) setpos (SOC modelToWOrld [0,-5,-1.5])}];
};

