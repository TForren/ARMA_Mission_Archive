_westCasualty = "BLUFOR" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
_eastCasualty = "Sahrani Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentgevcsdv
//_eastCasualty = "Sahrani Insurgents" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_bothdestroyed = (!alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 0)) && (!alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 1));
_onedestroyed = (!alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 0)) && (alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 1)) || (alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 0)) && (!alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 1));
_neither = (alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 0)) && (alive (nearestObjects( [(getmarkerpos "area"), ["Box_East_Wps_F"], 1500]) select 1));

if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
	
	"TIME LIMIT REACHED!" call FNC_EndMission;
	
};

if (_westCasualty >= 50) exitWith {
	
	if ( _onedestroyed) exitWith {
		"The BLUFOR have suffered too many casualities but the Sahrani Insurgents have lost one of their munitions crates.<br/><br/>OPFOR PARTIAL VICTORY<br/>" call FNC_EndMission;
	};
	
	if ( _neither ) exitWith {
		"The BLUFOR have suffered too many casualities and have been forced to evac the AO before any munitions crates were destroyed.<br/><br/>OPFOR DECISIVE VICOTRY<br/>" call FNC_EndMission;
	};
	
};


if (_bothdestroyed && time > 60 ) exitWith {
	hint "obj complete";

	if(_westCasualty > 30) exitWith
	{
		"The Insurgent munitions have been successfully destroyed.<br/><br/>BLUFOR PARTIAL VICTORY due to substantial casualties<br/>" call FNC_EndMission;
	};
	if(_westCasualty <= 30 ) exitWith
	{
		"The Insurgent munitions have been successfully destroyed and will no longer be used by the Sahrani Insurgents.<br/><br/>BLUFOR DECISIVE VICTORY<br/>" call FNC_EndMission;
	};
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds