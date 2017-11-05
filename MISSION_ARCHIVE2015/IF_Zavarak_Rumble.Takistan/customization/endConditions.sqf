_westCasualty = "US Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Sand People" call FNC_CasualtyPercentage; //Gets the casualty percentgevcsdv

_helos = [baron1,baron2,dagger1,dagger2];
_wreckDestroyed = (!alive apachebarrel);
_pilot1Extracted = ( (vehicle dp1) in _helos && (dp1 distance (getmarkerpos "zavarak") > 400)) || (dp1 distance (getmarkerpos "hq") < 400);
_pilot2Extracted = (  (vehicle dp2) in _helos &&  dp2 distance (getmarkerpos "zavarak") > 400) || (dp2 distance (getmarkerpos "hq") < 400);
_bothPilotsExtracted = (_pilot1Extracted && _pilot2Extracted);
_bothPilotsAlive = (alive dp1 && alive dp2);

_onePilotAlive = ( (!alive dp1 || isNil{dp1}) && alive dp2) || (alive dp1 && (!alive dp2 || isNil{dp2}));
_onePilotExtracted = (_pilot1Extracted || _pilot2Extracted);

_bluforExtracted = (triggerActivated bluforExtracted);

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_wreckDestroyed) exitWith  //apache wreck destroyed
	{
		if (_bothPilotsExtracted) exitWith //both pilots extracted 
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>Both downed pilots have been extracted and the apache wreck has been destroyed.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _onePilotAlive) exitWith //One pilot extracted, one dead
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>One pilot was successfully rescued while the other met an unfortunate end.<br/>The apache wreck has been destroyed.<br/><br/>PARTIAL BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot extracted, one left somewhere
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>One pilot was successfully rescued while the other is still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has been destroyed.<br/><br/>PARTIAL BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot dead, one left somewhere
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>One pilot still is still stranded while the other has met an unfortunate end.<br/>The apache wreck has not been destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if ((!alive dp1 || isNil{dp1}) && (!alive dp2 || isNil{dp2})) exitWith //both pilots dead
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>Both pilots met an unfortunate end.<br/>The apache wreck has been destroyed.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (alive dp1 && alive dp2) exitWith //both pilots left alive
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>Both pilots are still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has been destroyed.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
	};
	if !(_wreckDestroyed) exitWith  //apache wreck WAS NOT DESTROYED
	{
		if (_bothPilotsExtracted) exitWith //both pilots extracted
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>Both downed pilots have been extracted and the apache wreck was not destroyed.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _onePilotAlive) exitWith //One pilot extracted, one dead
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>One pilot was successfully rescued while the other met an unfortunate end.<br/>The apache wreck was not destroyed.<br/><br/>VERY MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot extracted, one left somewhere
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>One pilot was successfully rescued while the other is still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has not been destroyed.<br/><br/>VERY MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot dead, one left somewhere
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>One pilot still is still stranded while the other has met an unfortunate end.<br/>The apache wreck has not been destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if ( (!alive dp1 || isNil{dp1}) && (!alive dp2 || isNil{dp2}) ) exitWith //both pilots dead
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>Both pilots met an unfortunate end.<br/>The apache wreck has not been destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (alive dp1 && alive dp2) exitWith //both pilots left alive
		{
		"With no time remaining for the operation to continue, the remaining Blufor have been forced to extract.<br/>Both pilots are still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has not been destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};
	};

}; // End time limit

	
if (_westCasualty >= 80) exitWith {//TOOO many casualties. End mission meow.

	if (_wreckDestroyed) exitWith  //apache wreck destroyed
	{
		if (_bothPilotsExtracted) exitWith //both pilots extracted 
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Both downed pilots have been extracted and the apache wreck has been destroyed.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _onePilotAlive) exitWith //One pilot extracted, one dead
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>One pilot was successfully rescued while the other met an unfortunate end.<br/>The apache wreck has been destroyed.<br/><br/>VERY MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot extracted, one left somewhere
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>One pilot was successfully rescued while the other is still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has been destroyed.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot dead, one left somewhere
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>One pilot still is still stranded while the other has met an unfortunate end.<br/>The apache wreck has not been destroyed.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if ((!alive dp1 || isNil{dp1}) && (!alive dp2 || isNil{dp2})) exitWith //both pilots dead
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Both pilots met an unfortunate end.<br/>The apache wreck has been destroyed.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (alive dp1 && alive dp2) exitWith //both pilots left alive
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Both pilots are still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has been destroyed.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
		};
	};
	if !(_wreckDestroyed) exitWith  //apache wreck WAS NOT DESTROYED
	{
		if (_bothPilotsExtracted) exitWith //both pilots extracted 
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Both downed pilots have been extracted and the apache wreck has not been destroyed.<br/><br/>MINOR BLUFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _onePilotAlive) exitWith //One pilot extracted, one dead
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>One pilot was successfully rescued while the other met an unfortunate end.<br/>The apache wreck has not been destroyed.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot extracted, one left somewhere
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>One pilot was successfully rescued while the other is still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has not been destroyed.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (_onePilotExtracted && _bothPilotsAlive) exitWith //One pilot dead, one left somewhere
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>One pilot still is still stranded while the other has met an unfortunate end.<br/>The apache wreck has not not been destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if ((!alive dp1 || isNil{dp1}) && (!alive dp2 || isNil{dp2})) exitWith //both pilots dead
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Both pilots met an unfortunate end.<br/>The apache wreck has not been destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};
		if (alive dp1 && alive dp2) exitWith //both pilots left alive
		{
		"The BLUFOR have suffered too many casualties and cannot continue the operation.<br/>Both pilots are still somewhere in Zavarak with a fate unknown.<br/>The apache wreck has not been destroyed.<br/><br/>OPFOR VICTORY<br/>" call FNC_EndMission;
		};
	};

};

if (_bluforExtracted && _wreckDestroyed && (time > 60)) exitWith { //No blufor left in AO (pilots either extracted or dead) and apache wreck is destroyed (and operation didn't just start to cover case of apache wreck bugging out and blowing up right away)

	if (_bothPilotsExtracted) exitWith //both pilots extracted 
	{
	"The BLUFOR have extracted from the AO with the apache wreck destroyed.<br/>Both downed pilots have been extracted.<br/><br/>BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if (_onePilotExtracted && _onePilotAlive) exitWith //One pilot extracted, one dead
	{
	"The BLUFOR have extracted from the AO with the apache wreck destroyed.<br/>One pilot was successfully rescued while the other met an unfortunate end in Zavarak.<br/><br/>OVERALL BLUFOR VICTORY<br/>" call FNC_EndMission;
	};
	if ((!alive dp1 || isNil{dp1}) && (!alive dp2 || isNil{dp2})) exitWith //both pilots dead
	{
	"The BLUFOR have extracted from the AO with the apache wreck destroyed.<br/>However, either pilots were exctracted as both met an unfortunate end in Zavarak.<br/><br/>MINOR OPFOR VICTORY<br/>" call FNC_EndMission;
	};
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds