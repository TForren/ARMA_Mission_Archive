
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


if (!alive racsbmp) exitWith {//TOOO many casualties. End mission meow.

	"The RACS BMP has been destroyed!<br/><br/>SLA VICTORY<br/>" call FNC_EndMission;
};

if (!alive slabmp) exitWith { //BLUFOR extracted,

	"The SLA BMP has been destroyed!<br/><br/>RACS VICTORY<br/>" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds