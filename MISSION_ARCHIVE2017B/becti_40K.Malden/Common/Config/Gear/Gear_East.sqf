private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "East";

_i = [];
_u = [];
_p = [];

//--- Magazines
_i = _i		+ ["20Rnd_Agrip_mag_Tracer"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["MLAT_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["MLHE_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

//--- Weapons (Nested array elements are defined but skiped in the gear menu)

_i = _i		+ ["AgripinaaAutoChaos"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["MissileLauncherDKOKBlack"];
_u = _u		+ [0];
_p = _p		+ [200];


//--- Uniforms
_i = _i		+ ["OP_Ren_Uniform_02_black"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Indep_Ren_Uniform_01_black"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Indep_Ren_Uniform_02_black"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Indep_Ren_Uniform_01_black"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Ren_Uniform_02_brown"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Ren_Uniform_01_brown"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Indep_Ren_Uniform_01_green"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Indep_Ren_Uniform_02_green"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Ren_Uniform_02_grey"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Ren_Uniform_01_grey"];
_u = _u		+ [0];
_p = _p		+ [10];


//--- Vests

_i = _i		+ ["Ren_ArmorSet_01_black"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["Ren_ArmorSet_01_green"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["Ren_ArmorSet_02_brown"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["Ren_ArmorSet_01_grey"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["Ren_ArmorSet_01_brown"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["Ren_ArmorSet_02_black"];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["Ren_ArmorSet_02_green"];
_u = _u		+ [0];
_p = _p		+ [30];

//--- Backpacks
_i = _i		+ ["AT_Ren_Backpack_02_black"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["Ren_Backpack_02_black"];
_u = _u		+ [0];
_p = _p		+ [20];


//--- Glasses
_i = _i		+ ["Ren_Gasmask_02"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Ren_Gasmask_01"];
_u = _u		+ [0];
_p = _p		+ [5];

//--- Helms
_i = _i 	+ ["H_HeadSet_black_F"];
_u = _u 	+ [0];
_p = _p 	+ [10];

//--- Accessories

//--- Items
_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [10];

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