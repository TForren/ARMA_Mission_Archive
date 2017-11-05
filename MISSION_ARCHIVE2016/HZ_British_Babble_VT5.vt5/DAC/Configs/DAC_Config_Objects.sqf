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
							["Land_Garbage_line_F",1,0,0,0,0,"",[0,"ColorBlue"]],
							["Land_Coil_F",1,0,0,0,0,"",[0,"ColorBlue"]],
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
							["MetalBarrel_burning_F",0.1,0,0,0,0,""]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 3: //cup proving ground destroyed trees and wrecks
	{
		_Object_Pool =	[
							[15,1],
							["CUP_A2_misc_fallenspruce",0.9,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_fallenspruce_1xtrunk_pmc",1,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_fallenspruce_pmc",0.9,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_fallentree1",1,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_t_willow2s_dead_pmc",0.9,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_trunk_torzo",0.9,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_fallentree2",1,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_t_stub_picea",1,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_fallentrunk_pmc",1,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_torzotree_pmc",1,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_stub2",0.5,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_stub1",0.5,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_misc_trunk_torzo_ep1",1,0,0,0,0,"",[0,"ColorGreen"]],
							
							["CUP_A2_skodovka_wrecked",0.8,0,0,0,0,"",[0,"ColorGreen"]],
							["UAZWreck",0.8,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_hiluxt",0.8,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_datsun01t",0.8,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_datsun02t",0.8,0,0,0,0,"",[0,"ColorGreen"]],			
							
							["CUP_A2_ruin_corner_1",0.7,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_ruin_corner_2",0.7,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_ruin_wall_pmc",0.7,0,0,0,0,"",[0,"ColorGreen"]],
							["CUP_A2_ruin_walldoor",0.7,0,0,0,0,"",[0,"ColorGreen"]]
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