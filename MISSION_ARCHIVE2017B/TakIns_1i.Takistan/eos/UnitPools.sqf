private["_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
_faction=(_this select 0);
_type=(_this select 1);
_tempArray=[];

if(_faction==0)then{//EAST - CSAT
_InfPool=["o_survivor_F"];	
_ArmPool=["O_G_Offroad_01_armed_F"];
_MotPool=["O_G_Offroad_01_F","O_G_Offroad_01_repair_F","O_G_Offroad_01_armed_F","O_G_Van_01_transport_F"];
_ACHPool=["O_Heli_Light_02_F"];
_CHPool=["O_Heli_Light_02_unarmed_F","O_Heli_Light_02_F"];
_uavPool=[];
_stPool=["O_Mortar_01_F","O_HMG_01_high_F","O_GMG_01_high_F","O_static_AT_F","O_static_AA_F"];
_shipPool=[];
_diverPool=[];
_crewPool=["o_survivor_F"];
_heliCrew=["o_survivor_F"];};

if(_faction==0)then{//EAST - CUP Weapons & CUP Vehicles
if(isClass(configFile>>"cfgPatches">>"CUP_TrackedVehicles_Core"))}then{
_InfPool=["o_survivor_F"];
_ArmPool=["CUP_I_T34_TK_GUE","CUP_I_T55_TK_GUE","CUP_I_BMP1_TK_GUE","CUP_I_BRDM2_TK_Gue","CUP_I_Datsun_PK_TK_Random","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_SPG9_TKA","CUP_I_Ural_ZU23_TK_Gue"];
_MotPool=["CUP_I_Datsun_PK_TK_Random","CUP_C_UAZ_Unarmed_TK_CIV","CUP_C_Datsun_4seat","CUP_C_Datsun_Plain","CUP_C_Ural_Open_Civ_03","CUP_C_Ural_Open_Civ_02","CUP_C_Ural_Open_Civ_01"];
_ACHPool=["CUP_O_Mi17_TK","CUP_O_Mi24_D_TK"];
_CHPool=["CUP_O_Mi17_TK","CUP_O_Mi24_D_TK"];
_uavPool=[];
_stPool=["CUP_O_2b14_82mm_TK_INS","CUP_O_DSHKM_TK_INS","CUP_O_DSHKM_MiniTriPod_TK_INS","CUP_O_AGS_TK_INS","CUP_O_SPG9_TK_INS","CUP_O_ZU23_TK_INS","CUP_O_D30_AT_TK_INS","CUP_O_D30_TK_INS"];
_shipPool=[];
_diverPool=[];
_crewPool=["o_survivor_F"];
_heliCrew=["o_survivor_F"];};

if(_faction==1)then{//WEST - NATO
_InfPool=["B_sniper_F","B_Soldier_A_F","B_Soldier_AA_F","B_Soldier_AAA_F","B_Soldier_AAR_F","B_Soldier_AAT_F","B_Soldier_AR_F","B_Soldier_AT_F","B_soldier_exp_F","B_Soldier_F","B_engineer_F","B_medic_F"];	
_ArmPool=["B_MBT_01_arty_F","B_MBT_01_cannon_F","B_MBT_01_mlrs_F","B_APC_Tracked_01_AA_F","B_APC_Tracked_01_CRV_F","B_APC_Tracked_01_rcws_F","B_APC_Wheeled_01_cannon_F","B_MBT_02_cannon_F"];
_MotPool=["B_Truck_01_covered_F","B_Truck_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","B_Truck_01_medical_F"];
_ACHPool=["B_Heli_Attack_01_F","B_Heli_Light_01_armed_F"];
_CHPool=["B_Heli_Light_01_F","B_Heli_Transport_01_camo_F","B_Heli_Transport_01_F"];
_uavPool=[];
_stPool=[];
_shipPool=[];
_diverPool=[];
_crewPool=["B_crew_F"];
_heliCrew=["B_helicrew_F","B_helipilot_F"];};

if(_faction==2)then{//INDEPENDENT - AAF
_InfPool=["I_Soldier_SL_F","I_Soldier_F","I_medic_F","I_Solder_AR_F","I_Soldier_GL_F","I_Soldier_LAT_F","I_Soldier_exp_F"];
_ArmPool=["O_LSV_02_armed_F","O_MRAP_02_hmg","O_MRAP_02_gmg","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_cannon_F"];
_MotPool=["O_MRAP_02_hmg","O_MRAP_02_gmg","O_LSV_02_armed_F","O_Truck_03_covered_F"];
_ACHPool=["O_Heli_Attack_02_F","O_Heli_Light_02_F"];
_CHPool=["O_Heli_Transport_04_covered_F","O_Heli_Attack_02_F","O_Heli_Light_02_F"];
_uavPool=[];
_stPool=["O_Mortar_01_F","O_HMG_01_high_F","O_GMG_01_high_F","O_static_AT_F","O_static_AA_F"];
_shipPool=[];
_diverPool=[];
_crewPool=["I_crew_F"];
_heliCrew=["I_pilot_F"];};

if(_faction==3)then{//CIVILIAN
_InfPool=["C_man_1"];
_ArmPool=["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
_MotPool=["C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Quadbike_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_01_box_F"];
_ACHPool=["C_Heli_Light_01_civil_F"];
_CHPool=["C_Heli_Light_01_civil_F"];
_uavPool=[];
_stPool=[];
_shipPool=[];
_diverPool=[];
_crewPool=["C_man_1"];
_heliCrew=["C_man_pilot_F"];};

if(_type==0)then{
for "_i" from 0 to 5 do{
_unit=_InfPool select(floor(random(count _InfPool)));
_tempArray set[count _tempArray,_unit];};};
if(_type==1)then{_tempArray=_diverPool};
//CREATE ARMOUR & CREW
if(_type==2)then{
_tempUnit=_ArmPool select(floor(random(count _ArmPool)));
_temparray set[count _temparray,_tempUnit];
_crew=_crewPool select(floor(random(count _crewPool)));
_temparray set[count _temparray,_crew];};

//CREATE ATTACK CHOPPER & CREW
if(_type==3)then{
_tempUnit=_ACHPool select(floor(random(count _ACHPool)));
_temparray set[count _temparray,_tempUnit];
_crew=_heliCrew select(floor(random(count _heliCrew)));
_temparray set[count _temparray,_crew];};

//CREATE TRANSPORT CHOPPER & CREW
if(_type==4)then{
_tempUnit=_CHPool select(floor(random(count _CHPool)));
_temparray set[count _temparray,_tempUnit];
_crew=_heliCrew select(floor(random(count _heliCrew)));
_temparray set[count _temparray,_crew];};

//CREATE STATIC & CREW
if(_type==5)then{
_tempUnit=_stPool select(floor(random(count _stPool)));
_temparray set[count _temparray,_tempUnit];
_crew=_crewPool select(floor(random(count _crewPool)));
_temparray set[count _temparray,_crew];};

if(_type==6)then{_tempArray=_uavPool select(floor(random(count _uavPool)));};

//CREATE TRANSPORT & CREW
if(_type==7)then{
_tempUnit=_MotPool select(floor(random(count _MotPool)));
_temparray set[count _temparray,_tempUnit];
_crew=_crewPool select(floor(random(count _crewPool)));
_temparray set[count _temparray,_crew];};

//CREATE BOAT & DIVER CREW
if(_type==8)then{
_tempUnit=_shipPool select(floor(random(count _shipPool)));
_temparray set[count _temparray,_tempUnit];
_crew=_diverPool select(floor(random(count _diverPool)));
_temparray set[count _temparray,_crew];};

//CREATE CARGO
if(_type==9)then{
for "_i" from 0 to 4 do{
_unit=_InfPool select(floor(random(count _InfPool)));
_temparray set[count _temparray,_unit];};
};

//CREATE DIVER CARGO
if(_type==10)then{
for "_i" from 0 to 4 do{
_unit=_diverPool select(floor(random(count _diverPool)));
_temparray set[count _temparray,_unit];};			
};
_tempArray