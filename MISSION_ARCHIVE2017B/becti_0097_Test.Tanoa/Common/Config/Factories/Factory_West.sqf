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
	["B_Truck_01_medical_F", [
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
	["B_LSV_01_armed_F", [
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
_u 			= ["B_soldier_AR_F"];
_u = _u		+ ["B_Soldier_A_F"];
_u = _u		+ ["B_soldier_exp_F"];
_u = _u		+ ["B_Soldier_GL_F"];
_u = _u		+ ["B_HeavyGunner_F"];
_u = _u		+ ["B_soldier_M_F"];
_u = _u		+ ["B_medic_F"];
_u = _u		+ ["B_Soldier_F"];
_u = _u		+ ["B_soldier_PG_F"];
_u = _u		+ ["B_Soldier_lite_F"];
_u = _u		+ ["B_engineer_F"];
_u = _u		+ ["B_Sharpshooter_F"];
_u = _u		+ ["B_sniper_F"];  
_u = _u		+ ["B_ghillie_sard_F"];
_u = _u		+ ["B_ghillie_lsh_F"];
_u = _u		+ ["B_ghillie_ard_F"];
_u = _u		+ ["B_soldier_repair_F"];
_u = _u		+ ["B_soldier_LAT_F"];
_u = _u		+ ["B_soldier_AA_F"];
_u = _u		+ ["B_soldier_AT_F"];
_u = _u		+ ["B_spotter_F"];
_u = _u		+ ["B_soldier_UAV_F"];
_u = _u		+ ["B_Helipilot_F"];
_u = _u		+ ["B_crew_F"];
_u = _u		+ ["B_Soldier_SL_F"];
_u = _u		+ ["B_Soldier_TL_F"];
_u = _u		+ ["B_soldier_M_F"];
_u = _u		+ ["B_diver_F"];
_u = _u		+ ["B_diver_TL_F"];
_u = _u		+ ["B_diver_exp_F"];
_u = _u		+ ["B_officer_F"];
_u = _u		+ ["B_recon_F"];
_u = _u		+ ["B_recon_LAT_F"];
_u = _u		+ ["B_recon_exp_F"];
_u = _u		+ ["B_recon_medic_F"];
_u = _u		+ ["B_recon_TL_F"];
_u = _u		+ ["B_recon_M_F"];
_u = _u		+ ["B_Recon_Sharpshooter_F"];
_u = _u		+ ["B_recon_JTAC_F"];
_u = _u		+ ["B_soldier_AAR_F"];
_u = _u		+ ["B_soldier_AAT_F"];
_u = _u		+ ["B_soldier_AAA_F"];
_u = _u		+ ["B_Pilot_F"];
_u = _u		+ ["B_helicrew_F"];
_u = _u		+ ["B_soldier_PG_F"];
_u = _u		+ ["B_support_MG_F"];
_u = _u		+ ["B_support_GMG_F"];
_u = _u		+ ["B_support_Mort_F"];
_u = _u		+ ["B_support_AMG_F"];
_u = _u		+ ["B_support_AMort_F"];
_u = _u		+ ["B_Slingload_01_Cargo_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["B_Quadbike_01_F"];
_u = _u		+ ["B_UGV_01_F"];
_u = _u		+ ["B_UGV_01_rcws_F"];
_u = _u		+ ["B_Truck_01_transport_F"];
_u = _u		+ ["B_MRAP_01_F"];
_u = _u		+ ["B_MRAP_01_hmg_F"];
_u = _u		+ ["B_MRAP_01_gmg_F"];
_u = _u		+ ["B_LSV_01_armed_F"];
_u = _u		+ ["B_LSV_01_unarmed_F"];
_u = _u		+ ["B_Truck_01_medical_F"];
_u = _u		+ ["B_APC_Wheeled_01_cannon_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];


_u  		= ["B_APC_Tracked_01_rcws_F"];
_u = _u		+ ["B_MBT_01_cannon_F"];
_u = _u		+ ["B_MBT_01_TUSK_F"]; 
_u = _u		+ ["B_APC_Tracked_01_AA_F"];
_u = _u		+ ["B_MBT_01_arty_F"];
_u = _u		+ ["B_MBT_01_mlrs_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["B_Heli_Light_01_F"];
_u = _u		+ ["B_Heli_Transport_01_F"];  
_u = _u		+ ["B_Heli_Transport_03_F"];
_u = _u		+ ["B_Heli_Transport_03_unarmed_F"];
_u = _u		+ ["B_Heli_Light_01_armed_F"];
_u = _u		+ ["B_Heli_Attack_01_F"]; 
_u = _u		+ ["B_UAV_02_F"];
_u = _u		+ ["B_UAV_02_CAS_F"];
_u = _u		+ ["B_T_UAV_03_F"];
_u = _u		+ ["B_T_VTOL_01_armed_F"];
_u = _u		+ ['B_T_VTOL_01_infantry_F'];
_u = _u		+ ['B_Plane_CAS_01_F'];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["B_Truck_01_Repair_F"];
_u = _u		+ ["CTI_Salvager_West"];
_u = _u		+ ["B_Truck_01_fuel_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["B_Truck_01_ammo_F"];
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