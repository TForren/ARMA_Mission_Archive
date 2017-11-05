HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_populateTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_populateTowns.sqf";
HZ_fnc_prepTowns = compile preprocessfilelinenumbers "HZ\HZ_fnc_prepTowns.sqf";
HZ_fnc_AmbCivMain = compile preprocessfilelinenumbers "HZ\HZ_fnc_AmbCivMain.sqf";

HZ_fnc_civGear = compile preprocessfilelinenumbers "HZ\HZ_fnc_civGear.sqf";
HZ_fnc_civVehHandler = compile preprocessfilelinenumbers "HZ\HZ_fnc_civVehHandler.sqf";
HZ_fnc_spawnCivVeh = compile preprocessfilelinenumbers "HZ\HZ_fnc_spawnCivVeh.sqf";
HZ_fnc_speedLimiter = compile preprocessfilelinenumbers "HZ\HZ_fnc_speedLimiter.sqf";
HZ_fnc_ambIED = compile preprocessfilelinenumbers "HZ\HZ_fnc_ambIED.sqf";
HZ_fnc_armsDealerHandler = compile preprocessfilelinenumbers "HZ\HZ_fnc_armsDealerHandler.sqf";

//utility
HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";
HZ_fnc_avgSideLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgSideLoc.sqf";


Questions = ["Hello. Have  you seen a vehicle filled with a Fuck ton of guns?", "Hello. Have you seen any suspicious vehicles nearby?", "Hello. We are looking for the arms dealer's vehicle.", "Hello. Do you know where one might find the arms dealer's vehicle?", "Hello. We're looking for the arms dealer's vehicle", "Hello. I've heard the arms dealer is in the area. Do you know where his vehicle is?", "Where the bloody fuck is this arms dealer's truck?","Hello. Where's the fucking arms dealer vehicle?"];
	
if (isServer) then
{
	_channelName = "Q-dance Radio";
	civChatChannel = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], _channelName, "%UNIT_NAME", []];
	armsDealerChannel = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Weapon Purchase Orders", "%UNIT_NAME", []];
	publicVariable "armsDealerChannel";
	publicVariable "civChatChannel";
	_possibleArmsVehicles = ["C_Van_01_transport_F","RHS_Ural_Civ_01","C_Truck_02_covered_F"];
	_chosenVehicle = _possibleArmsVehicles call BIS_fnc_selectRandom;
	_possibleStarts = [[877.402,1733.34,0], [1602.4,1712.83,0], [2866.77,3930.61,0], [798.99,2923.44,0], [2053.72,3479.21,0]];
	_chosenStart = _possibleStarts call BIS_fnc_selectRandom;
	
	_ammoCrate = "rhs_weapon_crate" createvehicle [0,0,0];
	clearMagazineCargoGlobal _ammoCrate;
	clearWeaponCargoGlobal _ammoCrate;
	
	armsVehicle = _chosenVehicle createVehicle _chosenStart;
	publicVariable "armsVehicle";
	
	if (_chosenVehicle == "C_Van_01_transport_F") then {
		_ammoCrate attachTo [armsVehicle, [0.4, -2, -0.2] ]; _ammoCrate setdir 100;
	} else {
		if (_chosenVehicle == "RHS_Ural_Civ_01") then {
			_ammoCrate attachTo [armsVehicle, [0, -2, 0.2] ]; _ammoCrate setdir 100;
		} else {
			_ammoCrate attachTo [armsVehicle, [0, -2, -0.2] ]; _ammoCrate setdir 100;
		};
	};
	
	[[armsVehicle,90,75]] call HZ_fnc_speedLimiter;

	technical1 = "rhsgref_nat_uaz_dshkm" createVehicle (armsVehicle modeltoworld [4,0,-1.1]);
	technical2 = "LOP_NAPA_Landrover_M2" createVehicle (armsVehicle modeltoworld [-4,0,-1.1]);

};


//clients run this:
[] spawn {
	sleep 1;
	if (side player == east) then {
		_opLZ = createMarkerLocal ["opLZ", getpos armsVehicle];
		"opLZ" setMarkerShapeLocal "ICON";
		"opLZ" setMarkerTypeLocal "hd_end";
		"opLZ" setMarkerColorLocal "colorOPFOR";
		"opLZ" setMarkerTextLocal "Start";
		
		_deliver = createMarkerLocal ["deliver", getpos armsVehicle];
		"deliver" setMarkerShapeLocal "ICON";
		"deliver" setMarkerTypeLocal "hd_dot";
		"deliver" setMarkerColorLocal "colorOPFOR";
		"deliver" setMarkerTextLocal "";
		
		player moveinCargo armsVehicle;
		armsDealerChannel radioChannelAdd [player];
	};
	sleep 1;
	{_x moveincargo armsVehicle} foreach (list startingOpfor);
	sleep 1;
	{
		if (side _x == east) then {
			armsDealerChannel radioChannelAdd [_x];
		}; 
	} foreach allunits;
};


[] call HZ_fnc_AmbCivMain;
/*
[[suv1,60,30]] call HZ_fnc_speedLimiter;
[[suv2,60,30]] call HZ_fnc_speedLimiter;
[[suv3,60,30]] call HZ_fnc_speedLimiter;
[[suv4,60,30]] call HZ_fnc_speedLimiter;

*/

