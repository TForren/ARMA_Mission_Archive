_westCasualty = "British Armed Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

officersAlive = {typeof _x == "CUP_O_INS_Story_Bardak"} count allunits;


if ((officersAlive == 1) && !reinforcementsCalled) then { //consolidate enemies
	reinforcementsCalled = true;
	publicVariable "reinforcementsCalled";
	_bluloc = [[west,false]] call HZ_fnc_avgUnitLoc;
	[ei2,_bluloc,[400,400,0],0,0,4] call DAC_fChangeZone;
	[reinforce] call DAC_Activate;
	[wpz1,_bluloc,[],0,0,0] call DAC_fChangeZone;
};

if ( (officersAlive == 0) && (time > 200)) exitWith { //Blufor extracted, cache destroyed

	if (_westCasualty >= 60) exitWith 
	{
	"With all the ChDKZ officers hiding in the forest eliminated, the mission was successful. Unfortunately, the BAF have suffered heavy casualties to complete this task.<br/><br/>PARTIAL BAF VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With all the ChDKZ officers hiding in the forest eliminated, the mission was successful.<br/><br/>DECISIVE BAF VICTORY<br/>" call FNC_EndMission;
	};
};


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty >= 60) exitWith 
	{
	"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>The BAF have suffered heavy casualties and there are "+ str officersAlive + "x ChDKZ officers still hidden in the forest.<br/><br/>ChDKZ VICTORY<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>The BAF have not suffered heavy casualties but there are "+ str officersAlive + "x ChDKZ officers still hidden in the forest.<br/><br/>ChDKZ VICTORY<br/>" call FNC_EndMission;
	};


}; // End time limit

	
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	"The BAF have suffered too many casualties and cannot continue the operation.<br/>There are "+ str officersAlive + "x ChDKZ officers still hidden in the forest.<br/><br/>ChDKZ VICTORY<br/>" call FNC_EndMission;
};



sleep (60); //This determines how frequently the end conditions should be checked in seconds