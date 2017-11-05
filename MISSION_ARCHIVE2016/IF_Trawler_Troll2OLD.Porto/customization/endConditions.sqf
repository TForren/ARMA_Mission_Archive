_westCasualty = "PMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Pirates" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

_hostagekilled = (!alive hostage);
_hostagerescued = ( (hostage distance pad) < 700 );
_hostagecaptured = ( (hostage distance hole) < 10 );

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

		"To an unfortunate end, the escaped hostage has gone without rescue or recapture for some time..<br/>Thus, both sides shall assume the hostage has either died of starvation, drowned, or was mauled by Somalian island bears.<br/><br/>STALEMATE<br/>" call FNC_EndMission;

}; // End time limit


if (_hostagekilled) exitWith 
{
	"The hostage has been killed!.<br/>Neither the PMC or the Somalian Pirates have won the day.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
};
	
if (_westCasualty >= 95) exitWith {//TOOO many casualties. End mission meow.

	if (_allSupplied) exitWith  
	{
		"The PMC Forces have suffered too many casualties and cannot continue the operation.<br/>The Somalian Pirates will surely find the hostage in time.<br/><br/>Somalian Pirate VICTORY<br/>" call FNC_EndMission;
	};
};

if (_eastCasualty >= 95) exitWith {//TOOO many casualties. End mission meow.

	if (_allSupplied) exitWith  
	{
		"The Pirates have lost too many fighters and cannot continue the search for the hostage.<br/>With the PMC Forces still in the area, it is only a matter of time until the hostage is rescued.<br/><br/>PMC VICTORY<br/>" call FNC_EndMission;
	};
};

if (_hostagerescued) exitWith { //BLUFOR extracted,

	"The hostage has been evacuated from the island and in the hands of the PMC Forces.<br/><br/>PMC VICTORY<br/>" call FNC_EndMission;
};

if (_hostagecaptured) exitWith { //BLUFOR extracted,

	"The hostage has been recaptured by the pirates.<br/><br/>Somalian Pirate VICTORY<br/>" call FNC_EndMission;
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds