BIS_hideUnits = {
	private ["_units", "_mode"];
	_units = [_this, 0, objNull, [objNull, []]] call BIS_fnc_param;
	_mode = [_this, 1, 0, [0]] call BIS_fnc_param;	// 0 - hide (default), 1 - unhide

	if (_mode == 0) then {
		// Hide
		{
			{
				private ["_unit"];
				_unit = _x;

				_unit hideObjectGlobal true;
				_unit enableSimulationGlobal false;
				_unit allowDamage false;
				//_unit setCaptive true;

				{_unit disableAI _x} forEach ["ANIM", "AUTOTARGET", "FSM", "MOVE", "TARGET"];
			} forEach ([vehicle _x, commander _x,  gunner _x, driver _x, _x] + crew _x);
		} forEach _units;
	} else {
		// Unhide
		{
			{
				private ["_unit"];
				_unit = _x;

				_unit hideObjectGlobal false;
				_unit enableSimulationGlobal true;
				_unit allowDamage true;
				//_unit setCaptive false;

				{_unit enableAI _x} forEach ["ANIM", "AUTOTARGET", "FSM", "MOVE", "TARGET"];
			} forEach ([vehicle _x, commander _x,  gunner _x, driver _x, _x] + crew _x);
		} forEach _units;
	};

	true
};

FW_Infantry = (units InfSqd1) + (units InfSqd2) + (units InfSqd3) + (units InfSqd4) + (units InfFT1) + (units InfFT2);
FW_Vehicles = [APC1, APC2, Tank, Strider1, Strider2];

{_x allowFleeing 0} forEach allUnits;

[FW_Infantry, 0] call BIS_hideUnits;
[FW_Vehicles, 0] call BIS_hideUnits;