_westCasualty = "US Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Militia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

_tankdestroyed = (!alive tank);
_tankescaped = ((tank distance (getmarkerpos "escape")) < 1000);


_BLUFORExtracted = (triggerActivated bluforExtracted);

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty >= 60) exitWith 
	{
	"With no time remaining for the mission, the insurgents have to pull back.<br/>However, BLUFOR have suffered heavy casualties.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With no time remaining for the mission, the insurgents have to pull back.<br/>Blufor have not suffered substantial .<br/><br/>PARTIAL OPFOR VICTORY<br/>" call FNC_EndMission;
	};

}; // End time limit

	
if (_westCasualty >= 80) exitWith {//TOOO many casualties. End mission meow.

	"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>The unfathomably expensive tank is likely doomed to destruction.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;

};

if (_eastCasualty >= 90) exitWith {//TOOO many casualties. End mission meow.

	if (_westCasualty >= 60) exitWith 
	{
	"The insurgent threat in the area has been wiped out.<br/>However, BLUFOR have suffered heavy casualties.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"The insurgent threat in the area has been wiped out.<br/><br/> BLUFOR VICTORY<br/>" call FNC_EndMission;
	};


};

if (_tankescaped) exitWith { //BLUFOR extracted,
"The BLUFOR have successfully made it out of the AO with the unfathomably expensive tank.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds