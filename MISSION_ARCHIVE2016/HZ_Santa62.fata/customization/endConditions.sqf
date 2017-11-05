_westCasualty = "US Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"


_alldestroyed = ((!alive cache1) && (!alive cache2) && (!alive cache3));

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	"The clock strikes midnight and there still remains ISIS hideouts that have not been properly visited.<br/>Santa is disappointed.<br/><br/>MISSION LOSS<br/>" call FNC_EndMission;

}; // End time limit



if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>There remains ISIS hideouts that have not yet been properly visited. Santa is dsappointed.<br/><br/>MISSION LOSS<br/>" call FNC_EndMission;
};

if (_alldestroyed) exitWith { //Blufor extracted, cache destroyed
	"All ISIS hideouts have been properly visited with the provided presents from Santa and just in time before the end of Christmas Eve.<br/><br/>MISSION VICTORY<br/>" call FNC_EndMission;
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds