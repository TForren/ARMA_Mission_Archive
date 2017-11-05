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

_i = _i		+ ["7Rnd_408_Mag"];
_u = _u		+ [3];
_p = _p		+ [15];

_i = _i		+ ["11Rnd_45ACP_Mag"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["10Rnd_338_Mag"];
_u = _u		+ [2];
_p = _p		+ [15];

_i = _i		+ ["20Rnd_556x45_UW_mag"];
_u = _u		+ [1];
_p = _p		+ [15];

_i = _i		+ ["20Rnd_762x51_Mag"];
_u = _u		+ [2];
_p = _p		+ [20];

_i = _i		+ ["30Rnd_45ACP_Mag_SMG_01"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_45ACP_Mag_SMG_01_tracer_green"];
_u = _u		+ [0];
_p = _p		+ [5];

_i = _i		+ ["30Rnd_556x45_Stanag"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Red"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Green"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["30Rnd_556x45_Stanag_Tracer_Yellow"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["30Rnd_65x39_caseless_mag"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["30Rnd_65x39_caseless_mag_Tracer"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["100Rnd_65x39_caseless_mag"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["100Rnd_65x39_caseless_mag_Tracer"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["130Rnd_338_Mag"];
_u = _u		+ [2];
_p = _p		+ [45];

_i = _i		+ ["150Rnd_556x45_Drum_Mag_F"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["150Rnd_556x45_Drum_Mag_Tracer_F"];
_u = _u		+ [2];
_p = _p		+ [55];

_i = _i		+ ["200Rnd_556x45_Box_Tracer_Red_F"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["200Rnd_556x45_Box_Tracer_F"];
_u = _u		+ [2];
_p = _p		+ [60];


_i = _i		+ ["NLAW_F"];
_u = _u		+ [0];
_p = _p		+ [250];

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

_i = _i		+ ["B_IR_Grenade"];
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
_i = _i		+ ["arifle_TRG21_F"];
_u = _u		+ [0];
_p = _p		+ [70];

//--- Uniforms

_i = _i		+ ["U_B_CombatUniform_mcam"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["U_B_CombatUniform_mcam_tshirt"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["U_B_CombatUniform_mcam_vest"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["U_Competitor"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["U_B_CTRG_1"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["U_B_CTRG_2"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["U_B_CTRG_3"];
_u = _u		+ [2];
_p = _p		+ [60];

_i = _i		+ ["U_B_GhillieSuit"];
_u = _u		+ [3];
_p = _p		+ [125];

_i = _i		+ ["U_B_FullGhillie_ard"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["U_B_FullGhillie_lsh"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["U_B_FullGhillie_sard"];
_u = _u		+ [3];
_p = _p		+ [150];

_i = _i		+ ["U_B_T_FullGhillie_tna_F"];
_u = _u		+ [3];
_p = _p		+ [180];

_i = _i		+ ["U_B_HeliPilotCoveralls"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["U_B_PilotCoveralls"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["U_Rangemaster"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["U_B_Wetsuit"];
_u = _u		+ [1];
_p = _p		+ [60];




//--- Vests

_i = _i		+ ["V_BandollierB_rgr"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["V_BandollierB_blk"];
_u = _u		+ [0];
_p = _p		+ [35];

_i = _i		+ ["V_Chestrig_blk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["V_Chestrig_rgr"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["V_PlateCarrier1_rgr"];
_u = _u		+ [0];
_p = _p		+ [75];

_i = _i		+ ["V_PlateCarrier2_rgr"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["V_PlateCarrier2_rgr_noflag_F"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["V_PlateCarrier3_rgr"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["V_PlateCarrierGL_rgr"];
_u = _u		+ [1];
_p = _p		+ [75];

_i = _i		+ ["V_PlateCarrierL_CTRG"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["V_PlateCarrierH_CTRG"];
_u = _u		+ [3];
_p = _p		+ [100];

_i = _i		+ ["V_PlateCarrierSpec_rgr"];
_u = _u		+ [0];
_p = _p		+ [100];

_i = _i		+ ["V_TacChestrig_oli_F"];
_u = _u		+ [2];
_p = _p		+ [70];

_i = _i 	+ ["V_TacVest_camo"];
_u = _u  	+ [2];
_p = _p 	+ [50];

_i = _i		+ ["V_Rangemaster_belt"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["V_RebreatherB"];
_u = _u		+ [1];
_p = _p		+ [250];

//--- Backpacks
_i = _i		+ ["B_AssaultPack_khk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_AssaultPack_blk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["b_assaultpack_mcamo"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_Bergen_sgg"];
_u = _u		+ [2];
_p = _p		+ [65];

_i = _i		+ ["B_Bergen_dgtl_F"];
_u = _u		+ [2];
_p = _p		+ [65];

_i = _i 	+ ["B_Bergen_blk"];
_u = _u 	+ [2];
_p = _p 	+ [65];

_i = _i		+ ["B_Carryall_khk"];
_u = _u		+ [2];
_p = _p		+ [90];

_i = _i		+ ["B_Carryall_mcamo"];
_u = _u		+ [2];
_p = _p		+ [90];

_i = _i		+ ["B_FieldPack_khk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_FieldPack_blk"];
_u = _u		+ [0];
_p = _p		+ [50];

_i = _i		+ ["B_Kitbag_cbr"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["B_B_Parachute_02_F"];
_u = _u		+ [0];
_p = _p		+ [250];

_i = _i		+ ["B_TacticalPack_mcamo"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i		+ ["B_TacticalPack_blk"];
_u = _u		+ [1];
_p = _p		+ [60];

_i = _i		+ ["B_UAV_01_backpack_F"];
_u = _u		+ [3];
_p = _p		+ [650];

_i = _i		+ ["B_HMG_01_support_F"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["B_Static_Designator_01_weapon_F"];
_u = _u		+ [3];
_p = _p		+ [200];

_i = _i		+ ["B_HMG_01_support_high_F"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["B_HMG_01_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [500];

_i = _i		+ ["B_GMG_01_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [600];

_i = _i		+ ["B_HMG_01_high_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [550];

_i = _i		+ ["B_GMG_01_high_weapon_F"];
_u = _u		+ [1];
_p = _p		+ [650];

_i = _i		+ ["B_Mortar_01_support_F"];
_u = _u		+ [2];
_p = _p		+ [25];

_i = _i		+ ["B_Mortar_01_weapon_F"];
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
_i = _i		+ ["H_Bandanna_khk"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Bandanna_khk_hs"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Bandanna_mcamo"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Bandanna_gry"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Booniehat_khk"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Booniehat_mcamo"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Cap_blk_CMMG"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Beret_brn_SF"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Beret_grn_SF"];
_u = _u	        + [0];
_p = _p	        + [15];

_i = _i		+ ["H_Cap_headphones"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Cap_khaki_specops_UK"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Cap_tan_specops_US"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i 	+ ["H_Cap_blk"];
_u = _u 	+ [0];
_p = _p 	+ [15];

_i = _i		+ ["H_Cap_oli"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_CrewHelmetHeli_B"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_HelmetB"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["H_HelmetB_camo"];
_u = _u		+ [3];
_p = _p		+ [25];

_i = _i		+ ["H_HelmetB_light"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["H_HelmetB_paint"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["H_HelmetB_plain_mcamo"];
_u = _u		+ [1];
_p = _p		+ [25];

_i = _i		+ ["H_HelmetCrew_B"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_HelmetSpecB"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_HelmetSpecB_paint1"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_HelmetSpecB_paint2"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_MilCap_mcamo"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_PilotHelmetFighter_B"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_PilotHelmetHeli_B"];
_u = _u		+ [2];
_p = _p		+ [50];

_i = _i		+ ["H_Shemag_olive"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Watchcap_blk"];
_u = _u		+ [0];
_p = _p		+ [15];

_i = _i		+ ["H_Watchcap_camo"];
_u = _u		+ [0];
_p = _p		+ [15];



//--- Accessories
_i = _i		+ ["muzzle_snds_acp"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["muzzle_snds_H"];
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

_i = _i		+ ["muzzle_snds_B_snd_F"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_m_khk_F"];
_u = _u		+ [1];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_L"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["muzzle_snds_M"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_338_black"]; 
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_338_green"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["muzzle_snds_338_sand"];
_u = _u		+ [0];
_p = _p		+ [20];

_i = _i		+ ["optic_arco"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["optic_Arco_blk_F"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["optic_Arco_ghex_F"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["optic_ERCO_snd_F"];
_u = _u		+ [1];
_p = _p		+ [55];

_i = _i		+ ["optic_ERCO_blk_F"];
_u = _u		+ [1];
_p = _p		+ [55];


_i = _i		+ ["optic_Hamr"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["optic_Holosight"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["optic_MRCO"];
_u = _u		+ [1];
_p = _p		+ [30];

_i = _i		+ ["optic_Aco"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["optic_ACO_grn"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["optic_SOS"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["optic_SOS_khk_F"];
_u = _u		+ [2];
_p = _p		+ [100];

_i = _i		+ ["optic_LRPS"];
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

_i = _i		+ ["optic_KHS_blk"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_AMS"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_AMS_khk"];
_u = _u		+ [2];
_p = _p		+ [75];

_i = _i		+ ["optic_AMS_snd"];
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

_i = _i		+ ["bipod_01_F_blk"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["bipod_01_F_mtp"];
_u = _u		+ [1];
_p = _p		+ [50];

_i = _i		+ ["bipod_01_F_snd"];
_u = _u		+ [1];
_p = _p		+ [50];

//--- Items
_i = _i		+ ["NVGoggles"];
_u = _u		+ [0];
_p = _p		+ [25];

_i = _i		+ ["NVGogglesB_blk_F"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["NVGogglesB_grn_F"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["NVGogglesB_gry_F"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["Binocular"];
_u = _u		+ [0];
_p = _p		+ [10];

_i = _i		+ ["Rangefinder"];
_u = _u		+ [1];
_p = _p		+ [35];

_i = _i		+ ["Laserdesignator"];
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
_t = [];
//_t = _t 	+ [[[["arifle_MX_khk_f",["","","optic_arco", ""],["30rnd_65x39_caseless_mag"]],["",[],[]],["hgun_p07_f",[],["16rnd_9x21_mag"]]],[["u_b_combatuniform_mcam",["firstaidkit","firstaidkit"]],["V_PlateCarrier2_rgr",["handgrenade","handgrenade"]],["b_assaultpack_mcamo",["30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","30rnd_65x39_caseless_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag","16rnd_9x21_mag"]]],["h_helmetb",""],[["nvgoggles","Rangefinder"],["itemmap","itemgps","itemradio","itemcompass","itemwatch"]]]];

[_faction, _t] call compile preprocessFileLineNumbers "Common\Config\Gear\Gear_Template_Set.sqf"; 