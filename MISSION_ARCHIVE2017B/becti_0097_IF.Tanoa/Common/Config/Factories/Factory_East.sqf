private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "O_officer_F"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "O_Soldier_unarmed_F"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "O_diver_F"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "O_Soldier_F"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "O_crew_F"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "O_Helipilot_F"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "O_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\A3\Data_F\Flags\Flag_CSAT_CO.paa"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["O_T_Truck_03_medical_F", [
		["arifle_Katiba_GL_F", 2], ["30rnd_65x39_caseless_green", 50],
		["arifle_Mk20_F", 2], ["30rnd_556x45_stanag", 25],
		["launch_RPG32_F", 3], ["RPG32_F", 12], 
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3],
		["optic_Holosight", 2],
		["optic_MRCO", 1]
	]], 
	["O_T_LSV_02_armed_F", [
		["arifle_Katiba_GL_F", 2], ["30rnd_65x39_caseless_green", 50],
		["arifle_Mk20_F", 2], ["30rnd_556x45_stanag", 25],
		["launch_RPG32_F", 3], ["RPG32_F", 12], 
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3],
		["optic_Holosight", 2],
		["optic_MRCO", 1]
	]]
]];

//--- Units - Barracks
_u 			= ["O_T_soldier_AR_F"];
_u = _u		+ ["rhs_vmf_flora_rifleman"];
_u = _u		+ ["rhs_vmf_flora_engineer"];
_u = _u		+ ["rhs_vmf_flora_grenadier_rpg"];
_u = _u		+ ["rhs_vmf_flora_machinegunner"];
_u = _u		+ ["rhs_vmf_flora_marksman"];
_u = _u		+ ["rhs_vmf_flora_medic"];
_u = _u		+ ["rhs_vmf_flora_rifleman"];
_u = _u		+ ["rhs_vmf_flora_rifleman_lite"];
_u = _u		+ ["rhs_vmf_flora_rifleman_lite"];
_u = _u		+ ["rhs_vmf_flora_engineer"];
_u = _u		+ ["rhs_vmf_flora_marksman"];
_u = _u		+ ["rhs_vmf_recon_marksman"];  
_u = _u		+ ["rhs_vmf_recon_marksman"];
_u = _u		+ ["rhs_vmf_recon_marksman"];
_u = _u		+ ["rhs_vmf_recon_marksman"];
_u = _u		+ ["rhs_vmf_flora_engineer"];
_u = _u		+ ["O_T_soldier_LAT_F"];
_u = _u		+ ["O_T_soldier_AA_F"];
_u = _u		+ ["O_T_soldier_AT_F"];
_u = _u		+ ["rhs_vmf_recon_rifleman_scout_akm"];
_u = _u		+ ["rhs_vmf_flora_rifleman"];
_u = _u		+ ["O_T_Helipilot_F"];
_u = _u		+ ["rhs_vmf_flora_combatcrew"];
_u = _u		+ ["rhs_vmf_flora_sergeant"];
_u = _u		+ ["rhs_vmf_flora_junior_sergeant"];
_u = _u		+ ["rhs_vmf_flora_marksman"];
_u = _u		+ ["O_T_diver_F"];
_u = _u		+ ["O_T_diver_TL_F"];
_u = _u		+ ["O_T_diver_exp_F"];
_u = _u		+ ["rhs_vmf_flora_sergeant"];
_u = _u		+ ["rhs_vmf_recon_rifleman_scout_akm"];
_u = _u		+ ["rhs_vmf_recon_rifleman_lat"];
_u = _u		+ ["rhs_vmf_recon_grenadier_scout"];
_u = _u		+ ["rhs_vmf_recon_medic"];
_u = _u		+ ["rhs_vmf_recon_sergeant"];
_u = _u		+ ["rhs_vmf_recon_marksman"];
_u = _u		+ ["rhs_vmf_recon_rifleman_asval"];
_u = _u		+ ["rhs_vmf_recon_sergeant"];
_u = _u		+ ["rhs_vmf_recon_marksman"];
_u = _u		+ ["rhs_vmf_recon_efreitor"];
_u = _u		+ ["rhs_vmf_recon_machinegunner_assistant"];
_u = _u		+ ["rhs_vmf_recon_rifleman_lat"];
_u = _u		+ ["rhs_vmf_recon_arifleman"];
_u = _u		+ ["rhs_pilot_transport_heli"];
_u = _u		+ ["rhs_pilot_transport_heli"];
_u = _u		+ ["rhs_vmf_flora_rifleman_lite"];
_u = _u		+ ["rhs_vmf_recon_rifleman_akms"];
_u = _u		+ ["rhs_vmf_recon_rifleman_akms"];
_u = _u		+ ["rhs_vmf_recon_rifleman_akms"];
_u = _u		+ ["rhs_vmf_recon_rifleman_akms"];
_u = _u		+ ["rhs_vmf_recon_rifleman_akms"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["O_Quadbike_01_F"];
_u = _u		+ ["O_UGV_01_F"];
_u = _u		+ ["O_UGV_01_rcws_F"];
_u = _u		+ ["RHS_Ural_Open_VMF_01"];
_u = _u		+ ["rhs_gaz66_vv"];
_u = _u		+ ["rhsgref_BRDM2_vmf"];
_u = _u		+ ["rhs_tigr_sts_vmf"];
_u = _u		+ ["rhs_tigr_sts_3camo_vmf"];
_u = _u		+ ["rhs_tigr_vmf"];
_u = _u		+ ["rhs_tigr_sts_vmf"];
_u = _u		+ ["rhs_gaz66_ap2_vmf"];
_u = _u		+ ["rhs_gaz66_ap2_vmf"];
_u = _u		+ ["rhs_btr80_vmf"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u 			= ["rhs_bmp2e_vmf"];
_u = _u		+ ["rhs_t80a"];
_u = _u		+ ["rhs_zsu234_aa"];
_u = _u		+ ["RHS_BM21_VMF_01"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["RHS_Mi8AMT_vvsc"];
_u = _u		+ ["RHS_Mi8mt_vvsc"];
_u = _u		+ ["RHS_Mi8MTV3_FAB_vvsc"];
_u = _u		+ ["RHS_Mi8MTV3_vvsc"];
_u = _u		+ ["RHS_Mi8MTV3_vvsc"];
_u = _u		+ ["RHS_Mi8MTV3_vvsc"];
_u = _u		+ ["rhs_mi28n_vvsc"];
_u = _u		+ ["O_Heli_Attack_02_black_F"];   
_u = _u		+ ["O_UAV_02_F"];
_u = _u		+ ["O_UAV_02_CAS_F"];
_u = _u		+ ["O_T_UAV_04_CAS_F"];
_u = _u		+ ["RHS_Mi24P_CAS_vvsc"];
_u = _u		+ ["RHS_Ka52_UPK23_vvsc"];
_u = _u		+ ["RHS_Su25SM_vvsc"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["O_T_Truck_02_box_F"];
_u = _u		+ ["CTI_Salvager_East"];
_u = _u		+ ["O_T_Truck_02_fuel_F"];
_u = _u		+ ["O_T_Truck_03_repair_F"];
_u = _u		+ ["O_T_Truck_03_fuel_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["rhs_gaz66_ammo_vmf"];
_u = _u		+ ["rhs_gaz66_ammo_vmf"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["O_Boat_Transport_01_F"];
_u = _u		+ ["O_Boat_Armed_01_hmg_F"];
_u = _u		+ ["O_SDV_01_F"];
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
	_u = _u		+ ["O_engineer_F"];
	_u = _u		+ ["O_medic_F"];
        _u = _u		+ ["O_Soldier_F"];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];