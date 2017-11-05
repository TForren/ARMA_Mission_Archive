_westCasualty = "US Army" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"


_civsAlive = {side _x == independent} count allunits;
_opforCount = {side _x == east} count allunits;


_finalMessage = " ";

if ( (_opforCount < 20) && (time > 300)) exitWith { //Blufor extracted

	_finalMessage = "The Islamic extremists in the are have been reduced to a combat ineffective force.<br/>" + str _civsAlive + " Tal Kadam civilians out of 20 have survived";
	
	if (_civsAlive < 8) then {
		_finalMessage = _finalMessage + "<br/><br/>MISSION FAILURE<br/>";
	}
	else{
		if (_civsAlive < 10) then {
			_finalMessage = _finalMessage + "<br/><br/>MINOR MISSION SUCCESS<br/>";
		}
		else {
			_finalMessage = _finalMessage + "<br/><br/>MISSION SUCCESSFUL<br/>";
		};
	};

	_finalMessage call FNC_EndMission;
	
};


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	_finalMessage = "With no time remaining for the operation to continue, the US Army have been forced to extract.<br/>"+ str _civsAlive + " Tal Kadam civilians out of 20 have survived";
	
	if (_civsAlive < 8) then {
		_finalMessage = _finalMessage + "<br/><br/>MISSION FAILURE<br/>";
	}
	else{
		if (_civsAlive < 10) then {
			_finalMessage = _finalMessage + "<br/><br/>MINOR MISSION SUCCESS<br/>";
		}
		else {
			_finalMessage = _finalMessage + "<br/><br/>MISSION SUCCESSFUL<br/>";
		};
	};
	
	_finalMessage call FNC_EndMission;


}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	"The US Army have suffered too many casualties to continue the operation.<br/>" + str _civsAlive + " Tal Kadam civilians out of 20 currently stand but this number will only fall with no aid.<br/><br/>MISSION FAILURE<br/>" call FNC_EndMission;

};
	
if (_civsAlive < 4) exitWith {//TOOO many casualties. End mission meow.

	"With " + str _civsAlive + " Tal Kadam civilians out of 20 still standing, the Tal Kadam populace has been wiped out.<br/><br/>MISSION FAILURE<br/>" call FNC_EndMission;

};



sleep (60); //This determines how frequently the end conditions should be checked in seconds