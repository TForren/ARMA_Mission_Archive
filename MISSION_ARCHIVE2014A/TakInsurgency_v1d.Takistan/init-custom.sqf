[]execVM "eos\OpenMe.sqf";
[] spawn {call compile preprocessFileLineNumbers "EPD\Ied_Init.sqf";};
null=[] execVM "cos\cosInit.sqf";
null= [[AIRBASE],WEST,true,75] execVM "BRS\BRS_launch.sqf";

execVM "R3F_LOG\init.sqf";
[] execVM "JWC_CASFS\initCAS.sqf";
[] execVM "zlt_fieldrepair.sqf";
[] execVM "zlt_fastrope.sqf";


