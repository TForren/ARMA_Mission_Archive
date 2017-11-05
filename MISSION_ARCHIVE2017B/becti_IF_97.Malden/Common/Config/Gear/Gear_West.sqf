private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

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

_i = _i		+ ["rhs_mag_30Rnd_556x45_M855A1_Stanag"];
_u = _u		+ [3];
_p = _p		+ [15];

_i = _i		+ ["HandGrenade"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_m67"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["SmokeShell"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["SmokeShellRed"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["SmokeShellGreen"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["SmokeShellYellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["SmokeShellPurple"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["SmokeShellBlue"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["SmokeShellOrange"];
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

_i = _i		+ ["FlareWhite_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["FlareGreen_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["FlareRed_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["FlareYellow_F"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_M441_HE"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["UK3CB_BAF_1Rnd_60mm_Mo_Shells"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhs_mag_M433_HEDP"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_m714_white"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_M713_red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_m715_Green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_m716_yellow"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["UGL_FlareWhite_F"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["UGL_FlareGreen_F"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["UGL_FlareRed_F"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["UGL_FlareYellow_F"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["UGL_FlareCIR_F"];
_u = _u		+ [1];
_p = _p		+ [5];


_i = _i		+ ["rhs_mag_30Rnd_556x45_M855A1_Stanag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhsusf_200Rnd_556x45_soft_pouch"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhsusf_100Rnd_762x51_m80a1epr"];
_u = _u		+ [1];
_p = _p		+ [10];

_i = _i		+ ["rhsusf_100Rnd_762x51_m993"];
_u = _u		+ [1];
_p = _p		+ [10];

_i = _i		+ ["rhs_mag_smaw_HEAA"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_mag_smaw_HEDP"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["rhs_mag_smaw_SR"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["rhsusf_5Rnd_300winmag_xm2010"];
_u = _u		+ [2];
_p = _p		+ [15];

_i = _i		+ ["rhsusf_5Rnd_762x51_m118_special_Mag"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["rhsusf_mag_15Rnd_9x19_FMJ"];
_u = _u		+ [0];
_p = _p		+ [5];


//--- Weapons (Nested array elements are defined but skiped in the gear menu)
_i = _i		+ ["rhs_weap_m16a4_carryhandle"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhs_weap_m4_carryhandle"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["rhsusf_weap_m9"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhs_weap_m249_pip_L"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["rhs_weap_m16a4_carryhandle_M203"];
_u = _u		+ [0];
_p = _p		+ [90];

_i = _i		+ ["rhs_weap_hk416d10"];
_u = _u		+ [1];
_p = _p		+ [80];

_i = _i		+ ["rhs_weap_hk416d10_m320"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["rhs_weap_m240G"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ ["UK3CB_BAF_M6"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["rhs_weap_m27iar"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ ["rhs_weap_m72a7"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["rhs_weap_M136"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["rhs_weap_M136_hedp"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ ["rhs_weap_smaw_green"];
_u = _u		+ [1];
_p = _p		+ [400];

_i = _i		+ ["rhs_weap_m24sws"];
_u = _u		+ [1];
_p = _p		+ [250];

_i = _i		+ ["rhs_weap_XM2010"];
_u = _u		+ [2];
_p = _p		+ [300];

_i = _i		+ ["ACE_M47_Dragon"];
_u = _u		+ [2];
_p = _p		+ [450];

_i = _i		+ ["UK3CB_BAF_Javelin_Slung_Tube"];
_u = _u		+ [3];
_p = _p		+ [800];

//--- Uniforms

_i = _i		+ ["rhs_uniform_FROG01_wd"];
_u = _u		+ [0];
_p = _p		+ [25];

//--- Backpacks
_i = _i		+ ["rhsusf_assault_eagleaiii_coy_fixed"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["RHS_M2_Gun_Bag"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["RHS_M2_Tripod_Bag"];
_u = _u		+ [1];
_p = _p		+ [100];

_i = _i		+ ["RHS_Mk19_Gun_Bag"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ ["RHS_Mk19_Tripod_Bag"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ ["rhs_Tow_Gun_Bag"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["rhs_TOW_Tripod_Bag"];
_u = _u		+ [2];
_p = _p		+ [100];

//--- Glasses
_i = _i		+ ["rhs_ess_black"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["rhs_googles_clear"];
_u = _u		+ [0];
_p = _p		+ [5];

//--- Helms
_i = _i		+ ["rhsusf_lwh_helmet_marpatwd"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["rhsusf_lwh_helmet_marpatwd_blk_ess"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["rhsusf_lwh_helmet_marpatwd_headset"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["rhsusf_lwh_helmet_marpatwd_headset_blk"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["rhsusf_lwh_helmet_marpatwd_ess"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["rhsusf_falconii_coy"];
_u = _u		+ [0];
_p = _p		+ [15];

//--- Accessories
_i = _i		+ ["rhsusf_acc_harris_bipod"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["acc_flashlight"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["UK3CB_BAF_Eotech"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhsusf_acc_anpeq15_bk"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhsusf_acc_anpeq15_top"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhsusf_acc_anpeq15side"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhsusf_acc_anpeq15side"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["rhsusf_acc_anpeq15"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhsusf_acc_nt4_black"];
_u = _u		+ [1];
_p = _p		+ [10];

_i = _i		+ ["BWA3_optic_EOTech_Mag_Off"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["rhsusf_acc_ACOG_USMC"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["ACE_optic_SOS_PIP"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["rhsusf_acc_ACOG2_USMC"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["rhsusf_acc_SpecterDR_D"];
_u = _u		+ [3];
_p = _p		+ [80];

_i = _i		+ ["rhsusf_acc_M8541"];
_u = _u		+ [3];
_p = _p		+ [80];



//--- Items

_i = _i		+ ["ACRE_PRC343"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["ACE_fieldDressing"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACE_elasticBandage"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACE_quikclot"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACE_packingBandage"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACE_epinephrine"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACE_morphine"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACE_salineIV_500"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACE_personalAidKit"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["ACRE_PRC148"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["ACRE_PRC117F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["rhsusf_ANPVS_15"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["ACE_Clacker"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["ACE_Vector"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["ACE_M47_Daysight"];
_u = _u		+ [2];
_p = _p		+ [35];

_i = _i		+ ["Laserdesignator"];
_u = _u		+ [3];
_p = _p		+ [250];

_i = _i		+ ["UK3CB_BAF_Javelin_CLU"];
_u = _u		+ [3];
_p = _p		+ [250];

_i = _i		+ ["ItemGPS"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["B_UavTerminal"];
_u = _u		+ [1];
_p = _p		+ [250];

_i = _i		+ ["ItemMap"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["itemradio"];
_u = _u		+ [0];
_p = _p		+ [10];

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

[_faction, _i, _u, _p] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Config_Set.sqf"; 

//--- Templates (Those lines can be generated in the RPT on purchase by uncommenting the diag_log in Events_UI_GearMenu.sqf >> "onPurchase").
_t = [];/*
_t = _t 	+ [[[["arifle_MX_khk_f",["","","optic_arco", ""],["30rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",[],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_MX_khk_gl_f",["","acc_pointer_ir","optic_aco", ""],["30rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",[],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","30rnd_65x39_caseless_mag_tracer","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_smokeblue_grenade_shell","1rnd_smokeblue_grenade_shell","1rnd_smokeblue_grenade_shell","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_MX_khk_sw_f",["","acc_pointer_ir","optic_holosight", ""],["100rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",[],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag","100rnd_65x39_caseless_mag_tracer","100rnd_65x39_caseless_mag_tracer"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["lmg_mk200_f",["","acc_pointer_ir","optic_holosight", ""],["200rnd_65x39_cased_box"]],["",[],[]],["hgun_p07_f",[],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box","200rnd_65x39_cased_box"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["srifle_ebr_f",["","acc_pointer_ir","optic_hamr", ""],["20rnd_762x51_mag"]],["",[],[]],["hgun_p07_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade","muzzle_snds_b"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","20rnd_762x51_mag","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_MX_khkc_f",["","acc_pointer_ir","optic_holosight", ""],["30rnd_65x39_caseless_mag"]],["launch_nlaw_f",[],["nlaw_f"]],["hgun_p07_f",[],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","nlaw_f","nlaw_f"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["arifle_MX_khkc_f",["","acc_pointer_ir","optic_holosight", ""],["30rnd_65x39_caseless_mag"]],["launch_b_titan_f",[],["titan_aa"]],["hgun_p07_f",[],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","titan_aa"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t 	+ [[[["srifle_lrr_f",["","","optic_sos", ""],["7rnd_408_mag"]],["",[],[]],["hgun_p07_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_b_ghilliesuit",[]],["V_Chestrig_rgr",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_assaultpack_mcamo",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag","7rnd_408_mag"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
*/
[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 