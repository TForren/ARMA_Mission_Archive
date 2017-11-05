_westCasualty = "CDF" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "GUERILLA" call FNC_CasualtyPercentage; //Gets the casualty percentgevcsdv

_bothdestroyed = (!alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 0)) && (!alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 1));
_onedestroyed = (!alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 0)) && (alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 1)) || (alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 0)) && (!alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 1));
_neither = (alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 0)) && (alive (nearestObjects( [(getmarkerpos "area"), ["Land_MetalBarrel_F"], 1500]) select 1));

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	if (_neither) exitWith {
		if (_westCasualty >= 60) exitWith //almost NOTHING happened ....
		{
			"With no time remaining for the operation to continue, the remaining CDF in the AO will be extracted to the airfield. Unfortunately with no ChDKZ camps destroyed, the guerilla fighters will continue disrupting supply lines until another CDF operation can be launched.<br/><br/>ChDKZ VICTORY due to high CDF casualties<br/>" call FNC_EndMission;
		};
		if (_westCasualty < 60) exitWith //Players fail over a long period of time
		{
			"With no time remaining for the operation to continue, the CDF in the AO will be extracted to the airfield. Unfortunately with no ChDKZ camps destroyed, the guerilla fighters will continue disrupting supply lines until another CDF operation can be launched.<br/><br/>STALEMATE due to low casualties<br/>" call FNC_EndMission;
		};
	};
	if (_onedestroyed) exitWith { //got one camp. with..
	
		if (_westCasualty >= 60) exitWith //a lota death
		{
			"With no time remaining for the operation to continue, the CDF in the AO will be extracted to the airfield. With one ChDKZ camp destroyed, the guerilla forces will have to scramble to reoganize their forces.<br/> Unfortunately, the CDF have suffered too many casualties to consider the operation a full VICTORY.<br/><br/>PARTIAL CDF VICTORY due to high casualties<br/>" call FNC_EndMission;
		};
		if (_westCasualty < 60) exitWith //not a lota death
		{
			"With no time remaining for the operation to continue, the remaining CDF in the AO will be extracted to the airfield. With one ChDKZ camp destroyed, the guerilla forces will have to scramble to reoganize their forces.<br/><br/>CDF VICTORY due to low casualties<br/>" call FNC_EndMission;
		};
	};
	if (_bothdestroyed) exitWith { //got both! with...
		
		if (_westCasualty >= 60) exitWith  // a lota death
		{
			"With no time remaining for the operation to continue, the CDF in the AO will be extracted to the airfield. With both ChDKZ camps destroyed, the guerilla forces are forced to leave the area to regroup. Threat of further attacks against CDF Logistics have been elimninated. <br/>However, the CDF have suffered substantial casualties themselves.<br/><br/>NEAR-DECISIVE CDF VICTORY due to high casualties<br/>" call FNC_EndMission;
		};
		if (_westCasualty < 60) exitWith // not a lota death
		{
			"With no time remaining for the operation to continue, the remaining CDF in the AO will be extracted to the airfield. With both ChDKZ camp destroyed, the guerilla forces are forced to leave the area to regroup and reoganize. Threat of further attacks against CDF Logistics have been elimninated<br/><br/>CDF DECISIVE VICTORY due to low casualties<br/>" call FNC_EndMission;
		};
	};
};


if (_westCasualty >= 80) exitWith {//TOOO many casualties. End mission meow.

		if (_neither) exitWith { //and no camps destroyed. HARD FAIL
			"The CDF have suffered too many casualties to continue the operation. On top of that, the CDF were unable to locate and destroy at least one ChDKZ camp, leaving the guerillas free reign on CDF logistics trucks until another CDF operation can be launched.<br/><br/>DECISIVE ChDKZ VICTORY<br/>" call FNC_EndMission;
		};
		if (_onedestroyed) exitWith { //and one camp destroyed.
			"The CDF have suffered too many casualties to continue the operation. Fortunately, the CDF were able to locate and destroy one of the ChDKZ camps forcing the guerillas to reorganize their forces before any further attacks on CDF trucks can continue.<br/><br/>STALEMATE due to equal losses on both sides<br/>" call FNC_EndMission;
		};
		if (_bothdestroyed) exitWith { //both camps destroyed.
			"The CDF have suffered too many casualties to continue the operation. Fortunately, the CDF were able to locate and destroy both ChDKZ camps forcing the guerillas to leave the area to regroup and reorganize. Threat of further attacks on CDF trucks has been elimninated. <br/><br/>PARTIAL CDF VICTORY<br/>" call FNC_EndMission;
		};
};

//Holy fuck they did it. (but to what degree?)
if ( (_onedestroyed || _bothdestroyed) && (TriggerActivated bluforExtracted) ) exitWith {

		if (_onedestroyed) exitWith { //One destroyed with..
			if (_westCasualty >= 60) exitWith { // a lota death
				"The CDF have successfully located and destroyed one of the ChDKZ camps and have decided to extract with their remaining forces still intact. With only one camp left in the AO and less than half of the CDF still standing, <br/>Both sides must regroup and reorganize before anything further happens. War is hell.<br/><br/>STALEMATE due to equal losses on both sides<br/>" call FNC_EndMission;
			};
			if (_westCasualty < 60) exitWith //not a lota death
			{
				"The CDF have successfully located and destroyed one of the ChDKZ camps and have decided to extract while they are ahead. With only one camp left in the AO and plenty of CDF forces still standing, the CDF will surely destroy the second camp before the guerillas are able to fully regroup and launch further attacks on CDF trucks.<br/><br/>PARTIAL CDF VICTORY<br/>" call FNC_EndMission;
			};
		};
		if (_bothdestroyed) exitWith { //both destroyed with..
			if (_westCasualty >= 60) exitWith { // a lota death
				"The CDF have successfully located and destroyed both of the ChDKZ camps and have extracted with their remaining forces still intact. With both camps destroyed but less than half of the CDF still standing, the remaining ChDKZ must leave the area and forfeit the ability to continue attacks on CDF trucks. <br/> Such trucks will be needed to reinforce the CDF.<br/><br/>PARTIAL CDF VICTORY due to casualtes<br/>" call FNC_EndMission;
			};
			if (_westCasualty < 60) exitWith // not a lota death
			{
				"The CDF have successfully located and destroyed both of the ChDKZ camps and have extracted with more than half of their original forces.<br/><br/>DECISIVE CDF VICTORY<br/>" call FNC_EndMission;
			};
		};
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds