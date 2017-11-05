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

_i = _i		+ ["5Rnd_127x108_Mag"];
_u = _u		+ [3];
_p = _p		+ [15];

_i = _i		+ ["5Rnd_127x108_APDS_Mag"];
_u = _u		+ [3];
_p = _p		+ [25];

_i = _i		+ ["6Rnd_45ACP_Cylinder"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["10Rnd_762x54_Mag"];
_u = _u		+ [2];
_p = _p		+ [10];

_i = _i		+ ["10Rnd_93x64_DMR_05_Mag"];
_u = _u		+ [2];
_p = _p		+ [15];

_i = _i		+ ["10Rnd_127x54_Mag"];
_u = _u		+ [3];
_p = _p		+ [15];

_i = _i		+ ["20Rnd_556x45_UW_mag"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["20Rnd_650x39_Cased_Mag_F"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["30Rnd_65x39_caseless_green"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["30Rnd_65x39_caseless_green_mag_Tracer"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["30Rnd_580x42_Mag_F"];
_u = _u		+ [0];
_p = _p		+ [20];


_i = _i		+ ["30Rnd_580x42_Mag_Tracer_F"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["100Rnd_580x42_Mag_F"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["150Rnd_762x54_Box"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["150Rnd_762x54_Box_Tracer"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["150Rnd_93x64_Mag"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["200Rnd_556x45_Box_Tracer_Red_F"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["200Rnd_556x45_Box_Tracer_F"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["RPG32_F"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["RPG32_HE_F"];
_u = _u		+ [0];
_p = _p		+ [200];

_i = _i		+ ["Titan_AA"];
_u = _u		+ [2];
_p = _p		+ [150];

_i = _i		+ ["Titan_AP"];
_u = _u		+ [2];
_p = _p		+ [500];

_i = _i		+ ["Titan_AT"];
_u = _u		+ [2];
_p = _p		+ [800];

_i = _i		+ ["16Rnd_9x21_Mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_9x21_Mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["9Rnd_45ACP_Mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_9x21_Mag_SMG_02"];
_u = _u		+ [1];
_p = _p		+ [25];


_i = _i		+ ["30Rnd_9x21_Mag_SMG_02_Tracer_Red"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["30Rnd_9x21_Mag_SMG_02_Tracer_Yellow"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["HandGrenade"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["MiniGrenade"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["HandGrenade_Stone"];
_u = _u		+ [0];
_p = _p		+ [1];

_i = _i		+ ["O_IR_Grenade"];
_u = _u		+ [0];
_p = _p		+ [25];

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

_i = _i		+ ["1Rnd_HE_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [5];

_i = _i		+ ["1Rnd_Smoke_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["1Rnd_SmokeRed_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["1Rnd_SmokeGreen_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["1Rnd_SmokeYellow_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["1Rnd_SmokePurple_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["1Rnd_SmokeBlue_Grenade_shell"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["1Rnd_SmokeOrange_Grenade_shell"];
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

_i = _i		+ ["3Rnd_HE_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_Smoke_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_SmokeRed_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_SmokeGreen_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_SmokeYellow_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_SmokePurple_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_SmokeBlue_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_SmokeOrange_Grenade_shell"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_UGL_FlareWhite_F"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_UGL_FlareGreen_F"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_UGL_FlareRed_F"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_UGL_FlareYellow_F"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["3Rnd_UGL_FlareCIR_F"];
_u = _u		+ [1];
_p = _p		+ [15];



//--- Weapons (Nested array elements are defined but skiped in the gear menu)

_i = _i		+ ["arifle_Mk20_plain_F"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ [["arifle_Mk20_ACO_pointer_plain_F"]];
_u = _u		+ [0];
_p = _p		+ [85];

_i = _i		+ [["arifle_Mk20_ARCO_pointer_plain_F"]];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["arifle_Mk20C_plain_F"];
_u = _u		+ [0];
_p = _p		+ [75];

_i = _i		+ [["arifle_Mk20C_Holo_plain_F"]];
_u = _u		+ [0];
_p = _p		+ [85];

_i = _i		+ [["arifle_Mk20C_ACO_pointer_plain_F"]];
_u = _u		+ [0];
_p = _p		+ [90];

_i = _i		+ [["arifle_Mk20C_ACO_Flash_plain_F"]];
_u = _u		+ [0];
_p = _p		+ [90];

_i = _i		+ [["arifle_Mk20C_ACO_plain_F"]];
_u = _u		+ [0];
_p = _p		+ [85];

_i = _i		+ ["arifle_Mk20_GL_plain_F"];
_u = _u		+ [1];
_p = _p		+ [95];

_i = _i		+ [["arifle_Mk20_GL_ACO_pointer_plain_F"]];
_u = _u		+ [1];
_p = _p		+ [110];

_i = _i		+ ["arifle_Katiba_F"];
_u = _u		+ [1];
_p = _p		+ [175];

_i = _i		+ ["arifle_Katiba_F"];
_u = _u		+ [1];
_p = _p		+ [175];

_i = _i		+ [["arifle_Katiba_ACO_F"]];
_u = _u		+ [1];
_p = _p		+ [200];

_i = _i		+ [["arifle_Katiba_ACO_pointer_F"]];
_u = _u		+ [1];
_p = _p		+ [205];

_i = _i		+ [["arifle_Katiba_ARCO_F"]];
_u = _u		+ [1];
_p = _p		+ [250];

_i = _i		+ [["arifle_Katiba_ARCO_pointer_F"]];
_u = _u		+ [1];
_p = _p		+ [250];

_i = _i		+ [["arifle_Katiba_ACO_pointer_snds_F"]];
_u = _u		+ [1];
_p = _p		+ [225];

_i = _i		+ [["arifle_Katiba_ARCO_pointer_snds_F"]];
_u = _u		+ [1];
_p = _p		+ [250];

_i = _i		+ ["arifle_Katiba_C_F"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ [["arifle_Katiba_C_ACO_pointer_F"]];
_u = _u		+ [1];
_p = _p		+ [180];

_i = _i		+ [["arifle_Katiba_C_ACO_F"]];
_u = _u		+ [1];
_p = _p		+ [175];

_i = _i		+ [["arifle_Katiba_C_ACO_pointer_snds_F"]];
_u = _u		+ [1];
_p = _p		+ [200];

_i = _i		+ ["arifle_Katiba_GL_F"];
_u = _u		+ [1];
_p = _p		+ [190];

_i = _i		+ [["arifle_Katiba_GL_ACO_F"]];
_u = _u		+ [1];
_p = _p		+ [215];

_i = _i		+ [["arifle_Katiba_GL_ARCO_pointer_F"]];
_u = _u		+ [1];
_p = _p		+ [245];

_i = _i		+ [["arifle_Katiba_GL_ACO_pointer_F"]];
_u = _u		+ [1];
_p = _p		+ [220];

_i = _i		+ [["arifle_Katiba_GL_ACO_pointer_snds_F"]];
_u = _u		+ [1];
_p = _p		+ [240];

_i = _i		+ ["arifle_CTAR_ghex_F"];
_u = _u		+ [0];
_p = _p		+ [195];


_i = _i		+ ["arifle_CTAR_GL_ghex_F"];
_u = _u		+ [1];
_p = _p		+ [200];

_i = _i		+ ["arifle_CTARS_blk_F"];
_u = _u		+ [1];
_p = _p		+ [300];


_i = _i		+ ["LMG_Zafir_F"];
_u = _u		+ [1];
_p = _p		+ [300];

_i = _i		+ [["LMG_Zafir_pointer_F"]];
_u = _u		+ [1];
_p = _p		+ [305];

_i = _i		+ ["LMG_03_F"];
_u = _u		+ [2];
_p = _p		+ [305];

_i = _i		+ ["arifle_SDAR_F"];
_u = _u		+ [1];
_p = _p		+ [150];

_i = _i		+ ["MMG_01_hex_F"];
_u = _u		+ [2];
_p = _p		+ [350];

_i = _i		+ ["MMG_01_tan_F"];
_u = _u		+ [2];
_p = _p		+ [350];

_i = _i		+ ["SMG_05_F"];
_u = _u		+ [0];
_p = _p		+ [70];

_i = _i		+ ["SMG_02_F"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ [["SMG_02_ACO_F"]];
_u = _u		+ [0];
_p = _p		+ [75];

_i = _i		+ [["SMG_02_ARCO_pointg_F"]];
_u = _u		+ [0];
_p = _p		+ [80];

_i = _i		+ ["srifle_DMR_04_F"];
_u = _u		+ [3];
_p = _p		+ [475];

_i = _i		+ ["srifle_DMR_04_Tan_F"];
_u = _u		+ [3];
_p = _p		+ [475];

_i = _i		+ ["srifle_DMR_05_blk_F"];
_u = _u		+ [2];
_p = _p		+ [450];

_i = _i		+ ["srifle_DMR_05_hex_F"];
_u = _u		+ [2];
_p = _p		+ [450];

_i = _i		+ ["srifle_DMR_05_tan_F"];
_u = _u		+ [2];
_p = _p		+ [450];

_i = _i		+ ["srifle_DMR_01_F"];
_u = _u		+ [2];
_p = _p		+ [375];

_i = _i		+ ["srifle_DMR_07_hex_F"];
_u = _u		+ [2];
_p = _p		+ [375];

_i = _i		+ ["srifle_GM6_F"];
_u = _u		+ [3];
_p = _p		+ [550];

_i = _i		+ ["srifle_GM6_camo_F"];
_u = _u		+ [3];
_p = _p		+ [550];

_i = _i		+ [["srifle_GM6_SOS_F"]];
_u = _u		+ [3];
_p = _p		+ [650];

_i = _i		+ ["hgun_Rook40_F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ [["hgun_Rook40_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["hgun_ACPC2_F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ [["hgun_ACPC2_snds_F"]];
_u = _u		+ [0];
_p = _p		+ [30];

_i = _i		+ ["hgun_Pistol_heavy_02_F"];
_u = _u		+ [0];
_p = _p		+ [30];


_i = _i		+ ["launch_RPG32_F"];
_u = _u		+ [0];
_p = _p		+ [350];

_i = _i		+ ["launch_O_Titan_F"];
_u = _u		+ [2];
_p = _p		+ [900];

_i = _i		+ ["launch_O_Titan_short_F"];
_u = _u		+ [2];
_p = _p		+ [650];

//--- Uniforms
_i = _i		+ ["U_O_CombatUniform_ocamo"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["U_O_CombatUniform_oucamo"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["U_O_GhillieSuit"];
_u = _u		+ [3];
_p = _p		+ [125];

_i = _i		+ ["U_O_FullGhillie_ard"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["U_O_FullGhillie_lsh"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["U_O_FullGhillie_sard"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["U_O_PilotCoveralls"];
_u = _u		+ [2];
_p = _p		+ [40];

_i = _i		+ ["U_O_SpecopsUniform_ocamo"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["U_O_Wetsuit"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["U_O_Protagonist_VR"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["U_O_OfficerUniform_ocamo"];
_u = _u		+ [1];
_p = _p		+ [40];



//--- Vests
_i = _i		+ ["V_BandollierB_blk"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["V_BandollierB_cbr"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["V_BandollierB_khk"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["V_Chestrig_blk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["V_Chestrig_khk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["V_HarnessO_brn"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["V_HarnessO_gry"];
_u = _u		+ [0];
_p = _p		+ [60];

_i = _i		+ ["V_HarnessOGL_brn"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i		+ ["V_HarnessOGL_gry"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i		+ ["V_HarnessOSpec_brn"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["V_HarnessO_ghex_F"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["V_HarnessOSpec_gry"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["V_RebreatherIR"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["V_TacVest_brn"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i		+ ["V_TacVest_khk"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i 	+ ["V_TacVest_blk"];
_u = _u 	+ [1];
_p = _p 	+ [60];

_i = _i 	+ ["V_TacVestIR_blk"];
_u = _u 	+ [2];
_p = _p 	+ [60];

_i = _i 	+ ["V_PlateCarrier1_blk"];
_u = _u 	+ [0];
_p = _p 	+ [75];

//--- Backpacks
_i = _i		+ ["B_AssaultPack_cbr"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i 	+ ["B_AssaultPack_blk"];
_u = _u 	+ [0];
_p = _p 	+ [50];

_i = _i		+ ["B_ViperLightHarness_ghex_F"];
_u = _u		+ [2];
_p = _p		+ [65];

_i = _i		+ ["B_ViperHarness_hex_F"];
_u = _u		+ [2];
_p = _p		+ [65];

_i = _i		+ ["B_Bergen_sgg"];
_u = _u		+ [2];
_p = _p		+ [65];

_i = _i 	+ ["B_Bergen_blk"];
_u = _u 	+ [2];
_p = _p 	+ [65];

_i = _i		+ ["B_Carryall_ocamo"];
_u = _u		+ [2];
_p = _p		+ [90];

_i = _i 	+ ["B_Carryall_oucamo"];
_u = _u 	+ [2];
_p = _p 	+ [90];

_i = _i		+ ["B_FieldPack_ocamo"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_FieldPack_oucamo"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_FieldPack_blk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_Kitbag_cbr"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["B_O_Parachute_02_F"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["B_TacticalPack_ocamo"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i		+ ["B_TacticalPack_blk"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i		+ ["O_UAV_01_backpack_F"];
_u = _u		+ [3];
_p = _p		+ [650];

_i = _i		+ ["O_Static_Designator_02_weapon_F"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["O_HMG_01_support_F"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["O_HMG_01_support_high_F"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["O_HMG_01_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [400];

_i = _i		+ ["O_GMG_01_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [500];

_i = _i		+ ["O_HMG_01_high_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [450];

_i = _i		+ ["O_GMG_01_high_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [550];

_i = _i		+ ["O_Mortar_01_support_F"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["O_Mortar_01_weapon_F"];
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
_i = _i		+ ["H_Beret_ocamo"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i 	+ ["H_Cap_brn_SPECOPS"];
_u = _u 	+ [0];
_p = _p 	+ [15];

_i = _i		+ ["H_CrewHelmetHeli_O"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_HelmetCrew_O"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_HelmetLeaderO_ocamo"];
_u = _u		+ [1];
_p = _p		+ [40];

_i = _i		+ ["H_HelmetLeaderO_oucamo"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["H_HelmetO_ocamo"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["H_HelmetO_oucamo"];
_u = _u		+ [0];
_p = _p		+ [40];

_i = _i		+ ["H_HelmetSpecO_blk"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_HelmetSpecO_ocamo"];
_u = _u		+ [2];
_p = _p		+ [50];


_i = _i		+ ["H_HelmetLeaderO_ghex_F"];
_u = _u		+ [2];
_p = _p		+ [50];


_i = _i		+ ["H_HelmetO_ViperSP_ghex_F"];
_u = _u		+ [2];
_p = _p		+ [70];

_i = _i		+ ["H_MilCap_ocamo"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i 	+ ["H_MilCap_rucamo"];
_u = _u 	+ [0];
_p = _p 	+ [10];

_i = _i		+ ["H_PilotHelmetFighter_O"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_PilotHelmetHeli_O"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i 	+ ["H_Shemag_tan"];
_u = _u 	+ [0];
_p = _p 	+ [15];


_i = _i 	+ ["H_Bandanna_cbr"];
_u = _u 	+ [0];
_p = _p 	+ [15];

_i = _i		+ ["H_Bandanna_gry"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i 	+ ["H_Watchcap_cbr"];
_u = _u 	+ [0];
_p = _p 	+ [15];

//--- Accessories
_i = _i		+ ["muzzle_snds_acp"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["muzzle_snds_H"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_58_wdm_F"];
_u = _u		+ [0];
_p = _p		+ [20];


_i = _i		+ ["muzzle_snds_58_blk_F"];
_u = _u		+ [0];
_p = _p		+ [20];


_i = _i		+ ["muzzle_snds_65_TI_hex_F"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_H_MG"];
_u = _u		+ [2];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_H_SW"];
_u = _u		+ [2];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_B"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_L"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["muzzle_snds_M"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_93mmg"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_93mmg_tan"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["optic_arco"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["optic_Hamr"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["optic_Holosight"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["optic_MRCO"];
_u = _u		+ [1];
_p = _p		+ [30];

_i = _i		+ ["optic_Arco_ghex_F"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["optic_Aco"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["optic_ACO_grn"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["optic_ERCO_snd_F"];
_u = _u		+ [1];
_p = _p		+ [55];

_i = _i		+ ["optic_ERCO_blk_F"];
_u = _u		+ [1];
_p = _p		+ [55];

_i = _i		+ ["optic_SOS"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["optic_LRPS"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["optic_LRPS_ghex_F"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["optic_NVS"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_Nightstalker"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["optic_tws"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["optic_tws_mg"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["optic_DMS"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_AMS"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_KHS_blk"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_KHS_hex"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_KHS_tan"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_KHS_old"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_MRD"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["optic_Yorris"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["acc_flashlight"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["acc_pointer_IR"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["bipod_02_F_blk"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["bipod_02_F_hex"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["bipod_02_F_tan"];
_u = _u		+ [1];
_p = _p		+ [50];

//--- Items
_i = _i		+ ["NVGoggles_OPFOR"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["O_NVGoggles_hex_F"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["NVGoggles_OPFOR"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Rangefinder"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["Laserdesignator_02"];
_u = _u		+ [3];
_p = _p		+ [250];

_i = _i		+ ["ItemGPS"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["O_UavTerminal"];
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
_t = [];
_t = _t		+ [[[["arifle_trg21_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_trg21_gl_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_he_grenade_shell","1rnd_smokered_grenade_shell","1rnd_smokered_grenade_shell"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["lmg_zafir_f",["","acc_pointer_ir","optic_aco_grn", ""],["150rnd_762x51_box"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box","150rnd_762x51_box"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_katiba_f",["","acc_pointer_ir","optic_mrco", ""],["30rnd_65x39_caseless_green"]],["",[],[]],["hgun_rook40_f",["muzzle_snds_l","","",""],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade","muzzle_snds_h"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","30rnd_65x39_caseless_green","democharge_remote_mag","democharge_remote_mag","democharge_remote_mag","apersboundingmine_range_mag","apersboundingmine_range_mag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["launch_rpg32_f",[],["rpg32_f"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","rpg32_f","rpg32_f"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["arifle_mk20c_f",["","acc_pointer_ir","optic_aco_grn", ""],["30rnd_556x45_stanag"]],["launch_O_Titan_F",[],["titan_aa"]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","titan_aa","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["srifle_gm6_f",["","","optic_sos", ""],["5rnd_127x108_mag"]],["",[],[]],["hgun_acpc2_f",["muzzle_snds_acp","","",""],["16rnd_9x21_mag"]]],[["u_o_ghilliesuit",[]],["v_tacvest_brn",["firstaidkit","firstaidkit","handgrenade","handgrenade","smokeshellblue","smokeshellblue"]],["b_fieldpack_ocamo",["claymoredirectionalmine_remote_mag","claymoredirectionalmine_remote_mag","slamdirectionalmine_wire_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","9rnd_45acp_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag","5rnd_127x108_mag"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];
_t = _t		+ [[[["smg_01_f",["","","optic_aco_grn", ""],["30rnd_45acp_mag_smg_01"]],["",[],[]],["hgun_rook40_f",[],["16rnd_9x21_mag"]]],[["u_o_combatuniform_ocamo",["firstaidkit","firstaidkit"]],["V_HarnessO_brn",["handgrenade","handgrenade"]],["B_AssaultPack_cbr",["16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01","30rnd_45acp_mag_smg_01"]]],["h_helmeto_ocamo",""],[["NVGoggles_OPFOR","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 