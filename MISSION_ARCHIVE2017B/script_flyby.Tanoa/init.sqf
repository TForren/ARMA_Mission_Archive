aircraft = ["swop_lambda", "swop_tie"];

while {true} do {
ambFlyby1 = [aStart modelToWorld [5,-5,0], aEnd modelToWorld [5,-5,0], 280, "LIMITED", "swop_tie", EAST] call BIS_fnc_ambientFlyBy;
ambFlyby2 = [aStart modelToWorld [-55,55,0], aEnd modelToWorld [-55,55,0], 280, "LIMITED", "swop_tie", EAST] call BIS_fnc_ambientFlyBy;

sleep 60 + random 2;
};