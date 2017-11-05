private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "rhsusf_usmc_marpat_wd_officer"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "rhsusf_usmc_marpat_wd_rifleman_light"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "rhsusf_usmc_marpat_wd_rifleman"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "rhsusf_usmc_marpat_wd_crewman"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "B_Helipilot_F"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "B_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\A3\Data_F\Flags\Flag_us_CO.paa"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["rhsusf_m113_usarmy_medical", [
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3]
	]], 
	["rhsusf_m1025_w_s_m2", [
		["HandGrenade", 20], 
		["firstaidkit", 20],
		["acc_flashlight", 5],
		["optic_ACO_grn", 3]
	]]
]];

//--- Units - Barracks
_u 			= ["rhsusf_usmc_marpat_wd_rifleman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_stinger"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_riflemanat"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_autorifleman_m249"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_crewman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_engineer"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_explosives"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_grenadier"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_machinegunner"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_helipilot"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_engineer"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_marksman"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_sniper"];  
_u = _u		+ ["rhsusf_usmc_marpat_wd_squadleader"];
_u = _u		+ ["rhsusf_usmc_marpat_wd_teamleader"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_rifleman_fast"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_rifleman_at_lite"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_grenadier_m32"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_rifleman_lite"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_marksman_fast"];
_u = _u		+ ["rhsusf_usmc_recon_marpat_wd_teamleader_fast"];
_u = _u		+ ["B_Pilot_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["B_Quadbike_01_F"];
_u = _u		+ ["rhsusf_M977A4_BKIT_M2_usarmy_wd"];
_u = _u		+ ["rhsusf_m998_w_s_4dr"];
_u = _u		+ ["rhsusf_m1025_w_s_m2"];
_u = _u		+ ["rhsusf_M1232_M2_usarmy_wd"];
_u = _u		+ ["rhsusf_M1232_MK19_usarmy_wd"];
_u = _u		+ ["rhsusf_m113_usarmy"];
_u = _u		+ ["rhsusf_m1025_w_s_Mk19"];
_u = _u		+ ["rhsusf_M1237_M2_usarmy_wd"];
_u = _u		+ ["rhsusf_M1237_MK19_usarmy_wd"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];


_u 			= ["RHS_M2A2_wd"];
_u 			= ["RHS_M6_wd"];
_u = _u		+ ["RHS_M2A2_BUSKI_WD"];  
_u = _u		+ ["RHS_M2A3_BUSKIII_wd"];
_u = _u		+ ["rhsusf_m1a2sep1wd_usarmy"];
_u = _u		+ ["rhsusf_m1a2sep1tuskiwd_usarmy"];
_u = _u		+ ["rhsusf_m109_usarmy"]; 
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["B_UAV_02_F"];
_u = _u		+ ["B_UAV_02_CAS_F"];
_u = _u		+ ["B_T_UAV_03_F"];
_u = _u		+ ["RHS_MELB_MH6M"];
_u = _u		+ ["RHS_UH1Y"];
_u = _u		+ ["RHS_CH_47F"];
_u = _u		+ ["RHS_MELB_AH6M_L"];
_u = _u		+ ["RHS_AH1Z_wd"];
_u = _u		+ ["UK3CB_BAF_Apache_AH1"];
_u = _u		+ ["RHS_A10"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd"];
_u = _u		+ ["CTI_Salvager_West"];
_u = _u		+ ["rhsusf_M978A4_BKIT_usarmy_wd"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["B_Boat_Transport_01_F"];
_u = _u		+ ["B_Boat_Armed_01_minigun_F"];
_u = _u		+ ["B_SDV_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];

_u 			= ["B_Quadbike_01_F"];
_u = _u		+ ["rhsusf_M977A4_BKIT_M2_usarmy_wd"];
_u = _u		+ ["rhsusf_m998_w_s_4dr"];
_u = _u		+ ["rhsusf_m1025_w_s_m2"];
_u = _u		+ ["rhsusf_M1232_M2_usarmy_wd"];
if ((missionNamespace getVariable "CTI_UNITS_TOWN_PURCHASE") > 0) then {
 	_u = _u		+ [missionNamespace getVariable format ["CTI_%1_SOLDIER", _side]];
	_u = _u		+ ["rhsusf_usmc_marpat_wd_engineer"];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];