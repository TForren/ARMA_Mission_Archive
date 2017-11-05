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

_i = _i		+ ["LIB_5Rnd_792x57"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_10Rnd_792x57"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_32Rnd_9x19"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_30Rnd_792x33"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_50Rnd_792x57"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_75Rnd_792x57"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_8Rnd_9x19_P08"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_8Rnd_9x19"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["LIB_1Rnd_RPzB"];
_u = _u		+ [0];
_p = _p		+ [5];


//--- Weapons (Nested array elements are defined but skiped in the gear menu)
_i = _i		+ ["LIB_K98"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["LIB_G3340"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["LIB_G43"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["LIB_K98ZF39"];
_u = _u		+ [1];
_p = _p		+ [120];

_i = _i		+ ["LIB_MP40"];
_u = _u		+ [0];
_p = _p		+ [80];

_i = _i		+ ["LIB_MP44"];
_u = _u		+ [2];
_p = _p		+ [140];

_i = _i		+ ["LIB_MG34"];
_u = _u		+ [1];
_p = _p		+ [170];

_i = _i		+ ["LIB_MG34_PT"];
_u = _u		+ [1];
_p = _p		+ [180];

_i = _i		+ ["LIB_MG42"];
_u = _u		+ [2];
_p = _p		+ [200];

_i = _i		+ ["LIB_P08"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["LIB_P38"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["LIB_Laffete_Tripod"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["LIB_GrWr34_Tripod"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["LIB_GrWr34_Barrel"];
_u = _u		+ [1];
_p = _p		+ [20];


//--- Uniforms

_i = _i		+ ["fow_u_ger_m43_01_private"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["fow_u_ger_m43_peadot_01_private"];
_u = _u		+ [0];
_p = _p		+ [25];


//--- Vests

_i = _i		+ ["fow_v_fall_bandoleer"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["fow_v_heer_g43"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["fow_v_heer_k98"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["fow_v_heer_k98_light"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["fow_v_heer_mg"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["fow_v_heer_mp40"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["fow_v_heer_mp44"];
_u = _u		+ [0];
_p = _p		+ [35];

//--- Backpacks
_i = _i		+ ["fow_b_heer_aframe"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_LIB_GER_Panzer_Empty"];
_u = _u		+ [0];
_p = _p		+ [50];

//--- Glasses
_i = _i		+ ["G_LIB_GER_Gloves1"];
_u = _u		+ [0];
_p = _p		+ [2];


//--- Helms
_i = _i		+ ["fow_h_ger_m40_heer_01"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["fow_h_ger_m40_heer_02"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["fow_h_ger_m40_heer_camo"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["fow_h_ger_officer_cap"];
_u = _u		+ [0];
_p = _p		+ [15];


//--- Accessories
_i = _i		+ ["muzzle_snds_acp"];
_u = _u		+ [0];
_p = _p		+ [10];

//--- Items
_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [10];

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
_t = []; /*
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