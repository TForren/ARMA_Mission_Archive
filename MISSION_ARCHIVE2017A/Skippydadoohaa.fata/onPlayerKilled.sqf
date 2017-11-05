_unit = _this select 0;

if ([ west, 0 ] call BIS_fnc_respawnTickets <= 0) then {
	if ( side _unit == WEST ) then {
		//["Initialize", [player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
	};
};
if ([ east, 0 ] call BIS_fnc_respawnTickets <= 0) then {
	if ( side _unit == EAST ) then {
		//["", [player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
	};
};