
_westCasualty = "Left" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Right" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty > _eastCasualty) exitWith {
		"After a grueling 30 minutes of cold combat, only one can claim victory...<br/><br/>EAST VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < _eastCasualty) exitWith {
		"After a grueling 30 minutes of cold combat, only one can claim victory...<br/><br/>WEST VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty == _eastCasualty) exitWith {
		"After a grueling 30 minutes of cold combat, no victor can be decided...<br/><br/>STALEMATE<br/>" call FNC_EndMission;
	};

}; // End time limit

if (_westCasualty >= 85) exitWith {//TOOO many casualties. End mission meow.

	"Threw pain and suffering, the EAST have won the day.<br/><br/>EAST VICTORY<br/>" call FNC_EndMission;
	
};

if (_eastCasualty >= 85) exitWith {//TOOO many casualties. End mission meow.

	
	"Threw pain and suffering, the WEST have won the day.<br/><br/>WEST VICTORY<br/>" call FNC_EndMission;

};


sleep 30; //This determines how frequently the end conditions should be checked in seconds