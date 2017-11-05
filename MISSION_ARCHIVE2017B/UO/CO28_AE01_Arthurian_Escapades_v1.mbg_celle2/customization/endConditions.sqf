_westCasualty = "CTRG" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_resistanceCasualty = "Militia" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"
_resistanceCount = [resistance,200,gamelogic1] call FNC_AreaCount;

if (_westCasualty >= 80) exitWith {
	
	"Militia DECISIVE VICTORY<br />CTRG has retreated due to casualties." call FNC_EndMission;
	
};

if (_resistanceCasualty >= 80 && _resistanceCount == 0) exitWith {
	
	"CTRG DECISIVE VICTORY<br />No Militia Remaining inside the town of Celle." call FNC_EndMission;
	
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds