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
	_chosenVehicle = "LOP_UN_Ural";
	_center = [5158.24,4481.88,0];
	_chosenStart = ([_center, 4, 2000, 3, 0, 0.25, 0] call BIS_fnc_findSafePos);

	civCarPool = ["RDS_Lada_Civ_02","RDS_Lada_Civ_03","RDS_Lada_Civ_04","RDS_Lada_Civ_01","RDS_Octavia_Civ_01","RDS_S1203_Civ_01","RDS_JAWA353_Civ_01","RDS_Ikarus_Civ_02","RDS_Golf4_Civ_01","RDS_Gaz24_Civ_02","RDS_Gaz24_Civ_01","RDS_Gaz24_Civ_03"];
			
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
	
	[] call HZ_fnc_AmbCivMain;
	
};




