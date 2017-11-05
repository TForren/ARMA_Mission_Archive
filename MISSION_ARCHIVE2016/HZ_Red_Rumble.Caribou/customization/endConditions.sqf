_westCasualty = "RCA" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Spetsnaz" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty > 60) exitWith 
	{
	"The spetsnaz on the island have survived long enough for VDV rescue.<br/>On top of that, the Royal Caribou Army have suffered heavy casualties.<br/><br/>DECISIVE SPETSNAZ VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty <= 60) exitWith 
	{
	"The spetsnaz on the island have survived long enough for VDV rescue.<br/><br/>SPETSNAZ VICTORY<br/>" call FNC_EndMission;
	};

}; // End time limit

if (_westCasualty > 80) exitWith 
{
	"The Royal Caribou Army garrison on the island have been reduced to a combat ineffective force.<br/><br/>DECISIVE SPETSNAZ VICTORY<br/>" call FNC_EndMission;
};
if (_eastCasualty >= 100) exitWith 
{
	"The Royal Caribou Army have successfully eliminated the Spetsnaz on the island before possible VDV rescue.<br/><br/>ROYAL CARIBOU ARMY VICTORY<br/>" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds