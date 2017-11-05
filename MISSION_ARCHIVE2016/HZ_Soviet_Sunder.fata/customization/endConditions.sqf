_eastCas = "USSR" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_finalMessage = " ";

if (_eastCas >= 40) exitWith {
	
	"the MSV Akraim 2nd platoon has retreated due to casualties. Unfortunately, the retreating survivors of the assault were fired upon by friendlies and the platoon's casualty rate rose to 100%. <br/><br/>KHALIS VICTORY" call FNC_EndMission;
	
};

_charactersNearVoy = nearestObjects [[7191.04,1966.52,0], ["Car","man"], 130];
/*
indCount = 0;
rusCount = 0;

{
	if ((alive _x) && (side _x == east)) then {
		rusCount = rusCount + 1;
	};
	if ((alive _x) && (side _x == independent)) then {
		indCount = indCount + 1;
	};
} foreach _charactersNearVoy;

if (rusCount > indCount) exitWith {
	_finalMessage = "The Tanos Bay has been captured by the British Armed Forces.<br/>" + str endingBarrels + " out of " + str startingBarrels + " barrels of cocaine were captured by ARSENIC 2. ";
	
	if (endingBarrels == 0) then {
		_finalMessage = _finalMessage + "With all of the cocaine barrels extracted, the Sons of Cypriot will surely return.<br/><br/>SOC VICTORY";
	} else { //some barrels left
		if (endingBarrels < (startingBarrels / 1.25)) then { //less than half
			_finalMessage = _finalMessage + "With more than 75% of the cocaine barrels extracted, the Sons of Cypriot will surely return.<br/><br/>SOC VICTORY<br/>";
		} else { //more than half
			_finalMessage = _finalMessage + "With more than half of the cocaine barrels unrecovered, the British Armed Forces have certainly put a spanner in the works of the Sons of Cypriot.<br/><br/>BAF VICTORY";
		};
	};
	_finalMessage call FNC_EndMission;
};
*/

sleep (60); //This determines how frequently the end conditions should be checked in seconds

