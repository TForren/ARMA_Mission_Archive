if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

startLoadingScreen ["Loading Civilians, please wait..."];

townPrepComplete = false; // DO NOT CHANGE

civSpawnChance = 0.01;
pedestrianSpawnChance = 1;
parkedVehSpawnChance = 0.1;
vehSpawnChance = 0.15;

radioSongs = ["Taki_radio01","Taki_radio02"];
vehRadioChance = 0.8;

roadsideIEDChance = 0.3;

ambCivDebug = false;

/*civCarPool = ['CUP_C_Skoda_Blue_CIV', 'CUP_C_Skoda_Green_CIV', 'CUP_C_Skoda_Red_CIV', 'CUP_C_Skoda_White_CIV', 'CUP_C_Datsun', \
			'CUP_C_Datsun_4seat', 'CUP_C_Datsun_Covered', 'CUP_C_Datsun_Plain', 'CUP_C_Datsun_Tubeframe', 'CUP_C_Golf4_black_Civ', \
			'CUP_C_Skoda_White_CIV', 'CUP_C_Golf4_green_Civ', 'CUP_C_Golf4_random_Civ', 'CUP_C_Golf4_red_Civ', 'CUP_C_Golf4_white_Civ', \
			'CUP_C_Golf4_yellow_Civ', 'CUP_C_Octavia_CIV', 'CUP_C_Ural_Civ_01', 'CUP_C_Ural_Open_Civ_03', 'CUP_C_Ural_Open_Civ_02','C_Truck_02_covered_F'];
	*/		
		
townPrepResultArray = [] call HZ_fnc_prepTowns;

waitUntil {townPrepComplete};
progressLoadingScreen 0.25;

[townPrepResultArray] call HZ_fnc_populateTowns;

progressLoadingScreen 0.5;

[townPrepResultArray] call HZ_fnc_civVehHandler;

progressLoadingScreen 0.9;

[townPrepResultArray] call HZ_fnc_ambIED;


EndLoadingScreen;
