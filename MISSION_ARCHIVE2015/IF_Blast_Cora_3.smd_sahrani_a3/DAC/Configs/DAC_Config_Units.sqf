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
    _Unit_Pool_S = ["LOP_ChDKZ_Infantry_TL","LOP_ChDKZ_Infantry_TL", "LOP_ChDKZ_Infantry_SL", "LOP_ChDKZ_Infantry_Rifleman","LOP_ChDKZ_Infantry_Marksman","LOP_ChDKZ_Infantry_MG","LOP_ChDKZ_Infantry_Engineer","LOP_ChDKZ_Infantry_Corpsman","LOP_ChDKZ_Infantry_AT"];
    _Unit_Pool_V = ["O_Truck_02_covered_F","O_Truck_02_transport_F","O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_Truck_02_medical_F"];
	_Unit_Pool_T = ["O_MBT_02_arty_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_cannon_F","O_APC_Tracked_02_AA_F"];
	_Unit_Pool_A = ["O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","O_Heli_Light_02_F","O_Heli_Light_02_armed_F"];
  };
//-------------------------------------------------------------------------------------------------
// another indfor (A3)
  case 1:
  {
    _Unit_Pool_S = ["LOP_AM_Soldier_TL","LOP_AM_Soldier_SL", "LOP_AM_Soldier_SL", "LOP_AM_Soldier_Medic","LOP_AM_Soldier_AT","LOP_AM_Soldier","LOP_AM_Soldier_GL","LOP_AM_Soldier_AR","LOP_AM_Soldier_Marksman"];
    _Unit_Pool_V = ["rhs_ural_work_open_chdkz","rhs_ural_open_chdkz"]; //rhs_ural_work_open_chdkz rhs_ural_open_chdkz
    _Unit_Pool_T = ["rhs_bmp1_tv","rhs_btr70_chdkz"];
    _Unit_Pool_A = ["I_Heli_Transport_02_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"];
  };
//-------------------------------------------------------------------------------------------------
// Independent (A3)
  case 2:
  {
    _Unit_Pool_S = ["LOP_AM_Soldier_TL","LOP_AM_Soldier_SL", "LOP_AM_Soldier_SL", "LOP_AM_Soldier_Medic","LOP_AM_Soldier_AT","LOP_AM_Soldier","LOP_AM_Soldier_GL","LOP_AM_Soldier_AR","LOP_AM_Soldier_Marksman"];
    _Unit_Pool_V = ["LOP_CDF_Landrover_M2"]; //rhs_ural_work_open_chdkz rhs_ural_open_chdkz
    _Unit_Pool_T = ["rhs_bmp1_tv","rhs_btr70_chdkz"];
    _Unit_Pool_A = ["I_Heli_Transport_02_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F"];
  };
//-------------------------------------------------------------------------------------------------
// Civilians (A3)
  case 3:
  {
    _Unit_Pool_S = 	["LOP_Afg_civ_01", "LOP_Afg_civ_02", "LOP_Afg_civ_03", "LOP_Afg_civ_04"];
    _Unit_Pool_V = ["RDS_Gaz24_Civ_03","RDS_Gaz24_Civ_01","RDS_Gaz24_Civ_02","RDS_Golf4_Civ_01","RDS_S1203_Civ_01","RDS_Octavia_Civ_01", "RDS_Lada_Civ_01", "RDS_Lada_Civ_04", "RDS_Lada_Civ_03", "RDS_Lada_Civ_02"];
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