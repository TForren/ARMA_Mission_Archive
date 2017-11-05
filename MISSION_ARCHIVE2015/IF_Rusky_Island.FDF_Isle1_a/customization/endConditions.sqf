_westCasualty = "USA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "VDV" call FNC_CasualtyPercentage; 


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	if (({(side _x) == east} count allUnits) < 25 ) then {
		"With no remaining time left for the operation to contine, the BLUFOR have been forced to retreat. However, the VDV have suffered heavy casualties and may not be able to defend from another attack.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
	}
	else {
		"With no remaining time left for the operation to contine, the BLUFOR have been forced to retreat. With enough VDV still standing, they may still defend from another attack.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};
};


if (_westCasualty >= 80) exitWith {
	
	if (({(side _x) == east} count allUnits) < 25 ) then {
		"the BLUFOR have suffered too many casualties and have been forced to retreat. However, the VDV have suffered a un-ignorable amount as well.<br/><br/>PARTIAL OPFOR VICTORY<br/>" call FNC_EndMission;
	}
	else {
		"the BLUFOR have suffered too many casualties and have been forced to retreat.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};
};


if ((({(side _x) == east} count allUnits) < 10 ) && (time > 120)) then {
   	"the VDV forces occupying the airfield have been devastated. Remaining VDV personnel have surrendered or are MIA.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};


sleep (10); //This determines how frequently the end conditions should be checked in seconds