if (isServer) then {
	nul = [] execVM "RydHQInit.sqf";
	RydHQ_Personality = "GENIUS";
	RydHQ_ArtyShells = 1;
	RydART_Safe = 1;
	RydART_Acc = 2.5;
	RHQ_Art = [];
	//RydHQ_Howitzer = ["rhsgref_cdf_b_reg_d30"];
	//RHQ_SPMortars = ["rhsusf_m109_usarmy"];
	RHQ_Mortars = ["LOP_PESH_Static_M252","LOP_AA_BM21","rhsusf_m109_usarmy","rhsgref_cdf_b_reg_d30"];
	//RHQ_RocketArty = ["LOP_AA_BM21"];
	
};