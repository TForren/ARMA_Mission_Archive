private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "LIB_GER_hauptmann"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "LIB_GER_unequip"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "LIB_GER_Soldier2_base"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "LIB_GER_spg_crew"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_Helipilot_F"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "B_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\WW2\Core_t\IF_Decals_t\German\flag_GER_co.paa"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["LIB_opelblitz_ambulance", [
		["LIB_MP40", 2], 
		["LIB_32Rnd_9x19", 30]
	]], 
	["LIB_Kfz1_MG42", [
		["LIB_MP40", 2], 
		["LIB_32Rnd_9x19", 30]
	]]
]];

//--- Units - Barracks
_u 			= ["LNRD_Luftwaffe_mgunner"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["SG_sturmtrooper_sapper_gefr"];
_u = _u		+ ["SG_sturmtrooper_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_mgunner"];
_u = _u		+ ["LNRD_Luftwaffe_ober_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_medic"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["SG_sturmtrooper_sapper"];
_u = _u		+ ["LNRD_Luftwaffe_ober_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_sniper"];  
_u = _u		+ ["LNRD_Luftwaffe_sniper"];
_u = _u		+ ["LNRD_Luftwaffe_sniper"];
_u = _u		+ ["LNRD_Luftwaffe_sniper"];
_u = _u		+ ["SG_sturmpanzer_crew"];
_u = _u		+ ["LNRD_Luftwaffe_AT_grenadier"];
_u = _u		+ ["LNRD_Luftwaffe_AT_soldier"];
_u = _u		+ ["LNRD_Luftwaffe_AT_soldier"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LIB_GER_pilot"];
_u = _u		+ ["SG_sturmpanzer_crew"];
_u = _u		+ ["SG_sturmtrooper_lieutenant"];
_u = _u		+ ["SG_sturmtrooper_sapper_gefr"];
_u = _u		+ ["LNRD_Luftwaffe_ober_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_smgunner"];
_u = _u		+ ["SG_sturmtrooper_rifleman"];
_u = _u		+ ["SG_sturmtrooper_AT_grenadier"];
_u = _u		+ ["SG_sturmtrooper_sapper"];
_u = _u		+ ["SG_sturmtrooper_medic"];
_u = _u		+ ["SG_sturmtrooper_lieutenant"];
_u = _u		+ ["SG_sturmtrooper_sniper"];
_u = _u		+ ["SG_sturmtrooper_ober_rifleman"];
_u = _u		+ ["SG_sturmtrooper_radioman"];
_u = _u		+ ["SG_sturmtrooper_rifleman"];
_u = _u		+ ["SG_sturmtrooper_AT_grenadier"];
_u = _u		+ ["SG_sturmtrooper_AT_grenadier"];
_u = _u		+ ["LIB_GER_pilot"];
_u = _u		+ ["LIB_GER_pilot"];
_u = _u		+ ["LNRD_Luftwaffe_rifleman"];
_u = _u		+ ["LNRD_Luftwaffe_flaksoldat"];
_u = _u		+ ["LNRD_Luftwaffe_flaksoldat"];
_u = _u		+ ["LNRD_Luftwaffe_flaksoldat"];
_u = _u		+ ["LNRD_Luftwaffe_flaksoldat"];
_u = _u		+ ["LNRD_Luftwaffe_flaksoldat"];
_u = _u		+ ["B_Slingload_01_Cargo_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["LIB_Kfz1"];
_u = _u		+ ["LIB_Kfz1"];
_u = _u		+ ["LIB_Kfz1_MG42"];
_u = _u		+ ["LIB_opelblitz_tent_y_camo"];
_u = _u		+ ["LIB_SdKfz251"];
_u = _u		+ ["LIB_SdKfz251"];
_u = _u		+ ["LIB_SdKfz251"];
_u = _u		+ ["LIB_Kfz1_MG42"];
_u = _u		+ ["LIB_Kfz1"];
_u = _u		+ ["LIB_opelblitz_ambulance"];
_u = _u		+ ["LIB_SdKfz251_FFV"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];


_u  		= ["LIB_SdKfz251"];
_u = _u		+ ["LIB_PzKpfwIV_H"];
_u = _u		+ ["LIB_PzKpfwV"]; 
_u = _u		+ ["LIB_SdKfz_7_AA"];
_u = _u		+ ["LIB_StuG_III_G"];
_u = _u		+ ["LIB_StuG_III_G"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["LIB_FW190F8"];
_u = _u		+ ["LIB_FW190F8"];  
_u = _u		+ ["LIB_FW190F8"];
_u = _u		+ ["LIB_FW190F8"];
_u = _u		+ ["LIB_FW190F8"];
_u = _u		+ ["LIB_FW190F8"]; 
_u = _u		+ ["LIB_FW190F8"];
_u = _u		+ ["LIB_Ju87"];
_u = _u		+ ["LIB_Ju87"];
_u = _u		+ ["LIB_FW190F8"];
_u = _u		+ ['LIB_FW190F8'];
_u = _u		+ ['LIB_Ju87'];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["LIB_opelblitz_parm"];
_u = _u		+ ["CTI_Salvager_West"];
_u = _u		+ ["LIB_Ju87"];
_u = _u		+ ["LIB_opelblitz_fuel"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["LIB_opelblitz_ammo"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["B_Boat_Transport_01_F"];
_u = _u		+ ["B_Boat_Armed_01_minigun_F"];
_u = _u		+ ["B_SDV_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];

_u 			= ["C_Offroad_01_F"];
_u = _u		+ ["C_Quadbike_01_F"];
_u = _u		+ ["C_Offroad_02_unarmed_F"];
_u = _u		+ ["C_Hatchback_01_F"];
_u = _u		+ ["C_Hatchback_01_sport_F"];
_u = _u		+ ["C_SUV_01_F"];
_u = _u		+ ["C_Van_01_transport_F"];
if ((missionNamespace getVariable "CTI_UNITS_TOWN_PURCHASE") > 0) then {
 	_u = _u		+ [missionNamespace getVariable format ["CTI_%1_SOLDIER", _side]];
	_u = _u		+ ["SG_sturmtrooper_sapper"];
	_u = _u		+ ["B_medic_F"];
        _u = _u		+ ["LIB_GER_Soldier2_base"];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];