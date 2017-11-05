_westCasualty = "Freedom and Independence Army" call FNC_CasualtyPercentage;
_eastCasualty = "CSAT 1st Infantry Battalion" call FNC_CasualtyPercentage;

if (!lynx_objEnemy && lynx_objFriendly) exitWith {

	"CSAT Victory!" call FNC_EndMission;
	
};

if (_eastCasualty > 70) exitWith {
	
	"CSAT Defeat!" call FNC_EndMission;
	
};

sleep (60);