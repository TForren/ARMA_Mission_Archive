_westCasualty = "US Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_workshopDestroyed = (!alive workshopbarrel);
_gustavoDead = (!alive gus) || isNil{gus});
_bothApDead = (!alive ap1 || isNil{ap1}) && (!alive ap2 || isNil{ap2});



if (_workshopDestroyed && _gustavoDead)) exitWith { //objective complete
	if (_bothApDead) exitWith // both gustavo apprentice killed/non existant
	{
	"Gustavo's workshop has been destroyed and Gustavo himself has been eliminated. With both of Gustavo's pupils eliminated as well(or non-existant), All sources of these master crafted IEDS have been permenantly removed from Sahrani.<br/><br/>DECISIVE BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (!_bothApDead) exitWith // at least one apprentice still alive
	{
	"Gustavo's workshop has been destroyed and Gustavo himself has been eliminated. However, unbeknownst to the US Forces, at least one of Gustavo's most trusted apprentice lives and will soon return in Gustavo's place<br/>Until then, Gustavo's IED production has been halted.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	};

};

	//if both workshop destroyed and gustavo dead, then it shouldn't even make it here so we can assume only one or the other is true. never both.
if (_westCasualty >= 75) exitWith {//TOOO many casualties. End mission meow.

	if (_workshopDestroyed) exitWith
	{
		"The BLUFOR have suffered too many casualties to continue the operation. However, Gustavo's workshop has been destroyed causing a major set back in Gustavo's master crafted IED production.<br/>Unfortunately, it will only be a matter of time until Gustavo gets a new workshop up and running again.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_gustavoDead) exitWith
	{
		if (_bothApDead) exitWith { //both dead
		"The BLUFOR have suffered too many casualties to continue the operation. However, Gustavo has been eliminated and without any of Gustavo's former pupils, the workshop has been rendered useless as no common insurgent has the magical Gustavo touch to unlock the true potential of the master craftsman's workshop.<br/><br/>MINOR BLUFOR VICTORY due to heavy casualties<br/>" call FNC_EndMission;
		};	
		if !(_bothApDead) exitWith { //one lives
		"The BLUFOR have suffered too many casualties to continue the operation. However, Gustavo has been eliminated. Unfortunately for the BLUFOR, at least one of Gustavo's pupils still lives and will surely return with his own workshop.<br/>Until then, Gustavo's IED Production has been halted.<br/><br/>STALEMATE due to heavy casualties<br/>" call FNC_EndMission;
		};
	};

	if (!_workshopDestroyed && !_gustavoDead) exitWith {
		"The BLUFOR have suffered too many casualties to continue the operation. With both Gustavo's workshop still intact and Gustavo himself still alive, the BLUFOR were unable to even temporarily stop Gustavo's master crafted IED production and Gustavo will continue making mad bank off his IED sales.<br/><br/>GUSTAVO VICTORY<br/>" call FNC_EndMission;
	};
};

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_workshopDestroyed) exitWith
	{
		"With no time remaining for the operation to continue, the BLUFOR have been forced to extract from the AO. However, Gustavo's workshop has been destroyed causing a major set back in Gustavo's master crafted IED production.<br/>Unfortunately, it will only be a matter of time until Gustavo gets a new workshop up and running again.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_gustavoDead) exitWith
	{
		if (_bothApDead) exitWith { //both dead
		"With no time remaining for the operation to continue, the BLUFOR have been forced to extract from the AO. However, Gustavo has been eliminated and without any of Gustavo's former pupils, the workshop has been rendered useless as no common insurgent has the magical Gustavo touch to unlock the true potential of the master craftsman's workshop.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
		};	
		if !(_bothApDead) exitWith { //one lives
		"With no time remaining for the operation to continue, the BLUFOR have been forced to extract from the AO. However, Gustavo has been eliminated but at least one of Gustavo's pupils still lives and will surely return with his own workshop.<br/>Until then, Gustavo's IED Production has been halted.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
		};
	};

	if (!_workshopDestroyed && !_gustavoDead) exitWith {
		"With no time remaining for the operation to continue, the BLUFOR have been forced to extract from the AO. With both Gustavo's workshop still intact and Gustavo himself still alive, the BLUFOR were unable to even temporarily stop Gustavo's master crafted IED production and Gustavo will continue making mad bank off his IED sales.<br/><br/>GUSTAVO VICTORY<br/>" call FNC_EndMission;
	};

}; // End time limit




sleep (10); //This determines how frequently the end conditions should be checked in seconds