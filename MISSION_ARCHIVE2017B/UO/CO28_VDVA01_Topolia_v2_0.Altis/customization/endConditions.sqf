_eastCasualty = "VDV" call FNC_CasualtyPercentage;

//Loss Conditions
if (_eastCasualty >= 80) exitWith {
	"AAF VICTORY<br />The VDV advance has been stopped." call FNC_EndMission;
};

if (!BLUFOR_obj1Flag && REDFOR_obj1Flag) exitWith {
	"VDV VICTORY<br />The AAF forces in Topolia have been eliminated, and the hamlet is held by the VDV." call FNC_EndMission;
};

sleep (30);