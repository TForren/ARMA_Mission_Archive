_westCasualty = "BAF ARSENIC 2" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

_finalMessage = " ";

if (_westCasualty >= 35) exitWith {
	
	"BAF ARSENIC 2 has retreated due to casualties.<br/><br/> Meanwhile, " + str (startingBarrels - endingBarrels) + " out of the " + str startingBarrels +  " cocaine barrels have been extracted.<br/><br/>SOC DECISIVE VICTORY" call FNC_EndMission;
	
};

_charactersNearDocks = nearestObjects [docks, ["Car","man"], 70];

socCount = 0;
bafCount = 0;

{
	if ((alive _x) && (side _x == west)) then {
		bafCount = bafCount + 1;
	};
	if ((alive _x) && (side _x == independent)) then {
		socCount = socCount + 1;
	};
} foreach _charactersNearDocks;

if (bafCount > socCount) exitWith {
	_finalMessage = "The Tanos Bay has been captured by the BAF.<br/>" + str endingBarrels + " out of " + str startingBarrels + " barrels of cocaine were captured. ";
	
	if (endingBarrels == 0) then {
		_finalMessage = _finalMessage + "With all of the cocaine barrels extracted, the Sons of Cypriot will surely return.<br/><br/>SOC VICTORY";
	} else { //some barrels left
		if (endingBarrels > (startingBarrels / 1.25)) then {
			_finalMessage = _finalMessage + "With more than 75% of the cocaine barrels extracted, the Sons of Cypriot will surely return.<br/><br/>SOC VICTORY<br/>";
		} else { //more than half
			_finalMessage = _finalMessage + "With less than 75% of the cocaine barrels recovered, the British Armed Forces have certainly put a spanner in the works of the Sons of Cypriot.<br/><br/>BAF VICTORY";
		};
	};
	_finalMessage call FNC_EndMission;
};


sleep (60); //This determines how frequently the end conditions should be checked in seconds

