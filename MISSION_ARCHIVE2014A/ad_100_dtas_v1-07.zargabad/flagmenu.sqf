_obj = _this select 0;

_obj allowDamage false;
_obj enableSimulation false;

fnc_isLeaderWithGroup =
{
	_unit = _this select 0;
	_minGroupSize = [] call fnc_minGroupSize;
	
	(
		(player == [group player] call fnc_getLeader)
		&&
		((count (units (group player))) >= _minGroupSize)
	)
};

aPosHandler =
{
	private ["_pos"];
	_pos = _this select 0;
	if (([_pos, objPos] call fnc_airDistance) > minDist) then
	{
		(group player) setVariable ["insertionType", requestedInsertionType, true];
		(group player) setVariable ["insertionPos", _pos, true];
		(group player) setVariable ["insertionPosPicked", true, true];
		onMapSingleClick "";
		"mrkAZone" setMarkerAlphaLocal 0;
		
		hint format ["%1 %2", localize "STR_InsertionPositionUpdated", format [localize "STR_InsertingWith", localize format ["STR_%1s", requestedInsertionType]]];
	}
	else
	{
		hint (localize "STR_InvalidPosition");
	};
};

{
	_obj addAction [format ["<t color='#ffe400'>%1</t>", (_x select 0)], "pickspawnaction.sqf", [_x select 1], (_x select 2), false, true, "", "canChangeClass && (!roundInProgress) && (attackerSide == sidePlayer) && ([player] call fnc_isLeaderWithGroup)"];
} forEach [[localize "STR_JeepInsertion", "Jeep", 3], [localize "STR_BoatInsertion", "Boat", 2], [localize "STR_SubmarineInsertion", "Submarine", 2],[localize "STR_LittlebirdInsertion", "Littlebird", 2]];

_obj addAction [format ["<t color='#2080ff'>%1</t>", localize "STR_ResumeSpectating"], "spectate.sqf", [""], 15, false, true, "",  "roundInProgress"];

_obj addAction [format ["<t color='#32cd32'>%1</t>", localize "STR_Ready"], "readyaction.sqf", [], 5, false, true, "", "(!roundInProgress) && (attackerSide == sidePlayer) && ((group player) getVariable ['insertionPosPicked', false]) && (!((group player) getVariable ['groupReady', false])) && ([player] call fnc_isLeaderWithGroup)"];

_obj addAction [format ["<t color='#a0a0a0'>%1</t>", localize "STR_PreferDriving"], "preferdriving.sqf", [], 1, false, true, "", "!preferDriver"];
_obj addAction [format ["<t color='#c0c0c0'>%1</t>", localize "STR_PreferNotDriving"], "preferdriving.sqf", [], 1, false, true, "", "preferDriver"];

_obj addAction [format ["<t color='#ffc000'>%1</t>", localize "STR_GroupManagementMenu"], "groups\refresh.sqf", [], 0, false, false, "", "true"];