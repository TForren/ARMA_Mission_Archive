[]execVM "eos\OpenMe.sqf";
[] spawn {call compile preprocessFileLineNumbers "common\server\EPD\Ied_Init.sqf";};
null=[] execVM "cos\cosInit.sqf";
ghst_civcars = [(getmarkerpos "center"),350,16,true,false,WEST] execvm "common\server\ghst_civcars.sqf";
null= [[AIRBASE],WEST,true,75] execVM "common\client\BRS\BRS_launch.sqf";
execVM "R3F_LOG\init.sqf";
[]execVM "common\client\prayer.sqf";
[] execVM "common\client\JWC_CASFS\initCAS.sqf";
[] execVM "common\client\zlt_fieldrepair.sqf";
[] execVM "common\client\zlt_fastrope.sqf";

//ArmA 3 Advanced Wounding System | Created by: psychobastard
["%1 --- Executing TcB AIS init.sqf",diag_ticktime] call BIS_fnc_logFormat;




// TcB AIS Wounding System --------------------------------------------------------------------------
if (!isDedicated) then {
	TCB_AIS_PATH = "common\client\ais_injury\";
	{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (if (isMultiplayer) then {playableUnits} else {switchableUnits});		// execute for every playable unit
	
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach (units group player);													// only own group - you cant help strange group members
	
	//{[_x] call compile preprocessFile (TCB_AIS_PATH+"init_ais.sqf")} forEach [P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30];														// only some defined units
};
// --------------------------------------------------------------------------------------------------------------