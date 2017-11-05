

{deleteVehicle _x} forEach allDeadMen;
{_x setdammage 0} forEach units group player;
player setdammage 0;
skiptime 6;
sleep 0.3;
Savegame;
execVM "persistent\missionSpecific\saveStats.sqf";
hint "You and your squad members have been fully healed";


savegameNumber = savegameNumber + 1;
publicVariable "savegameNumber";