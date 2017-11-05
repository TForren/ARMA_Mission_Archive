private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "B_officer_F"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "B_Soldier_unarmed_F"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "B_Soldier_F"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "B_crew_F"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_Helipilot_F"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "B_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\A3\Data_F\Flags\Flag_nato_CO.paa"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["rhsusf_m113_usarmy_medical", [
		["arifle_mx_gl_f", 2], ["30Rnd_65x39_caseless_mag", 50],
		["arifle_MXM_F", 1], ["100Rnd_65x39_caseless_mag", 10],
		["launch_NLAW_F", 3], ["NLAW_F", 12], 
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["optic_MRCO", 1],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3],
		["optic_Holosight", 2]
	]], 
	["UK3CB_BAF_LandRover_WMIK_HMG_Green_A", [
		["arifle_mx_gl_f", 2], ["30Rnd_65x39_caseless_mag", 50],
		["arifle_MXM_F", 1], ["100Rnd_65x39_caseless_mag", 10],
		["launch_NLAW_F", 3], ["NLAW_F", 12], 
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["optic_MRCO", 1],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3],
		["optic_Holosight", 2]
	]]
]];

//--- Units - Barracks
_u 			= ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_explosives"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_grenadier"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_machinegunner"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_marksman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman_m4"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman_light"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman_light"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_engineer"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_marksman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_sniper_M107"];  
_u = _u		+ ["rhsusf_usmc_marpat_wd_sniper"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_sniper"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_sniper"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_engineer"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman_law"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_riflemanat"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman_m4"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_uav"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_helipilot"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_crewman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_squadleader"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_marksman"];
_u = _u		+ ["B_T_diver_F"];
_u = _u		+ ["B_T_diver_TL_F"];
_u = _u		+ ["B_T_diver_exp_F"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_officer"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_rifleman_fast"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_rifleman_at_lite"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_grenadier_m32"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_rifleman_lite"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_teamleader_fast"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_marksman_lite"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_marksman_fast"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_rifleman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_autorifleman_m249_ass"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_javelin_assistant"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_helipilot"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_helicrew"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_rifleman_light"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_gunner"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_gunner"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_gunner"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_gunner"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_gunner"];
_u = _u		+ ["B_Slingload_01_Cargo_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["B_Quadbike_01_F"];
_u = _u		+ ["B_UGV_01_F"];
_u = _u		+ ["B_UGV_01_rcws_F"];
_u = _u		+ ["rhsusf_M977A4_BKIT_M2_usarmy_wd"];
_u = _u		+ ["rhsusf_rg33_usmc_wd"];
_u = _u		+ ["rhsusf_rg33_m2_usmc_wd"];
_u = _u		+ ["rhsusf_rg33_m2_usmc_wd"];
_u = _u		+ ["UK3CB_BAF_LandRover_WMIK_HMG_Green_A"];
_u = _u		+ ["UK3CB_BAF_LandRover_WMIK_HMG_Green_A"];
_u = _u		+ ["rhsusf_m113_usarmy_medical"];
_u = _u		+ ["RHS_M2A3_BUSKI_wd"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];


_u  		= ["rhsusf_m113_usarmy"];
_u = _u		+ ["rhsusf_m1a1aimwd_usarmy"];
_u = _u		+ ["rhsusf_m1a1aim_tuski_wd"]; 
_u = _u		+ ["RHS_M6_wd"];
_u = _u		+ ["rhsusf_m109_usarmy"];
_u = _u		+ ["rhsusf_m109_usarmy"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["RHS_MELB_MH6M"];
_u = _u		+ ["RHS_UH1Y"];  
_u = _u		+ ["RHS_CH_47F"];
_u = _u		+ ["rhsusf_CH53E_USMC"];
_u = _u		+ ["RHS_MELB_AH6M_L"];
_u = _u		+ ["B_Heli_Attack_01_F"]; 
_u = _u		+ ["B_UAV_02_F"];
_u = _u		+ ["B_UAV_02_CAS_F"];
_u = _u		+ ["B_T_UAV_03_F"];
_u = _u		+ ["RHS_AH1Z_wd"];
_u = _u		+ ['rhsusf_CH53E_USMC'];
_u = _u		+ ['RHS_A10'];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["rhsusf_M977A4_REPAIR_usarmy_wd"];
_u = _u		+ ["CTI_Salvager_West"];
_u = _u		+ ["rhsusf_M978A4_usarmy_wd"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["rhsusf_M977A4_AMMO_usarmy_wd"];
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
	_u = _u		+ ["B_engineer_F"];
	_u = _u		+ ["B_medic_F"];
        _u = _u		+ ["B_Soldier_F"];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];