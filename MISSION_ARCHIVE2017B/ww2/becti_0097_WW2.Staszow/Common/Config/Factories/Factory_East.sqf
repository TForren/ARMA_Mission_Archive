private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "LIB_SOV_captain"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "LIB_SOV_rifleman"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "LIB_SOV_rifleman"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "LIB_SOV_rifleman"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "LIB_SOV_tank_crew"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "O_Helipilot_F"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "O_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\WW2\Core_t\IF_Decals_t\Ussr\flag_SU_co.paa"];
missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["LIB_Zis5v", [
		["LIB_PPSh41_m", 2], 
		["LIB_35Rnd_762x25", 40]
	]], 
	["LIB_Scout_M3_FFV", [
		["LIB_PPSh41_m", 2], 
		["LIB_35Rnd_762x25", 40]

	]]
]];

//--- Units - Barracks
_u 			= ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_gun_crew"];
_u = _u		+ ["LIB_SOV_assault_smgunner"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_mgunner"];
_u = _u		+ ["LIB_SOV_p_officer"];
_u = _u		+ ["LIB_SOV_medic"];
_u = _u		+ ["LIB_SOV_LC_rifleman"];
_u = _u		+ ["LIB_SOV_pilot"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_sapper"];
_u = _u		+ ["LIB_SOV_scout_rifleman_autumn"];
_u = _u		+ ["LIB_SOV_scout_sniper_autumn"];  
_u = _u		+ ["LIB_SOV_scout_sniper_autumn"];
_u = _u		+ ["LIB_SOV_scout_sniper_autumn"];
_u = _u		+ ["LIB_SOV_scout_sniper_autumn"];
_u = _u		+ ["LIB_SOV_sapper"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_tank_crew"];
_u = _u		+ ["LIB_SOV_captain"];
_u = _u		+ ["LIB_SOV_first_lieutenant"];
_u = _u		+ ["LIB_SOV_p_officer"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_lieutenant"];
_u = _u		+ ["LIB_SOV_scout_rifleman_autumn"];
_u = _u		+ ["LIB_SOV_AT_grenadier"];
_u = _u		+ ["LIB_SOV_sapper"];
_u = _u		+ ["LIB_SOV_medic"];
_u = _u		+ ["LIB_SOV_scout_sergeant"];
_u = _u		+ ["LIB_SOV_scout_rifleman_autumn"];
_u = _u		+ ["LIB_SOV_scout_sniper"];
_u = _u		+ ["LIB_SOV_scout_sergeant"];
_u = _u		+ ["LIB_SOV_scout_rifleman_autumn"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_rifleman"];
_u = _u		+ ["LIB_SOV_pilot"];
_u = _u		+ ["LIB_SOV_pilot"];
_u = _u		+ ["LIB_SOV_pilot"];
_u = _u		+ ["LIB_SOV_gun_crew"];
_u = _u		+ ["LIB_SOV_gun_crew"];
_u = _u		+ ["LIB_SOV_gun_crew"];
_u = _u		+ ["LIB_SOV_gun_crew"];
_u = _u		+ ["LIB_SOV_gun_crew"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["LIB_GazM1_SOV"];
_u = _u		+ ["LIB_Scout_M3"];
_u = _u		+ ["LIB_Scout_M3"];
_u = _u		+ ["LIB_Zis5v"];
_u = _u		+ ["LIB_US6_Open"];
_u = _u		+ ["LIB_US6_Tent"];
_u = _u		+ ["LIB_Scout_M3_FFV"];
_u = _u		+ ["LIB_Scout_M3_FFV"];
_u = _u		+ ["LIB_Zis5v"];
_u = _u		+ ["LIB_Scout_M3_FFV"];
_u = _u		+ ["LIB_Zis5v_Med"];
_u = _u		+ ["LIB_Zis5v_Med"];
_u = _u		+ ["LIB_Scout_M3"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u 			= ["LIB_SdKfz251_captured"];
_u = _u		+ ["LIB_T34_76"];
_u = _u		+ ["LIB_SdKfz251_captured_FFV"];
_u = _u		+ ["LIB_US6_BM13"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["LIB_Li2"];
_u = _u		+ ["LIB_P39"];
_u = _u		+ ["LIB_P39"];
_u = _u		+ ["LIB_Li2"];
_u = _u		+ ["LIB_Li2"];
_u = _u		+ ["LIB_Li2"];
_u = _u		+ ["LIB_RA_P39_2"];
_u = _u		+ ["O_Heli_Attack_02_black_F"];   
_u = _u		+ ["LIB_P39"];
_u = _u		+ ["LIB_P39"];
_u = _u		+ ["LIB_P39"];
_u = _u		+ ["LIB_Li2"];
_u = _u		+ ["LIB_Li2"];
_u = _u		+ ["LIB_Pe2"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["LIB_Zis6_Parm"];
_u = _u		+ ["CTI_Salvager_East"];
_u = _u		+ ["LIB_Zis5v_Fuel"];
_u = _u		+ ["LIB_Zis6_Parm"];
_u = _u		+ ["LIB_Zis5v_Fuel"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["LIB_US6_Ammo"];
_u = _u		+ ["LIB_US6_Ammo"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["O_Boat_Transport_01_F"];
_u = _u		+ ["O_Boat_Armed_01_hmg_F"];
_u = _u		+ ["O_SDV_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];

_u 			= ["fow_ger_truppenfahrrad"];
_u 			= ["fow_ger_truppenfahrrad"];

if ((missionNamespace getVariable "CTI_UNITS_TOWN_PURCHASE") > 0) then {
 	_u = _u		+ [missionNamespace getVariable format ["CTI_%1_SOLDIER", _side]];
	_u = _u		+ ["LIB_SOV_assault_sergeant"];
	_u = _u		+ ["LIB_SOV_medic"];
        _u = _u		+ ["LIB_SOV_rifleman"];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];