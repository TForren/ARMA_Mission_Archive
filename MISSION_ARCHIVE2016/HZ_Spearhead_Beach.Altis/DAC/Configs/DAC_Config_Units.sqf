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
    _Unit_Pool_S = ["rhs_msv_driver", "rhs_pilot_combat_heli","rhs_msv_sergeant",'rhs_msv_aa', 'rhs_msv_at', 'rhs_msv_arifleman', 'rhs_msv_efreitor', 'rhs_msv_engineer', 'rhs_msv_grenadier_rpg', 'rhs_msv_strelok_rpg_assist', 'rhs_msv_junior_sergeant', 'rhs_msv_machinegunner', 'rhs_msv_machinegunner_assistant', 'rhs_msv_marksman', 'rhs_msv_medic', 'rhs_msv_rifleman', 'rhs_msv_grenadier', 'rhs_msv_LAT', 'rhs_msv_RShG2'];
    _Unit_Pool_V = ['rhs_tigr_sts_msv'];
	_Unit_Pool_T = ["rhs_btr80_msv", "rhs_btr80a_msv"];
	_Unit_Pool_A = ["O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","O_Heli_Light_02_F","O_Heli_Light_02_armed_F"];
  };
//-------------------------------------------------------------------------------------------------
// Reinforcing OPFOR
  case 1:
  {
    _Unit_Pool_S = ["rhs_msv_driver", "rhs_pilot_combat_heli","rhs_msv_sergeant",'rhs_msv_aa', 'rhs_msv_at', 'rhs_msv_arifleman', 'rhs_msv_efreitor', 'rhs_msv_engineer', 'rhs_msv_grenadier_rpg', 'rhs_msv_strelok_rpg_assist', 'rhs_msv_junior_sergeant', 'rhs_msv_machinegunner', 'rhs_msv_machinegunner_assistant', 'rhs_msv_marksman', 'rhs_msv_medic', 'rhs_msv_rifleman', 'rhs_msv_grenadier', 'rhs_msv_LAT', 'rhs_msv_RShG2'];
    _Unit_Pool_V = ["RHS_Ural_Open_MSV_01","rhs_tigr_sts_msv","rhs_tigr_sts_3camo_msv","rhs_btr80_msv", "rhs_btr80a_msv"];
	_Unit_Pool_T = ["rhs_bmp2e_tv","rhs_bmp2d_tv","rhs_t80bvk","rhs_t80bv","rhs_t80uk","rhs_2s3_tv"];
	_Unit_Pool_A = ["RHS_Ka52_UPK23_vvsc","RHS_Mi8MTV3_vvsc","RHS_Mi24P_vvsc"];
  };

//-------------------------------------------------------------------------------------------------
// reinforcing opfor supporters
  case 2:
  {

    _Unit_Pool_S = ["rhs_msv_driver", "rhs_pilot_combat_heli","rhs_msv_sergeant",'rhs_msv_aa', 'rhs_msv_at', 'rhs_msv_arifleman', 'rhs_msv_efreitor', 'rhs_msv_engineer', 'rhs_msv_grenadier_rpg', 'rhs_msv_strelok_rpg_assist', 'rhs_msv_junior_sergeant', 'rhs_msv_machinegunner', 'rhs_msv_machinegunner_assistant', 'rhs_msv_marksman', 'rhs_msv_medic', 'rhs_msv_rifleman', 'rhs_msv_grenadier', 'rhs_msv_LAT', 'rhs_msv_RShG2'];
    _Unit_Pool_V = ["rhs_zsu234_aa","rhs_zsu234_aa", "rhs_btr80a_msv"];
	_Unit_Pool_T = ["rhs_2s3_tv","RHS_BM21_MSV_01"];
	_Unit_Pool_A = ["RHS_Ka52_UPK23_vvsc","RHS_Mi8MTV3_vvsc","RHS_Mi24P_vvsc"];
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