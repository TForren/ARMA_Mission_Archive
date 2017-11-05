_eastCasualty = "VMF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_eastCasualty >= 60) exitWith 
	{
	"The VMF were unable to accomplish their goal as quickly as they needed to and the RACS will surely be swarming the area soon enough.<br/>With heavy casualties on the VMF, the RACS claim full victory.<br/><br/>RACS VICTORY<br/>" call FNC_EndMission;
	};
	if (_eastCasualty < 60) exitWith 
	{
	"The VMF were unable to accomplish their goal as quickly as they needed to and the RACS will surely be swarming the area soon enough.<br/><br/>RACS VICTORY<br/>" call FNC_EndMission;
	};

}; // End time limit

	
if (_eastCasualty >= 77) exitWith {//TOOO many casualties. End mission meow.
"The VMF have suffered too many casualties and are no longer combat effective. <br/><br/>RACS VICTORY<br/>" call FNC_EndMission;
};

//artillery destroyed, reinforcements were called, reinforcements have already arrived
if (!alive d1 && !alive d2 && !alive d3 && TriggerActivated(reinforce) && (count (list reinforced) < 5)) exitWIth {
		"The VMF were unable to accomplish their goal as quickly as they needed to and the RACS will surely be swarming the area soon enough.<br/><br/>RACS VICTORY<br/>" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds