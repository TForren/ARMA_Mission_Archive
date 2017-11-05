//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// REDFOR (A3)
  case 0:
  {
    _Unit_Pool_S = ['uns_local_vc1a', 'uns_local_vc1f', 'uns_local_vc1b', 'uns_local_vc2b', 'uns_local_vc1c', 'uns_local_vc1d', 'uns_local_vc2c', 'uns_local_vc1e', 'uns_local_vc2e', 'uns_local_vc2a', 'uns_local_vc2d'];
    _Unit_Pool_V = ["CUP_O_BTR40_MG_TKM"];
	_Unit_Pool_T = ["O_MBT_02_arty_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_cannon_F","O_APC_Tracked_02_AA_F"];
	_Unit_Pool_A = ["O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","O_Heli_Light_02_F","O_Heli_Light_02_armed_F"];
  };
//-------------------------------------------------------------------------------------------------
// another Opfor
  case 1:
  {
    _Unit_Pool_S = ['uns_nva1b', 'uns_nva8a', 'uns_nva8b', 'uns_rf_vc8b', 'uns_nva8c', 'uns_mf_vc8c', 'uns_nva8d', 'uns_mf_vc8d', 'uns_rf_vc8d', 'uns_nva8e', 'uns_rf_vc8f', 'uns_nva8f', 'uns_nva8g', 'uns_nva8h', 'uns_nva8aa', 'uns_mf_vc5asni', 'uns_nva3amg', 'uns_nva3mg', 'uns_local_vc1e', 'uns_rf_vc4b', 'uns_mf_vc4b', 'uns_rf_vc4a', 'uns_nva4rpg', 'uns_mf_vc4a', 'uns_nva4arpg'];
    _Unit_Pool_V = ['CUP_O_BTR60_SLA', 'CUP_I_BTR40_MG_TKG'];
    _Unit_Pool_T = ['CUP_I_T34_NAPA'];
    _Unit_Pool_A = ["I_Heli_Transport_02_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"];
  };
//-------------------------------------------------------------------------------------------------
// Independent (A3)
  case 2:
  {
    _Unit_Pool_S = ['CUP_I_TK_GUE_Soldier_TL', 'CUP_I_TK_GUE_Soldier','CUP_I_TK_GUE_Soldier', 'CUP_I_TK_GUE_Soldier_AA', 'CUP_I_TK_GUE_Soldier_AR', 'CUP_I_TK_GUE_Guerilla_Medic', 'CUP_I_TK_GUE_Demo', 'CUP_I_TK_GUE_Soldier', 'CUP_I_TK_GUE_Soldier_AK_47S', 'CUP_I_TK_GUE_Soldier_HAT', 'CUP_I_TK_GUE_Guerilla_Enfield', 'CUP_I_TK_GUE_Soldier_GL', 'CUP_I_TK_GUE_Soldier_M16A2', 'CUP_I_TK_GUE_Soldier_AAT', 'CUP_I_TK_GUE_Soldier_AT', 'CUP_I_TK_GUE_Sniper', 'CUP_I_TK_GUE_Mechanic', 'CUP_I_TK_GUE_Soldier_MG'];
    _Unit_Pool_V = ['CUP_I_Datsun_PK_TK', 'CUP_I_Datsun_PK_TK_Random', 'CUP_I_BMP1_TK_GUE', 'rhs_bmd1_chdkz', 'rhs_bmp1_chdkz', 'CUP_O_UAZ_AGS30_CHDKZ', 'CUP_O_UAZ_SPG9_CHDKZ', 'CUP_I_T34_TK_GUE', 'rhs_ural_open_chdkz', 'rhs_ural_work_open_chdkz', 'rhs_uaz_open_chdkz'];
    _Unit_Pool_T = ['CUP_I_BMP1_TK_GUE', 'rhs_bmd1_chdkz', 'rhs_bmp1_chdkz', 'CUP_I_T34_TK_GUE'];
    _Unit_Pool_A = ["I_Heli_Transport_02_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"];
  };
//-------------------------------------------------------------------------------------------------
// Civilians (A3)
  case 3:
  {
    _Unit_Pool_S = 	['CUP_C_C_Citizen_02', 'CUP_C_C_Citizen_01', 'CUP_C_C_Citizen_04', 'CUP_C_C_Citizen_03', 'CUP_C_C_Pilot_01', 'CUP_C_C_Profiteer_02', 'CUP_C_C_Profiteer_03', 'CUP_C_C_Profiteer_01', 'CUP_C_C_Profiteer_04', 'CUP_C_C_Villager_01', 'CUP_C_C_Villager_04', 'CUP_C_C_Villager_02', 'CUP_C_C_Villager_03', 'CUP_C_C_Woodlander_01', 'CUP_C_C_Woodlander_02', 'CUP_C_C_Woodlander_03', 'CUP_C_C_Woodlander_04', 'CUP_C_C_Worker_03', 'CUP_C_C_Worker_04', 'CUP_C_C_Worker_02', 'CUP_C_C_Worker_01'];
    _Unit_Pool_V = ['CUP_C_Skoda_Blue_CIV', 'CUP_C_Skoda_Green_CIV', 'CUP_C_Skoda_Red_CIV', 'CUP_C_Skoda_White_CIV', 'CUP_C_Datsun', 'CUP_C_Datsun_4seat', 'CUP_C_Datsun_Covered', 'CUP_C_Datsun_Plain', 'CUP_C_Datsun_Tubeframe', 'CUP_C_Golf4_black_Civ', 'CUP_C_Golf4_blue_Civ', 'CUP_C_Golf4_green_Civ', 'CUP_C_Golf4_kitty_Civ', 'CUP_C_Golf4_random_Civ', 'CUP_C_Golf4_red_Civ', 'CUP_C_Golf4_white_Civ', 'CUP_C_Golf4_yellow_Civ', 'CUP_C_Octavia_CIV', 'CUP_C_Ural_Civ_01', 'CUP_C_Ural_Open_Civ_03', 'CUP_C_Ural_Open_Civ_02'];
    _Unit_Pool_T = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F","C_SUV_01_F"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// FIA BLUFOR (A3) (Uses Nato units for armor and choppers)
  case 4:
  {
    _Unit_Pool_S = ["B_G_engineer_F","B_G_medic_F","B_G_officer_F","B_G_Soldier_A_F","B_G_Soldier_AR_F","B_G_Soldier_exp_F","B_G_Soldier_F","B_G_Soldier_GL_F","B_G_Soldier_LAT_F","B_G_Soldier_lite_F","B_G_Soldier_M_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"];
    _Unit_Pool_V = ["B_G_Offroad_01_F","B_G_Offroad_01_armed_F","B_G_Van_01_transport_F","B_G_Van_01_fuel_F"];
    _Unit_Pool_T = ["B_APC_Wheeled_01_cannon_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_rcws_F","B_MBT_01_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
    _Unit_Pool_A = ["B_Heli_Light_01_armed_F","B_Heli_Transport_01_camo_F","B_Heli_Light_01_F"];
  };
//-------------------------------------------------------------------------------------------------
// REDFOR SPEC OP (A3) (Infantry only!)
  case 5:
  {
    _Unit_Pool_S = ["O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F"];
    _Unit_Pool_V = [];
	_Unit_Pool_T = [];
	_Unit_Pool_A = [];
  }; 

//-------------------------------------------------------------------------------------------------
  Default
  {
    if(DAC_Basic_Value != 5) then
    {
      DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
      hintc "Error: DAC_Config_Units > No valid config number";
    };
    if(true) exitwith {};
  };
};

if(count _this == 2) then
{
  _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
  _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray