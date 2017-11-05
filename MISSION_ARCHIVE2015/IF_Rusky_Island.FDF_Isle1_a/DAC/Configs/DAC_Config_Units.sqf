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
    _Unit_Pool_S = ["rhs_msv_crew","rhs_msv_officer_armored","rhs_msv_junior_sergeant","rhs_msv_sergeant","rhs_msv_engineer","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT","rhs_msv_marksman","rhs_msv_strelok_rpg_assist","rhs_msv_at","rhs_msv_machinegunner_assistant","rhs_msv_machinegunner","rhs_msv_grenadier","rhs_msv_efreitor","rhs_msv_rifleman"];
    _Unit_Pool_V = ["rhs_btr60_vdv","rhs_btr70_vdv","rhs_btr80_vdv","rhs_bmd1k","rhs_prp3_vdv","rhs_prp3_vdv","I_mas_BRDM2"]; //Transports and BTR
    _Unit_Pool_T = ["rhs_bmp2_msv","rhs_bmp2e_msv","rhs_bmd2k","rhs_bmd2", "rhs_bmd1pk"]; //Armor
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR (A3)
  case 1:
  {
    _Unit_Pool_S = ["B_crew_F","B_Helipilot_F","B_Soldier_SL_F","B_soldier_AR_F","B_soldier_AR_F","B_soldier_exp_F","B_soldier_GL_F","B_soldier_GL_F","B_soldier_AA_F","B_soldier_M_F","B_medic_F","B_soldier_repair_F","B_Soldier_F","B_Soldier_F","B_soldier_LAT_F","B_soldier_LAT_F","B_soldier_lite_F","B_soldier_TL_F","B_soldier_TL_F"];
    _Unit_Pool_V = ["B_Truck_01_covered_F","B_Truck_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_Truck_01_medical_F"];
    _Unit_Pool_T = ["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
    _Unit_Pool_A = ["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F","B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];
  };
//-------------------------------------------------------------------------------------------------
// Independent (A3)
  case 2:
  {
    _Unit_Pool_S = ["I_engineer_F","I_Soldier_A_F","I_Soldier_AA_F","I_Soldier_AAA_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AR_F","I_Soldier_AT_F","I_Soldier_exp_F","I_soldier_F","I_Soldier_GL_F","I_Soldier_repair_F"];
    _Unit_Pool_V = ["I_Truck_02_covered_F","I_Truck_02_transport_F","I_Truck_02_medical_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","I_MRAP_03_F"];
    _Unit_Pool_T = ["I_MBT_03_cannon_F","I_APC_tracked_03_cannon_F","I_APC_Wheeled_03_cannon_F"];
    _Unit_Pool_A = ["I_Heli_Transport_02_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"];
  };
//-------------------------------------------------------------------------------------------------
// Civilians (A3)
  case 3:
  {
    _Unit_Pool_S = 	["C_man_polo_1_F_afro","C_man_polo_2_F_afro","C_man_polo_3_F_afro","C_man_polo_4_F_afro","C_man_polo_5_F_afro","C_man_polo_6_F_afro",
	"C_man_shorts_1_F_afro","C_man_shorts_2_F_afro","C_man_shorts_3_F_afro","C_man_shorts_4_F_afro","C_man_p_fugitive_F_afro","C_man_p_beggar_F_afro","C_man_p_shorts_1_F_afro",
	"C_man_polo_1_F_asia","C_man_polo_2_F_asia","C_man_polo_3_F_asia","C_man_polo_4_F_asia","C_man_polo_5_F_asia","C_man_polo_6_F_asia","C_man_shorts_1_F_asia","C_man_shorts_2_F_asia",
	"C_man_shorts_3_F_asia","C_man_shorts_4_F_asia","C_man_p_fugitive_F_asia","C_man_p_shorts_1_F_asia","C_man_p_beggar_F_asia","C_man_polo_1_F_euro","C_man_polo_2_F_euro",
	"C_man_polo_3_F_euro","C_man_polo_4_F_euro","C_man_polo_5_F_euro","C_man_polo_6_F_euro","C_man_shorts_1_F_euro","C_man_shorts_2_F_euro","C_man_shorts_3_F_euro","C_man_shorts_4_F_euro",
	"C_man_p_fugitive_F_euro","C_man_p_shorts_1_F_euro","C_man_p_beggar_F_euro","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F",
	"C_man_1","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F","C_man_shorts_1_F","C_man_p_fugitive_F","C_man_p_beggar_F","C_man_w_worker_F","C_man_hunter_1_F","C_Orestes","C_Nikos","C_Nikos_aged",
	"C_journalist_F"];
    _Unit_Pool_V = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F","C_SUV_01_F"];
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