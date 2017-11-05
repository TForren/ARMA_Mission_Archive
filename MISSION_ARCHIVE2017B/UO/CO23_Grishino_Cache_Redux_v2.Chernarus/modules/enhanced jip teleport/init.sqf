#include "settings.sqf"
if (!isDedicated) then {
    _group = group player;
    _targetPicker = compile preprocessFileLineNumbers "modules\enhanced jip teleport\selectTarget.sqf";
    _targetUnit = [_group] call _targetPicker;
	if ((_targetUnit distance player) >  JIPTPDISTANCE) then {
		_teleportAction = player addAction ["Teleport to Squad", "modules\enhanced jip teleport\teleportAction.sqf", [_targetUnit]];
		[] spawn { //Spawns code running in parallel
			_spawnPos = getPosATL player;
			while {true} do {
				if (player distance _spawnPos > SPAWNDISTANCE) exitWith { //Exitwith ends the loop
					player removeAction _teleportAction;
				};
				sleep (60); //Runs every min
			};
		};
	};
};