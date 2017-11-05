//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Arti       //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_ArtiSide","_ArtiTyp","_array","_ArtiSets","_set0","_set1",
			"_set2","_set3","_set4","_set5","_set6","_set7","_set8","_set9","_set10","_s"
		];

			_ArtiTyp = _this select 0;_array = [];_s = 0;_set10 = 0;
			_set0 = [];_set1 = [];_set2 = [];_set3 = [];_set4 = [];_set5 = [];_set6 = [];_set7 = [];_set8 = [];_set9 = [];


if(_ArtiTyp == 0) exitwith {};

switch (_ArtiTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 1:
	{		//""
		_set0  = [20,2,0,60];
		_set1  = [2,0.1,10,[],3,30];
		_set2  = [75,200,50,500,4,3,1]; //HelicopterExploBig M_Scalpel_AT
		_set3  = [["RDS_2b14_82mm_RHS_MSV",["HelicopterExploBig"]],["LOP_UA_BM21",["HelicopterExploBig"]]];
		_set4  = [10,20,1];
		_set5  = [10,80,1];
		_set6  = [10,80,1];
		_set7  = [0.1,0.5,0];
		_set8  = [];
		_set9  = [];
		_set10 = 15000;
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 2:
	{
		_set0  = [20,2,0,60];
		_set1  = [2,0.1,10,[],3,30];
		_set2  = [75,200,50,500,4,1,1]; //RHS_mag_40Rnd_122mm_rockets
		_set3  = [["RDS_2b14_82mm_RHS_MSV",["M_PG_AT"]],["LOP_UA_BM21",["M_Mo_120mm_AT"]]];
		_set4  = [10,20,1];
		_set5  = [10,80,1];
		_set6  = [10,80,1];
		_set7  = [0.1,0.5,0];
		_set8  = [];
		_set9  = [];
		_set10 = 15000;
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 3:
	{
		_set0  = [0,0,0,0];
		_set1  = [0,0,0,[],1,5];
		_set2  = [100,0,0,500,4,1,1];
		_set3  = [["B_Mortar_01_F",["M_Mo_82mm_AT_LG"]],["B_MBT_01_arty_F",["R_60mm_HE"]]];
		_set4  = [2,5,0];
		_set5  = [5,10,1];
		_set6  = [5,10,1];
		_set7  = [0.1,1,1];
		_set8  = [];
		_set9  = [];
		_set10 = 1500;
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

_array = [_set0,_set1,_set2,_set3,_set4,_set5,_set6,_set7,_set8,_set9,_set10];
_array