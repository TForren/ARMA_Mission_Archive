//DEBUG
RydHQ_Debug = true;
RydHQ_DebugII = true;
RydHQ_ChatDebug = true;
RydHQ_HQChat = true;
RydHQ_GroupMarks = [west,east,resistance,civilian];
//RydHQ_RHQCheck = true; //report classnames of combat units on map
RydHQ_DbgMon = false; //report morale and losses

RydHQ_Wait = 2; //time to wait until init. shared by all leaders
RydHQ_Fast = false; //true: leader will not wait for new cycle. can clog computation.
RydHQ_CommDelay = 1; //multiplier of delay between cycles. default 1

//RHQ_Art = ["rhs_bm21_msv_01","rhs_d30_msv"];

/*[[[list of arty pieces classnames (lowercase)],[list of magazines for these classes in order: primary (HE), rare (WP, Cluster…),secondary (used instead of HE – guided, laser…),smoke, illum]], …];
Same magazine class my by used for primary, rare and secondary ammunition. If some category isn’t or shouldn’t be used use "" (empty string) instead of classname.*/
	
RydHQ_Add_OtherArty = [
	[["rhs_d30_msv"],["rhs_mag_3of56_10","rhs_mag_3of69m_2","rhs_mag_3vo18_10","rhs_mag_d462_2","rhs_mag_s463_2"]],
	[["rhs_bm21_msv_01"],["rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","",""]]
];

