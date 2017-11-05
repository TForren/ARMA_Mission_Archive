_westCasualty = "BLUFOR" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Sand People" call FNC_CasualtyPercentage; //Gets the casualty percentgevcsdv


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"TIME LIMIT REACHED!" call FNC_EndMission;
	
};

if (!alive VIP) exitWith {
	
	if (_westCasualty >= 50) exitWith {
		"The VIP has been killed by Zargabad militia fighters and Blufor have suffered heavy casualties<br/><br/>OPFOR DECISIVE VICTORY<br/>" call FNC_EndMission;
	};
	
	if (_westCasualty < 50) exitWith {
		"The VIP has been killed by Zargabad milita fighters.<br/><br/>OPFOR VICOTRY<br/>" call FNC_EndMission;
	};
	
};


if ( ((VIP distance (getmarkerpos "VIP")) > 550) && (triggerActivated bluforExtracted) ) exitWith {

	if(_westCasualty > 50) exitWith
	{
		"The VIP has been extracted from the city Zargabad but BLUFOR have suffered heavy casualties.<br/><br/>BLUFOR PARTIAL VICTORY<br/>" call FNC_EndMission;
	};
	if((_westCasualty <= 50) && (_westCasualty > 0) ) exitWith
	{
		"The VIP has been extracted from the city of Zargabad with minor BLUFOR casualties<br/><br/>BLUFOR DECISIVE VICTORY<br/>" call FNC_EndMission;
	};	
	if(_westCasualty == 0 ) exitWith
	{
		"The VIP has been extracted from the city of Zargabad with Zero casualties<br/><br/>BLUFOR EXTREMELY DECISIVE VICTORY<br/>" call FNC_EndMission;
	};
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds