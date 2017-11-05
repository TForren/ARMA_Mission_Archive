if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

startLoadingScreen ["Loading Civilians, please wait..."];

townPrepComplete = false; // DO NOT CHANGE

civSpawnChance = 0.03;
pedestrianSpawnChance = 0.4;
parkedVehSpawnChance = 0.1;
vehSpawnChance = 0.35;

radioSongs = ["Taki_radio01","Taki_radio02"];
vehRadioChance = 0.8;

roadsideIEDChance = 0.1;

ambCivDebug = false;

civCarPool = ["RDS_tt650_Civ_01","RDS_Lada_Civ_02","RDS_Lada_Civ_05","RDS_Lada_Civ_03","RDS_Lada_Civ_04","RDS_Lada_Civ_01","RDS_Van_01_box_F","RDS_Van_01_transport_F","RDS_Zetor6945_Base","RDS_SUV_01_F","RDS_Octavia_Civ_01","RDS_S1203_Civ_03","RDS_S1203_Civ_02","RDS_S1203_Civ_01","RDS_Old_bike_Civ_01","RDS_MMT_Civ_01","RDS_JAWA353_Civ_01","RDS_Ikarus_Civ_02","RDS_Ikarus_Civ_01","RDS_Hatchback_01_F","RDS_Golf4_Civ_01","RDS_Gaz24_Civ_02","RDS_Gaz24_Civ_01","RDS_Gaz24_Civ_03","RDS_Van_01_fuel_F","C_Van_02_transport_F"];
			
		
townPrepResultArray = [] call HZ_fnc_prepTowns;

waitUntil {townPrepComplete};
progressLoadingScreen 0.25;

[townPrepResultArray] call HZ_fnc_populateTowns;

progressLoadingScreen 0.5;

[townPrepResultArray] call HZ_fnc_civVehHandler;

progressLoadingScreen 0.9;

[townPrepResultArray] call HZ_fnc_ambIED;


EndLoadingScreen;

[] spawn {
	sleep 1;
	[townPrepResultArray] call HZ_fnc_armsDealerHandler;
};