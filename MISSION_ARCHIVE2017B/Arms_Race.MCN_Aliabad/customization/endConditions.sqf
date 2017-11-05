_westCasualty = "USMC" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_finalMessage = " ";

if (_westCasualty >= 75) exitWith {
	"USMC has retreated due to casualties.<br/><br/>The arms dealer has supplied " + str opforPoints +  " towns with weapons.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};


if (opforPoints == 4) exitWith {
	"The arms dealer has supplied too many towns with weapons! The USMC must retreat due to overwhelming numbers.<br/><br/>OPFOR VICTORY" call FNC_EndMission;
};

if (!alive dealer) then {
	"The arms dealer has been killed! " + str opforPoints +  " towns were supplied with weapons.<br/><br/>USMC VICTORY" call FNC_EndMission;
};

if (!alive armsVehicle) then {
	"The arms dealer's vehicle has been destroyed! " + str opforPoints +  " towns were supplied with weapons.<br/><br/>USMC VICTORY" call FNC_EndMission;
};

sleep (60); //This determines how frequently the end conditions should be checked in seconds

