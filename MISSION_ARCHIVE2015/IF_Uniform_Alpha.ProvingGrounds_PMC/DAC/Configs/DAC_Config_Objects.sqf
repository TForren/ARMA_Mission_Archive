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
							["T72Wreck",2,0,0,0,0,""]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 2:
	{
		_Object_Pool =	[
							[15,1],
							["Land_Wall_IndCnc_4_F",3,40,0,0,0,"",[1,"ColorBlack"]],
							["Land_Wall_Tin_Pole",0.7,40,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_Pole_F",0.5,40,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_4_D_F",1,40,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_End_2_F",1,40,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4_2",1,40,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4",1,40,0,0,0,"",[0,"ColorBlue"]]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 3:
	{
		_Object_Pool =	[
							[15,1],
							["Land_Wall_IndCnc_4_F",3,30,0,0,0,"",[1,"ColorBlack"]],
							["Land_Wall_Tin_Pole",1,30,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_Pole_F",1,30,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_4_D_F",1,30,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_IndCnc_End_2_F",1,30,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4_2",1,30,0,0,0,"",[0,"ColorBlue"]],
							["Land_Wall_Tin_4",1,30,0,0,0,"",[0,"ColorBlue"]]
						];
	};
//-------------------------------------------------------------------------------------------------
	case 4:
	{
		_Object_Pool =	[
							[15,1],
							["ATMine",1,0,0.1,0,0,"",[0,"ColorGreen"]],
							["ATMine",1,0,0.1,0,0,"",[0,"ColorGreen"]]
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