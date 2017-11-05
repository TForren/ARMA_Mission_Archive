stuffToClean = curMissionObjects + curMissionUnits + curMissionObjectives;

if !(count stuffToClean == 0) then {
	{deletevehicle _x} foreach stuffToClean;
};

[] spawn {
	sleep 3;
	{deletevehicle _x} foreach allDead;
};

//refresh variables to remove <NULL OBJECT>s
curMissionTitle = "";
curMissionDescription = "";
curMissionDescriptionShort = "";
curMissionObjectives = [];
curMissionObjects = [];
curMissionUnits = [];
playerDeaths = 0;