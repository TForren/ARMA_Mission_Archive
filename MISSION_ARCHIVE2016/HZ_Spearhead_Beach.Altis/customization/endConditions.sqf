_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_opforCount = 0;
{ 
	if (side _x == east) then {
		_opforCount = _opforCount + 1;
	};
} foreach allunits;

//Good ol time limit
if ( ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) || ( (_opforCount < 15) && time > 1800 ) ) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty >= 60) exitWith 
	{
		"The USMC have successfully secured a foothold and held off the MSV counter-attack.<br/>However, USMC have suffered heavy casualties.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
		"The USMC have successfully secured a foothold and held off the MSV counter-attack.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	};

}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	"The USMC have suffered too many casualties and cannot continue the operation.<br/><br/>MSV VICTORY<br/>" call FNC_EndMission;
};


sleep (60); //This determines how frequently the end conditions should be checked in seconds
