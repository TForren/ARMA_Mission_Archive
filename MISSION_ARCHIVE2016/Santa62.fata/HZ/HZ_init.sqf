HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_populateTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_populateTowns.sqf";
HZ_fnc_prepTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_prepTowns.sqf";
HZ_fnc_AmbCivMain = compile preprocessfilelinenumbers "HZ\HZ_fnc_AmbCivMain.sqf";

HZ_fnc_civGear = compile preprocessfilelinenumbers "HZ\HZ_fnc_civGear.sqf";
HZ_fnc_civVehHandler = compile preprocessfilelinenumbers "HZ\HZ_fnc_civVehHandler.sqf";
HZ_fnc_spawnCivVeh = compile preprocessfilelinenumbers "HZ\HZ_fnc_spawnCivVeh.sqf";
HZ_fnc_ambIED = compile preprocessfilelinenumbers "HZ\HZ_fnc_ambIED.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";

if (isServer) then {
	civCarPool = ['CUP_C_Skoda_Blue_CIV', 'CUP_C_Skoda_Green_CIV', 'CUP_C_Skoda_Red_CIV', 'CUP_C_Skoda_White_CIV', 'CUP_C_Datsun', \
		'CUP_C_Datsun_4seat', 'CUP_C_Datsun_Covered', 'CUP_C_Datsun_Plain', 'CUP_C_Datsun_Tubeframe', 'CUP_C_Golf4_black_Civ', \
		'CUP_C_Skoda_White_CIV', 'CUP_C_Golf4_green_Civ', 'CUP_C_Golf4_random_Civ', 'CUP_C_Golf4_red_Civ', 'CUP_C_Golf4_white_Civ', \
		'CUP_C_Golf4_yellow_Civ', 'CUP_C_Octavia_CIV', 'C_Offroad_01_F'];
		
		{
			if (side _x == east) then {
				_x addmagazine "ace_HandFlare_Red";
			};
		} foreach allunits;
};



civsEnabled = "CIVS" call BIS_fnc_getParamValue;
if (civsEnabled == 1) then {	

[] call HZ_fnc_AmbCivMain;

};

