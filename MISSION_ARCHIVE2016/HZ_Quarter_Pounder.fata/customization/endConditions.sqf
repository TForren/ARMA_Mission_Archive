sleep (60); //This determines how frequently the end conditions should be checked in seconds

_westCasualty = "BAF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Insurgent Uprising" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_finalMessage = " ";

if ( (_eastCasualty >= 85) && (time > 300)) exitWith { //Blufor extracted

	_finalMessage = "The insurgent uprising in the are have been reduced to a combat ineffective force.<br/><br/>MISSION SUCCESS";

	_finalMessage call FNC_EndMission;
	
};


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	_finalMessage = "With no time remaining for the operation to continue, the BAF have been forced to extract.<br/><br/>MISSION INCOMPLETE<br/>";
	
	_finalMessage call FNC_EndMission;


}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	"The BAF have suffered too many casualties to continue the operation.<br/>Chaos continues to spread throughout Tottah and all of FATA.<br/><br/>MISSION FAILURE<br/>" call FNC_EndMission;

};


