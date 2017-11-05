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
/*


*/

	{
		_Object_Pool =	[
							[5,1],
							["Land_GarbageContainer_open_F",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural4",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_Misc_Rubble_EP1",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural6",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural5",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_Ind_TankSmall",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural3",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_Ind_TankSmall2_EP1",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural2",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural7",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural9",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural8",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_mural10",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_trash",1,0,0,0,0,"",[1,"ColorBlue"]],
							["Land_trash2",1,0,0,0,0,"",[1,"ColorBlue"]],
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
		/*

		*/
		_Object_Pool =	[
							[5,1],
							["Land_mis_fix_block8",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_block8_b",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_mis_fix_block9_b",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_mis_fix_block9",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["mbg_apartments_big_01_EO",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["mbg_apartments_big_02_EO",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["mbg_apartments_big_02b_EO",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_mis_fix_Villa",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_21str_c",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_21str_b",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_21str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_23str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_22str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_21str_d",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_9str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_10str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_14str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_7str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_villa_b",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_villa2",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_block7_b",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_18str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_meh_sak",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_mis_fix_block10",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_15str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_16str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_17str",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_17strb",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_block",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_block7",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_block2",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_villa3",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_7str_raz",0.5,1,0,0,1,"",[0,"ColorGreen"]],
							["Land_block8_c",0.5,1,0,0,1,"",[0,"ColorGreen"]]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 5:
	{
		/*

		*/
		_Object_Pool =	[
							[5,1],
							["Land_hut5",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut5",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut5_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut5_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut6",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut6",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut7",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut7",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut7_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut9NB_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut9NB_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut9",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut9_b",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut9_c",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut1",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut10",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut10NB_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut10_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut12",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut12_raz",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut1_2",0.8,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_mosque3",0.2,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut3_2",0.5,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_minaret2",0.00001,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_minaret3",0.00001,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_shrine",0.4,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_obelisk",0.4,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_hut3_b_raz",0.5,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_container2",0.2,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_container",0.2,1,0,0,1,"",[0,"ColorBlue"]],
							["Land_container3",0.2,1,0,0,1,"",[0,"ColorBlue"]]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 6: //plants
	{
		/*


		*/
		_Object_Pool =	[
							[5,1],
							["01_bushes_01_b_amygdalusn1s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["01_bushes_01_b_pinusm1s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["01_bushes_01_b_pistacial1s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_r_stone_01_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_r_stone_02_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_r_tk_stone_01_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_r_tk_stone_02_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_t_prunuss2s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_t_pistacial2s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_t_juniperusc2s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_t_ficusb2s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["CUP_A2_t_amygdalusc2s_ep1",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["Land_ker_pichlavej",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["Land_jerabina",0.6,0,0,0,1,"",[0,"ColorYellow"]],
							["Land_jablon",0.6,0,0,0,1,"",[0,"ColorYellow"]]
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