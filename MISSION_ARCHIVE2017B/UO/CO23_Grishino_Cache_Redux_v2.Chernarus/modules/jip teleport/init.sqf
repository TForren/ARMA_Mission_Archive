#include "settings.sqf"

if (!isDedicated) then {
	if (((leader player) distance player) >  LEADERDISTANCE) then {
		_teleportAction = player addAction ["Teleport to Squad Leader", "modules\jip teleport\teleportAction.sqf"];
		
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