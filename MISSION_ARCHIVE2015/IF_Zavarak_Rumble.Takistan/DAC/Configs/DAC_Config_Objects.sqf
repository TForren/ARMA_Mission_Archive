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
							["Land_House_L_4_EP1",1,0,0,0,0,""],
							["Land_House_K_3_EP1",1,0,0,0,0,""],
							["Land_House_K_1_EP1",1,0,0,0,0,""],
							["Land_House_K_6_EP1",1,0,0,0,0,""],
							["Land_House_K_7_EP1",1,0,0,0,0,""],
							["Land_House_K_8_EP1",2,0,0,0,0,""]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 2:
	{
		_Object_Pool =	[
							[15,1],
							["Land_GarbageContainer_open_F",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_GarbageContainer_closed_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_GarbageWashingMachine_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_GarbageBags_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Mound01_8m_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Sacks_heap_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Pipes_large_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_ConcretePipe_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Garbage_square3_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Garbage_square5_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_MarketShelter_F",0.5,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_WoodenCart_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_CratesWooden_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Ancient_Wall_4m_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Ancient_Wall_8m_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_Pole",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4_2",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Garbage_line_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Coil_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["RDS_Gaz24_Civ_02",1,0,0,0,0,"",[0,"ColorBlue"]],
							["RDS_Golf4_Civ_01",1,0,0,0,0,"",[0,"ColorBlue"]],
							["UralWreck",1,0,0,0,0,""],
							["datsun01Wreck",1,0,0,0,0,""],
							["hiluxWreck",1,0,0,0,0,""],
							["Land_Coil_F",1,0,0,0,0,""],
							["Land_ConcretePipe_F",1,0,0,0,0,""],
							["LADAWreck",1,0,0,0,0,""],
							["SKODAWreck",1,0,0,0,0,""],
							["UAZWreck",1,0,0,0,0,""],
							["BRDMWreck",1,0,0,0,0,""],
							["datsun02Wreck",1,0,0,0,0,""],
							["Land_JunkPile_F",1,0,0,0,0,""],
							["Land_GarbageWashingMachine_F",1,0,0,0,0,""],
							["Land_WoodenBox_F",1,0,0,0,0,""],
							["Land_Tyres_F",1,0,0,0,0,""],
							["Land_GarbagePallet_F",1,0,0,0,0,""],
							["Land_GarbageBags_F",1,0,0,0,0,""],
							["Land_JunkPile_F",1,0,0,0,0,""],
							["MetalBarrel_burning_F",0.1,0,0,0,0,""],
							["RDS_Gaz24_Civ_03",1,0,0,0,0,"",[0,"ColorBlue"]]
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