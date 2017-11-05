//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_CampTyp","_campBasic","_campAmmo","_campStatic","_campWall","_campObjInit",
			"_campUserObj","_campAddUnit","_campRandomObj","_Unit_Pool_C","_array"
		];

			_CampTyp = _this select 0;_array = [];

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0:
	{
		_campBasic     = ["Flag_CSAT_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_East_Wps_F",20,2,0],["Box_East_WpsSpecial_F",20,0,0],["Box_East_Ammo_F",20,-2,0],["Box_East_Support_F",20,-4,0]];
		_campStatic    = [["O_Mortar_01_F",-7,25,0,"O_Soldier_F"],["O_Mortar_01_F",25,25,0,"O_Soldier_F"],["O_Mortar_01_F",25,-20,180,"O_Soldier_F"],["O_Mortar_01_F",-7,-20,180,"O_Soldier_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1:
	{
		_campBasic     = ["Flag_NATO_F",["FirePlace_burning_f",15,10,0],["Land_BagBunker_Tower_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_NATO_Ammo_F",20,2,0],["Box_NATO_Wps_F",20,0,0],["Box_NATO_AmmoOrd_F",20,-2,0],["Box_NATO_WpsSpecial_F",20,-4,0]];
		_campStatic    = [["B_Mortar_01_F",-7,25,0,"B_Soldier_F"],["B_Mortar_01_F",25,25,0,"B_Soldier_F"],["B_Mortar_01_F",25,-20,180,"B_Soldier_F"],["B_Mortar_01_F",-7,-20,180,"B_Soldier_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//--------------------------------Insurgent camp-----------------------------------------------------------
	case 2:
	{

		_campBasic     = ["Land_JunkPile_F",["FirePlace_burning_f",15,10,0],["Land_MarketShelter_F",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["EODS_Insurgent_BOX",20,2,0],["SRCW_ammobox",20,0,0]];
		_campStatic    = [["RDS_DSHKM_UA_Pack_Lgnsk1_blk",-7,25,0,""]];
		_campAddUnit   = [];
		_campUserObj   = [["LOP_AFR_Landrover_M2",20,7,90],["LOP_AFR_Landrover",20,12,90],["Land_Slum_House01_F",7,10,0],["Land_GarbagePallet_F",17,5,0],["LOP_AFR_Landrover_M2",20,17,70]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};

//------------------------------------Radio Com station-----------------------------------------------------------
	case 3:
	{
		_campBasic     = ["Land_Antenna",["Land_Camping_Light_F",15,14,0],["PowGen_Big",10,0,90],["Logic",10,15,0],0];
		_campAmmo      = [["Box_East_Wps_F",20,2,0],["Box_East_WpsSpecial_F",20,0,0],["Box_East_Ammo_F",20,-2,0],["Box_East_Support_F",20,-4,0]];
		_campStatic    = [["RDS_DSHKM_UA_Pack_Lgnsk1_blk",-7,25,0,"O_Soldier_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["B_G_Offroad_01_armed_F",17,9,90],["CamoNet_OPFOR_open_F",10,0,0],["Land_PaperBox_open_full_F",17,5,0],["O_Truck_03_transport_F",24,8,70]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Camps > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array = [_campBasic,_campAmmo,_campStatic,_campAddUnit,_campUserObj,_campRandomObj,_campWall,_campObjInit];
_array
