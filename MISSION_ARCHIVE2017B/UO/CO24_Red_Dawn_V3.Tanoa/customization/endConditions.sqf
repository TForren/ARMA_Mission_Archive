_westCasualty = "USSOF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "REBELS" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"

if (_westCasualty >= 60) exitWith {
	
	"REBELS DECISIVE VICTORY<br />US SOCOM have retreated due to casualties." call FNC_EndMission;
	
};

if( Hack ) exitWith {

     "US SOCOM DECISIVE VICTORY<br/>Radar station hacked" call FNC_EndMission;

};


if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"TIME LIMIT REACHED!" call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds