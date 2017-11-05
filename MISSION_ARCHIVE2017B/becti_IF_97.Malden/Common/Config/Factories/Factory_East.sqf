private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "rhs_vmf_flora_sergeant"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "rhs_vmf_flora_officer"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "O_T_diver_F"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "rhs_vmf_flora_rifleman"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "rhs_vmf_flora_combatcrew"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "O_Helipilot_F"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "O_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\rhsafrf\addons\rhs_main\data\Flag_rus_CO.paa"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["rhs_gaz66_ap2_vmf", [
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3]
	]], 
	["rhs_tigr_sts_vmf", [
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3]
	]]
]];

//--- Units - Barracks
_u 			= ["rhs_vmf_flora_rifleman"];
_u = _u		+ ["rhs_vmf_flora_aa"];
_u = _u		+ ["rhs_vmf_flora_at"];
_u = _u		+ ["rhs_vmf_flora_machinegunner"];
_u = _u		+ ["rhs_vmf_flora_combatcrew"];
_u = _u		+ ["rhs_vmf_flora_engineer"];
_u = _u		+ ["rhs_vmf_flora_grenadier_rpg"];
_u = _u		+ ["rhs_pilot_combat_heli"];
_u = _u		+ ["rhs_vmf_flora_medic"];
_u = _u		+ ["rhs_vmf_flora_sergeant"];
_u = _u		+ ["rhs_vmf_flora_rifleman_lite"];
_u = _u		+ ["rhs_vmf_flora_officer"];  
_u = _u		+ ["rhs_vmf_recon_rifleman_scout_akm"];
_u = _u		+ ["rhs_vmf_flora_LAT"];
_u = _u		+ ["O_diver_F"];
_u = _u		+ ["O_diver_TL_F"];
_u = _u		+ ["O_diver_exp_F"];
_u = _u		+ ["rhs_vmf_recon_rifleman_lat"];
_u = _u		+ ["rhs_vmf_recon_grenadier_scout"];
_u = _u		+ ["rhs_vmf_recon_medic"];
_u = _u		+ ["rhs_vmf_recon_rifleman_asval"];
_u = _u		+ ["rhs_vmf_recon_sergeant"];
_u = _u		+ ["rhs_vmf_recon_marksman"];
_u = _u		+ ["rhs_vmf_recon_efreitor"];
_u = _u		+ ["rhs_vmf_recon_machinegunner_assistant"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["O_Quadbike_01_F"];
_u = _u		+ ["RHS_Ural_Open_VMF_01"];
_u = _u		+ ["RHS_Ural_VMF_01"];
_u = _u		+ ["rhs_gaz66_vv"];
_u = _u		+ ["rhsgref_BRDM2_vmf"];
_u = _u		+ ["rhsgref_BRDM2_ATGM_vmf"];
_u = _u		+ ["rhs_tigr_sts_vmf"];
_u = _u		+ ["rhs_tigr_sts_3camo_vmf"];
_u = _u		+ ["rhs_tigr_vmf"];
_u = _u		+ ["rhs_gaz66_ap2_vmf"];
_u = _u		+ ["rhs_btr80_vmf"];
_u = _u		+ ["rhs_btr80a_vmf"];
_u = _u		+ ["RHS_BM21_VMF_01"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u 			= ["rhs_bmp2e_vmf"];
_u = _u		+ ["rhs_t80a"];
_u = _u		+ ["rhs_zsu234_aa"];
_u = _u		+ ["rhs_t80u"];
_u = _u		+ ["rhs_t80uk"];
_u = _u		+ ["rhs_t90a_tv"];
_u = _u		+ ["rhs_2s3_tv"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["O_UAV_02_F"];
_u = _u		+ ["O_UAV_02_CAS_F"];
_u = _u		+ ["O_T_UAV_04_CAS_F"];
_u = _u		+ ["RHS_Mi8AMT_vvsc"];
_u = _u		+ ["RHS_Mi8mt_vvsc"];
_u = _u		+ ["RHS_Mi8MTV3_FAB_vvsc"];
_u = _u		+ ["RHS_Mi8MTV3_vvsc"];
_u = _u		+ ["rhs_mi28n_vvsc"];   
_u = _u		+ ["rhsgref_mi24g_UPK23"];
_u = _u		+ ["RHS_Su25SM_vvsc"];
_u = _u		+ ["RHS_TU95MS_vvs_old"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd"];
_u = _u		+ ["rhs_kamaz5350_flatbed_vmf"];
_u = _u		+ ["RHS_Ural_Fuel_VMF_01"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["rhs_gaz66_ammo_vmf"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["O_Boat_Transport_01_F"];
_u = _u		+ ["O_Boat_Armed_01_hmg_F"];
_u = _u		+ ["O_SDV_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];

_u 			= ["O_Quadbike_01_F"];
_u = _u		+ ["RHS_Ural_Open_VMF_01"];
_u = _u		+ ["RHS_Ural_VMF_01"];
_u = _u		+ ["rhs_gaz66_vv"];
_u = _u		+ ["rhsgref_BRDM2_vmf"];
_u = _u		+ ["rhsgref_BRDM2_ATGM_vmf"];
_u = _u		+ ["rhs_tigr_sts_vmf"];
_u = _u		+ ["rhs_tigr_sts_3camo_vmf"];
_u = _u		+ ["rhs_tigr_vmf"];
if ((missionNamespace getVariable "CTI_UNITS_TOWN_PURCHASE") > 0) then {
 	_u = _u		+ [missionNamespace getVariable format ["CTI_%1_SOLDIER", _side]];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];