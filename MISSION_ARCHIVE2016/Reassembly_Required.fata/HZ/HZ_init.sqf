HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_populateTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_populateTowns.sqf";
HZ_fnc_prepTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_prepTowns.sqf";
HZ_fnc_AmbCivMain = compile preprocessfilelinenumbers "HZ\HZ_fnc_AmbCivMain.sqf";

HZ_fnc_civGear = compile preprocessfilelinenumbers "HZ\HZ_fnc_civGear.sqf";
HZ_fnc_civVehHandler = compile preprocessfilelinenumbers "HZ\HZ_fnc_civVehHandler.sqf";
HZ_fnc_spawnCivVeh = compile preprocessfilelinenumbers "HZ\HZ_fnc_spawnCivVeh.sqf";
HZ_fnc_speedLimiter = compile preprocessfilelinenumbers "HZ\HZ_fnc_speedLimiter.sqf";
HZ_fnc_ambIED = compile preprocessfilelinenumbers "HZ\HZ_fnc_ambIED.sqf";
HZ_fnc_cacheHandler = compile preprocessfilelinenumbers "HZ\HZ_fnc_cacheHandler.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";


Questions = ["Hello. Have you seen a white truck?", "Hello. Have you seen a truck with a white canvas?","Hello. We are looking for a white truck","Hello. Have you seen a white truck filled with ammunition?","Hello. Have you seen a truck that say's U.N. on it?"];

caches = [];
	
if (isServer) then
{
	_channelName = "Q-dance Radio";
	civChatChannel = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], _channelName, "%UNIT_NAME", []];
	armsDealerChannel = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Weapon Purchase Orders", "%UNIT_NAME", []];
	publicVariable "armsDealerChannel";
	publicVariable "civChatChannel";
	_chosenVehicle = "CUP_I_Ural_Reammo_UN";
	_center = [5158.24,4481.88,0];
	_chosenStart = ([_center, 4, 2000, 3, 0, 0.25, 0] call BIS_fnc_findSafePos);

	civCarPool = ['CUP_C_Skoda_Blue_CIV', 'CUP_C_Skoda_Green_CIV', 'CUP_C_Skoda_Red_CIV', 'CUP_C_Skoda_White_CIV', 'CUP_C_Datsun', \
			'CUP_C_Datsun_4seat', 'CUP_C_Datsun_Covered', 'CUP_C_Datsun_Plain', 'CUP_C_Datsun_Tubeframe', 'CUP_C_Golf4_black_Civ', \
			'CUP_C_Skoda_White_CIV', 'CUP_C_Golf4_green_Civ', 'CUP_C_Golf4_random_Civ', 'CUP_C_Golf4_red_Civ', 'CUP_C_Golf4_white_Civ', \
			'CUP_C_Golf4_yellow_Civ', 'CUP_C_Octavia_CIV', 'C_Offroad_01_F'];
			
	ammotruck = _chosenVehicle createVehicle _chosenStart;
	for [{_i=0}, {_i<6}, {_i=_i+1}] do
	{
		["ace_wheel", ammotruck] call ace_cargo_fnc_addCargoItem;
	};
	
	publicVariable "ammotruck";
	
	_chosenVehicles = [];
	for [{_i=0}, {_i<3}, {_i=_i+1}] do
	{
		_chosenCar = "RHS_Ural_Open_Civ_03";
		while {_chosenCar in _chosenVehicles} do {
			_chosenCar = civCarPool call BIS_fnc_selectRandom;
		};
		_chosenVehicles = _chosenVehicles + [_chosenCar];
		_car1 = _chosenCar createVehicle ([getpos ammotruck, 4, 30, 8, 0, 0.25, 0] call BIS_fnc_findSafePos);
		[[_car1,90,75]] call HZ_fnc_speedLimiter;
		_car1 setdir (random 360);
		[_car1, "opfor1"] call FNC_VehicleGearScript;
	
	};

	[[ammotruck,90,75]] call HZ_fnc_speedLimiter;
	[ammotruck, "UNTruck"] call FNC_VehicleGearScript;
};


[] call HZ_fnc_AmbCivMain;

