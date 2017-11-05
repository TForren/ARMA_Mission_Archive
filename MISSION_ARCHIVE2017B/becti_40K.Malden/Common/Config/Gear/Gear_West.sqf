private ["_faction", "_i", "_p", "_side", "_u"];

_side = _this;
_faction = "West";

_i = [];
_u = [];
_p = [];

//--- Magazines
_i = _i		+ ["Lucius98_mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Lucius22c_Solid"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["Lucius22c_Pellet"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["MLAT_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["MLHE_Mag"];
_u = _u		+ [0];
_p = _p		+ [20];

//--- Weapons (Nested array elements are defined but skiped in the gear menu)

_i = _i		+ ["Lucius98LasgunBlackS"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["Lucius22c"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["MissileLauncherDKOKGreen"];
_u = _u		+ [0];
_p = _p		+ [200];


//--- Uniforms
_i = _i		+ ["DKoK_Eng_Uniform_1491st"];
_u = _u		+ [0];
_p = _p		+ [10];

//--- Vests

_i = _i		+ ["DKoK_Eng_Armor_1491st"];
_u = _u		+ [0];
_p = _p		+ [30];

//--- Backpacks
_i = _i		+ ["DKoK_AT_BackPack"];
_u = _u		+ [0];
_p = _p		+ [20];


//--- Glasses
_i = _i		+ ["DKOKGrenMask"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["DKOKEngMask"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["DKOKTroopMask"];
_u = _u		+ [0];
_p = _p		+ [5];

//--- Helms
_i = _i 	+ ["DKoK_GM_Helm_1489th"];
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