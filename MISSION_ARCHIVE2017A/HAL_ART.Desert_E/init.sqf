if (isServer) then {
	
	RydHQ_DEBUG = true;
	RydHQ_DEBUGII = true;
	RhdHQ_ChatDebug = true;
	
	RydHQ_Wait = 1;
	RydHQ_ArtyShells = 1;
	RydART_Safe = 1;
	RydART_Acc = 2;
	
	//includes
	RHQ_Art = ["rhs_D30_msv","rhs_D30_at_msv","rhs_2b14_82mm_msv","rhs_2s3_tv","RHS_BM21_MSV_01"];
	RHQ_SPMortars = ["rhs_2s3_tv","RHS_BM21_MSV_01"];
	RHQ_Mortars = ["rhs_D30_msv","rhs_D30_at_msv","rhs_2b14_82mm_msv"];
	RHQ_RocketArty = ["RHS_BM21_MSV_01"];

	//excludes
	RHQs_Cars = ["RHS_BM21_MSV_01"]; //rhs_bm21_msv_01
	RHQs_HArmor = ["rhs_2s3_tv"];
	
	/*[[[list of arty pieces classnames (lowercase)],[list of magazines for these classes in order: primary (HE), rare (WP, Cluster…),secondary (used instead of HE – guided, laser…),smoke, illum]], …];
Same magazine class my by used for primary, rare and secondary ammunition. If some category isn’t or shouldn’t be used use "" (empty string) instead of classname.*/

	RydHQ_Add_OtherArty = [
	    [["rhs_2b14_82mm_vdv"],["rhs_mag_3vo18_10","rhs_mag_3vo18_10","rhs_mag_3vo18_10","",""]],
	    [["rhs_bm21_msv_01"],["rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","",""]]
	];
    
	
	nul = [] execVM "RydHQInit.sqf";
	

};