
_westCasualty = "Police" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"



if (!alive mayor) exitWith { //BLUFOR extracted,
	"The Mayor has been killed! Everyone loses. Now we will never know how many licks it takes to get to the tootsie roll center of a tootsie pop.<br/><br/>DECISIVE FAILURE<br/>" call FNC_EndMission;
};

if (ProtestQuelled) exitWith {
	"The Mayor has sucessfully quelled the protests with spectacular speech craft and the situation has returned to normal.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
};



//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	"The Mayor was unable to quell the protests in time before AK47s suddenly started to materialize within the angry mob<br/><br/>The situation has turned into a lethal revolt. <br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;


}; // End time limit

if (_westCasualty >= 100) exitWith {//TOOO many casualties. End mission meow.

	if ((mayor distance (getmarkerpos "protest")) > 500) exitWith  
	{
		"The Finnish Police have suffered too many casualties and cannot continue.<br/>Furthermore, the Mayor is too far away to get to the protests and without Police escort, he will inevitably be kidnapped by the insurgents.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
	};

};

if (_eastCasualty >= 100) exitWith {//TOOO many casualties. End mission meow.

	
	"The insurgents have lost too many fighters and cannot continue their mission..<br/>Through spectacular speech craft, the Mayor will soon quell the protests and all will return to peace.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;

};


sleep (30); //This determines how frequently the end conditions should be checked in seconds