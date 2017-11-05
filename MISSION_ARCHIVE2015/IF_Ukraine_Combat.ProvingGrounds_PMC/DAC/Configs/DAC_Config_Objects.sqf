//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Objects    //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Object_Pool"];

_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
	// use this config if you want to create positions only
	case 0:
	{
		_Object_Pool =	[
							[12,1],
							["LOGIC",1,0,0,0,0,""]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 1:
	{
		_Object_Pool =	[
							[15,1],
							["HMMWVWreck",1,0,0,0,0,""],
							["BMP2Wreck",1,0,0,0,0,""],
							["UralWreck",1,0,0,0,0,""],
							["datsun01Wreck",1,0,0,0,0,""],
							["hiluxWreck",2,0,0,0,0,""],
							["Land_Coil_F",2,0,0,0,0,""],
							["Land_ConcretePipe_F",2,0,0,0,0,""],
							["LADAWreck",2,0,0,0,0,""],
							["SKODAWreck",2,0,0,0,0,""],
							["UAZWreck",2,0,0,0,0,""],
							["BRDMWreck",2,0,0,0,0,""],
							["datsun02Wreck",2,0,0,0,0,""],
							["Land_JunkPile_F",2,0,0,0,0,""],
							["Land_GarbageWashingMachine_F",2,0,0,0,0,""],
							["Land_WoodenBox_F",2,0,0,0,0,""],
							["Land_Tyres_F",2,0,0,0,0,""],
							["Land_GarbagePallet_F",2,0,0,0,0,""],
							["Land_GarbageBags_F",2,0,0,0,0,""],
							["Land_JunkPile_F",2,0,0,0,0,""],
							["MetalBarrel_burning_F",2,0,0,0,0,""],
							["T72Wreck",2,0,0,0,0,""],
							["Land_Wall_IndCnc_4_F",3,0,0,0,0,"",[1,"ColorBlack"]],
							["Land_Wall_Tin_Pole",0.7,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_Pole_F",0.5,00,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_4_D_F",1,40,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_End_2_F",1,00,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4_2",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4",1,0,0,0,0,"",[0,"ColorBlue"]]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 2:
	{
		_Object_Pool =	[
							[15,1],
							["Land_ruin_rubble_PMC",1,0,0,0,1,""],
							["Land_ruin_corner_1_PMC",1,0,0,0,1,""],
							["Land_ruin_corner_2_PMC",1,0,0,0,1,""],
							["Land_ruin_walldoor_PMC",1,0,0,0,1,""],
							["Land_ruin_chimney_PMC",1,0,0,0,1,""],
							["Land_ruin_wall_PMC",1,0,0,0,1,""],
							["Land_hopper_old_PMC",1,0,0,0,1,""],
							["Land_ruin_01_PMC",1,0,0,0,1,""],
							["Land_HouseBlock_A1_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_A1_1_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_A3_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_B1_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_B2_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_B3_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_B4_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_B5_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_B6_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_C1_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_C2_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_C3_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_C4_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_C5_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_D1_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_D2_ruins",2,0,0,0,1,""],
							["Land_HouseBlock_B1_ruins",2,0,0,0,1,""],
							["Land_HouseV_1I3_ruins",1,0,0,0,1,""],
							["Land_a_stationhouse_ruins",2,0,0,0,1,""],
							["Land_Ind_Expedice_1_ruins",1,0,0,0,1,""]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 3:
	{
		_Object_Pool =	[
							[15,1],
							["DAC_b_FicusC2s_F",1,0,0,0,0,"",[0,"ColorGreen"]],
							["DAC_b_FicusC1s_F",1,0,0,0,0,"",[0,"ColorGreen"]]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 4:
	{
		_Object_Pool =	[
							[15,1],
							["DAC_t_PinusS2s_F",1,0,0.1,0,0,"",[0,"ColorGreen"]],
							["DAC_t_PinusS2s_b_F",1,0,0.1,0,0,"",[0,"ColorGreen"]],
							["DAC_t_PinusS1s_F",1,0,0.1,0,0,"",[0,"ColorGreen"]],
							["DAC_t_PinusP3s_F",1,0,0.1,0,0,"",[0,"ColorGreen"]]
						];
	};
//-------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Objects > No valid config number";
				};
				if(true) exitwith {};
			};
};

_TempArray = _Object_Pool;
_TempArray