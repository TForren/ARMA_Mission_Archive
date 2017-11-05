HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";

//HZ_fnc_field_IEDs = compile preprocessfilelinenumbers "HZ\IED\HZ_fnc_field_IEDs.sqf";


HZ_fnc_setupQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_setupQRF.sqf";
HZ_fnc_activateQRF = compile preprocessfilelinenumbers "HZ\QRF\HZ_fnc_activateQRF.sqf";

HZ_fnc_setupPatrol = compile preprocessfilelinenumbers "HZ\HZ_fnc_setupPatrol.sqf";
HZ_fnc_SetupBattery = compile preprocessfilelinenumbers "HZ\HZ_fnc_SetupBattery.sqf";
HZ_fnc_setupTrenchGroup = compile preprocessfilelinenumbers "HZ\HZ_fnc_setupTrenchGroup.sqf";
HZ_fnc_entrenchArea = compile preprocessfilelinenumbers "HZ\HZ_fnc_entrenchArea.sqf";

guns = [];
nets = [];

publicVariable "guns";
publicVariable "nets";



//[[getpos player,[723.85,967.35,-0]]] call HZ_fnc_SetupBattery 
systemchat format["%1",guns];
