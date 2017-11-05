_eastCas = "VDV QRF OBOROTEN" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_insurgentCount = {side _x == independent} count allunits;

_ammoCrates = [ammo1,ammo2,ammo3,ammo4,ammo5,ammo6,ammo7];

_ammoCount = {alive _x} count _ammoCrates;

_finalMessage = " ";

if ( (_insurgentCount < 5) && (time > 300)) exitWith { //Blufor extracted

	_finalMessage = "The insurgents in the are have been reduced to a combat ineffective force.<br/>" + str _ammoCount + " stolen ammo crates will need to be found by VDV cleanup crew.";
	

	_finalMessage = _finalMessage + "<br/><br/>MISSION SUCCESSFUL<br/>";

	_finalMessage call FNC_EndMission;
	
};


//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	_finalMessage = "With no time remaining for the operation to continue, the VDV have been forced to extract.<br/>"+ str _ammoCount + " stolen ammo crates are left for the insurgents";
	
	if (_ammoCount > 0) then {
		_finalMessage = _finalMessage + "<br/><br/>MISSION FAILURE<br/>";
	}
	else{
		_finalMessage = _finalMessage + "<br/><br/>MINOR MISSION SUCCESS<br/>";
	};
	
	_finalMessage call FNC_EndMission;


}; // End time limit

	
if (_eastCas >= 75) exitWith {//TOOO many casualties. End mission meow.

	"The VDV have suffered too many casualties to continue the operation.<br/>" + str _ammoCount + " stolen ammo crates are left for the insurgents.<br/><br/>MISSION FAILURE<br/>" call FNC_EndMission;

};


sleep (30); //This determines how frequently the end conditions should be checked in seconds