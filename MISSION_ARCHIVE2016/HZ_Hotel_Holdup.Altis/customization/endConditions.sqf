_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty > _eastCasualty) exitWith 
	{
	"With no time remaining to eliminate Osema Ban-Layden, the Insurgents claim victory.<br/>On top of that, USMC have suffered more casualties than the Insurgents.<br/><br/>DECISIVE OPFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty <= _eastCasualty) exitWith 
	{
	"With no time remaining to eliminate Osema Ban-Layden, the Insurgents claim victory.<br/>However, the USMC did not suffer heavier casualties than the Insurgents.<br/><br/>CLOSE OPFOR VICTORY<br/>" call FNC_EndMission;
	};

}; // End time limit


if (_westCasualty >= 99) exitWith {//TOOO many casualties. End mission meow.

	"The USMC have suffered too many casualties and cannot continue the operation<br/>Osema Ban-Layden lives to continue his Ban-Laydening.<br/><br/>DECISIVE OPFOR VICTORY<br/>" call FNC_EndMission;
};

if (!alive hvt) exitWith { //BLUFOR extracted,

	"Osema Ban-Layden has been killed! <br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};


sleep (60); //This determines how frequently the end conditions should be checked in seconds