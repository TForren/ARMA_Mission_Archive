_westCasualty = "BAF ARSENIC 2" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_finalMessage = " ";

if (_westCasualty >= 35) exitWith {
	
	"Armadillo Platoon has suffered too many casualties and cannot continue the operation.<br/><br/>MISSION FAILURE" call FNC_EndMission;
	
};

qrfDestroyed = true;

{
	if (damage _x < 0.5 || alive _x) then {
		qrfDestroyed = false;
	};
	
} foreach [q1,q2,q3,q4];

if (qrfDestroyed) exitWith {
	"The Russian MSV flank has been crippled and the only available QRF has been eliminated<br/><br/>BLUFOR VICTORY" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds

