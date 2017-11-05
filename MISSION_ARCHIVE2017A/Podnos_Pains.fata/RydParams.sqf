//DEBUG
RydHQ_Debug = true;
RydHQ_DebugII = true;
RydHQ_ChatDebug = true;
RydHQ_HQChat = true;
RydHQ_GroupMarks = [west,east,resistance,civilian];
//RydHQ_RHQCheck = true; //report classnames of combat units on map


RydHQ_NoRec = 10000;
RydHQ_RapidCapt = 500;

RydHQ_Wait = 1;
//RydHQ_ArtyShells = 1;
RydART_Safe = 100;
RydART_Acc = 2;

RydHQ_SubAll = true;
RydHQ_IdleOrd = false;
RydHQ_fast = false;
RydHQ_CargoFind = 1;
RydHQ_CaptLimit = 3;
RydHQ_ObjHoldTime = 60;
RydHQ_UnlimitedCapt = true;

RydHQ_DefFrontL = ["E",""]; //defend fronts for when leaders are in DEFEND mode
RydHQ_DefFront1 = ["N","E"];
RydHQ_DefFront2 = ["S","E"];
RydHQ_DefFront3 = ["E",""];
RydHQ_DefFront4 = ["S",""];

RydHQ_GarrR = 1000;
RydHQ_Order = "DEFEND";
RydHQ_DefendObjectives = 6;

//RHQ_Art = ["rhs_bm21_msv_01","rhs_d30_msv"];

/*[[[list of arty pieces classnames (lowercase)],[list of magazines for these classes in order: primary (HE), rare (WP, Cluster…),secondary (used instead of HE – guided, laser…),smoke, illum]], …];
Same magazine class my by used for primary, rare and secondary ammunition. If some category isn’t or shouldn’t be used use "" (empty string) instead of classname.*/
	
RydHQ_Add_OtherArty = [
	 [["rhs_2b14_82mm_msv"],["rhs_mag_3vo18_10","rhs_mag_3vo18_10","rhs_mag_3vo18_10","",""]],
	[["rhs_bm21_msv_01"],["rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","",""]]
];

RHQ_Inf = ["LOP_TKA_Infantry_TL","LOP_TKA_Infantry_SL","LOP_TKA_Infantry_Corpsman","LOP_TKA_Infantry_AT","LOP_TKA_Infantry_MG","LOP_TKA_Infantry_MG","LOP_TKA_Infantry_Rifleman","LOP_TKA_Infantry_Rifleman","LOP_TKA_Infantry_Marksman"];