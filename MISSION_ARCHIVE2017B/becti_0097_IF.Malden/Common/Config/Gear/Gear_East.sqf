private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//--- Magazines
_i = _i		+ ["ATMine_Range_Mag"];
_u = _u		+ [2];
_p = _p		+ [40];

_i = _i		+ ["APERSMine_Range_Mag"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["APERSBoundingMine_Range_Mag"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["SLAMDirectionalMine_Wire_Mag"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["APERSTripMine_Wire_Mag"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["SatchelCharge_Remote_Mag"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["DemoCharge_Remote_Mag"];
_u = _u		+ [1];
_p = _p		+ [30];

_i = _i		+ ["ClaymoreDirectionalMine_Remote_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["Laserbatteries"];
_u = _u		+ [3];
_p = _p		+ [30];

_i = _i		+ ["rhs_5Rnd_338lapua_t5000"];
_u = _u		+ [3];
_p = _p		+ [15];

_i = _i		+ ["rhs_10rnd_9x39mm_SP6"];
_u = _u		+ [3];
_p = _p		+ [20];

_i = _i		+ ["rhs_20rnd_9x39mm_SP6"];
_u = _u		+ [3];
_p = _p		+ [25];

_i = _i		+ ["rhs_mag_9x18_8_57N181S"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_10Rnd_762x54mmR_7N1"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["rhs_10rnd_9x39mm_SP5"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["rhs_20rnd_9x39mm_SP5"];
_u = _u		+ [2];
_p = _p		+ [15];

//_i = _i		+ ["20Rnd_556x45_UW_mag"];
//_u = _u		+ [1];
//_p = _p		+ [15];

_i = _i		+ ["rhs_30Rnd_545x39_AK"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_30Rnd_545x39_AK_no_tracers"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_30Rnd_545x39_7N6_AK"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["rhs_30Rnd_545x39_7N10_AK"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_30Rnd_545x39_7N22_AK"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_30Rnd_545x39_7U1_AK"];
_u = _u		+ [2];
_p = _p		+ [20];

_i = _i		+ ["rhs_45Rnd_545X39_AK"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_45Rnd_545X39_AK_Green"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_45Rnd_545X39_7N6_AK"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_45Rnd_545X39_7N10_AK"];
_u = _u		+ [1];
_p = _p		+ [30];

_i = _i		+ ["rhs_45Rnd_545X39_7N22_AK"];
_u = _u		+ [2];
_p = _p		+ [30];

_i = _i		+ ["rhs_30Rnd_762x39mm"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhs_30Rnd_762x39mm_tracer"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhs_30Rnd_762x39mm_89"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_30Rnd_762x39mm_U"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["rhs_100Rnd_762x54mmR"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_100Rnd_762x54mmR_green"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_100Rnd_762x54mmR_7N13"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["rhs_100Rnd_762x54mmR_7N26"];
_u = _u		+ [3];
_p = _p		+ [60];

_i = _i		+ ["rhs_100Rnd_762x54mmR_7BZ3"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["rhs_mag_9k38_rocket"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["rhs_rpg7_PG7V_mag"];
_u = _u		+ [1];
_p = _p		+ [200];

_i = _i		+ ["rhs_rpg7_PG7VL_mag"];
_u = _u		+ [2];
_p = _p		+ [250];

_i = _i		+ ["rhs_rpg7_PG7VR_mag"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["rhs_rpg7_OG7V_mag"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["rhs_rpg7_type69_airburst_mag"];
_u = _u		+ [3];
_p = _p		+ [300];

_i = _i		+ ["rhs_rpg7_TBG7V_mag"];
_u = _u		+ [3];
_p = _p		+ [400];

_i = _i		+ ["rhs_mag_9x19_17"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_9x18_8_57N181S"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_9x19mm_7n21_20"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["rhs_mag_9x19mm_7n21_44"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_mag_9x19mm_7n31_20"];
_u = _u		+ [2];
_p = _p		+ [20];

_i = _i		+ ["rhs_mag_9x19mm_7n31_44"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["MOLOTOV_MAG"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_rgd5"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_rgn"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["rhs_mag_rgo"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["ROCK_MAG"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["rhsgref_mag_rkg3em"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["O_IR_Grenade"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_mag_rdg2_white"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_rdg2_black"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_yellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Chemlight_blue"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["ACE_Chemlight_HiOrange"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["ACE_Chemlight_HiRed"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["ACE_Chemlight_HiWhite"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["ACE_Chemlight_HiYellow"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_nspd"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_nspn_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_nspn_red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_nspn_yellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_VOG25"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_VOG25P"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["rhs_VG40OP_white"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_VG40OP_red"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_VG40OP_green"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_GRD40_White"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_GRD40_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_GRD40_Green"];
_u = _u		+ [0];
_p = _p		+ [5];


//--- Weapons (Nested array elements are defined but skiped in the gear menu)

_i = _i		+ ["rhs_weap_ak74"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_ak74_gp25"];
_u = _u		+ [1];
_p = _p		+ [95];

_i = _i		+ ["rhs_weap_ak74m"];
_u = _u		+ [0];
_p = _p		+ [75];

_i = _i		+ ["rhs_weap_ak74m_gp25"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["rhs_weap_akm"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_weap_akm_gp25"];
_u = _u		+ [1];
_p = _p		+ [90];

_i = _i		+ ["rhs_weap_svdp"];
_u = _u		+ [2];
_p = _p		+ [150];

_i = _i		+ ["rhs_weap_asval"];
_u = _u		+ [2];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_vss"];
_u = _u		+ [3];
_p = _p		+ [200];


_i = _i		+ ["hlc_rifle_rpk74n"];
_u = _u		+ [0];
_p = _p		+ [120];

_i = _i		+ ["hlc_rifle_rpk"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_pkm"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["rhs_weap_pkp"];
_u = _u		+ [3];
_p = _p		+ [320];

_i = _i		+ ["rhs_weap_ak103"];
_u = _u		+ [2];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_ak103_gp25"];
_u = _u		+ [2];
_p = _p		+ [250];

_i = _i		+ ["rhs_weap_ak104"];
_u = _u		+ [3];
_p = _p		+ [210];

_i = _i		+ ["rhs_weap_ak105"];
_u = _u		+ [2];
_p = _p		+ [150];

_i = _i		+ ["rhs_weap_aks74u"];
_u = _u		+ [1];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_pp2000"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_t5000"];
_u = _u		+ [3];
_p = _p		+ [500];

_i = _i		+ ["rhs_weap_makarov_pm"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_weap_pya"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_pp2000_folded"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_rsp30_white"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_rsp30_green"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_rsp30_red"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_weap_tr8"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_weap_rpg26"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["rhs_weap_rshg2"];
_u = _u		+ [2];
_p = _p		+ [400];

_i = _i		+ ["rhs_weap_igla"];
_u = _u		+ [2];
_p = _p		+ [500];

_i = _i		+ ["rhs_weap_rpg7"];
_u = _u		+ [1];
_p = _p		+ [1000];

//--- Uniforms
_i = _i		+ ["rhs_uniform_vmf_flora"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_uniform_flora_patchless"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_flora"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_vdv_flora"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_flora_patchless_alt"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_emr_patchless"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_msv_emr"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["rhs_uniform_vdv_emr"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["rhs_uniform_emr_des_patchless"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_uniform_vdv_emr_des"];
_u = _u		+ [0];
_p = _p		+ [30];

//_i = _i		+ ["U_O_GhillieSuit"];
//_u = _u		+ [3];
//_p = _p		+ [125];

//_i = _i		+ ["U_O_FullGhillie_ard"];
//_u = _u		+ [3];
//_p = _p		+ [150];

//_i = _i		+ ["U_O_FullGhillie_lsh"];
//_u = _u		+ [3];
//_p = _p		+ [150];

//_i = _i		+ ["U_O_FullGhillie_sard"];
//_u = _u		+ [3];
//_p = _p		+ [150];

_i = _i		+ ["rhs_uniform_df15"];
_u = _u		+ [2];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_gorka_r_g"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_gorka_r_y"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_mvd_izlom"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_m88_patchless"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["rhs_uniform_mflora_patchless"];
_u = _u		+ [1];
_p = _p		+ [40];


//_i = _i		+ ["U_O_Wetsuit"];
//_u = _u		+ [1];
//_p = _p		+ [40];

//_i = _i		+ ["U_O_Protagonist_VR"];
//_u = _u		+ [2];
//_p = _p		+ [75];


//--- Vests

_i = _i		+ ["rhs_6sh46"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["rhs_vydra_3m"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["rhs_6Sh92"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_vog"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_digi"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_digi_vog"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_vsr"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_6sh92_vsr_vog"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_6b23"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["RHS_6B23_Rifleman"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6B23_Medic"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6b23_engineer"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6b23_crew"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["rhs_6b23_6sh116_od"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["rhs_6b23_6sh116_vog_od"];
_u = _u		+ [1];
_p = _p		+ [110];

//--- Backpacks
_i = _i		+ ["rhs_sidor"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["rhs_assault_umbts"];
_u = _u		+ [1];
_p = _p		+ [90];

_i = _i		+ ["rhs_assault_umbts_engineer_empty"];
_u = _u		+ [1];
_p = _p		+ [90];

_i = _i 	+ ["rhs_rpg_empty"];
_u = _u 	+ [2];
_p = _p 	+ [90];

_i = _i		+ ["rhs_d6_Parachute_backpack"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["RHS_DShkM_TripodLow_Bag"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["RHS_DShkM_TripodHigh_Bag"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["RHS_DShkM_Gun_Bag"];
_u = _u		+ [1];
_p = _p		+ [400];

_i = _i		+ ["RHS_AGS30_Tripod_Bag"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["RHS_AGS30_Gun_Bag"];
_u = _u		+ [1];
_p = _p		+ [500];

_i = _i		+ ["RHS_Podnos_Bipod_Bag"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["RHS_Podnos_Gun_Bag"];
_u = _u		+ [2];
_p = _p		+ [850];

//--- Glasses
_i = _i		+ ["G_Combat"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Diving"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_B_Diving"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Lowprofile"];
_u = _u  	+ [0];
_p = _p 	+ [5];

_i = _i		+ ["G_Shades_Black"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Shades_Blue"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Shades_Green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Shades_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_Blackred"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_BlackWhite"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_BlackYellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_Checkered"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_GreenBlack"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Sport_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Squares_Tinted"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i		+ ["G_Spectacles"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Squares"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Aviator"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Spectacles_Tinted"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i		+ ["G_Tactical_Black"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["G_Tactical_Clear"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i 	+ ["G_Balaclava_blk"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Balaclava_combat"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Balaclava_lowprofile"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_aviator"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_beast"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_blk"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_shades"];
_u = _u 	+ [0];
_p = _p 	+ [5];

_i = _i 	+ ["G_Bandanna_sport"];
_u = _u 	+ [0];
_p = _p 	+ [5];

//--- Helms
_i = _i 	+ ["rhs_fieldcap"];
_u = _u 	+ [0];
_p = _p 	+ [10];

_i = _i		+ ["rhs_6b26"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["rhs_tsh4"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["rhs_beret_milp"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["rhs_zsh7a_mike_green_alt"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["rhs_zsh7a_alt"];
_u = _u		+ [2];
_p = _p		+ [50];

//--- Accessories
_i = _i		+ ["rhs_acc_dtk1983"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_acc_1p29"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["rhs_acc_pso1m2"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["rhs_acc_pkas"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["rhs_acc_2dpZenit"];
_u = _u		+ [0];
_p = _p		+ [5];

//--- Items
_i = _i		+ ["rhs_1PN138"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_pdu4"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["ItemGPS"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["ItemMap"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["itemcompass"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["itemwatch"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Toolkit"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["FirstAidKit"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["Medikit"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["Minedetector"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["ACRE_PRC343"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["ACRE_PRC148"];
_u = _u		+ [0];
_p = _p		+ [10];

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];/*
_t = _t		+ [[[["arifle_trg21_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_trg21_gl_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_smokered_grenade_shell","1rnd_smokered_grenade_shell"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["lmg_zafir_f",["","acc_pointer_ir","optic_aco_grn", ""],["150rnd_762x51_box"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_katiba_f",["","acc_pointer_ir","optic_mrco", ""],["30rnd_65x39_caseless_green"]],["",[],[]],["hgun_rook40_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade","muzzle_snds_h"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["launch_rpg32_f",[],["rpg32_f"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","rpg32_f","rpg32_f"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["launch_O_Titan_F",[],["titan_aa"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","titan_aa","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["srifle_gm6_f",["","","optic_sos", ""],["5rnd_127x108_mag"]],["",[],[]],["hgun_acpc2_f",["muzzle_snds_acp","","",""],["16rnd_9x21_mag"]]],[["u_o_ghilliesuit",[]],["v_tacvest_brn",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_fieldpack_ocamo",["claymoredirectionalmine_remote_mag","claymoredirectionalmine_remote_mag","slamdirectionalmine_wire_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["smg_01_f",["","","optic_aco_grn", ""],["30rnd_45acp_mag_smg_01"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
*/
[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 