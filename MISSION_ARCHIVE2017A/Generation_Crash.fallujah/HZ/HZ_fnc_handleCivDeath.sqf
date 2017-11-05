/* HZ_fnc_handleCivDeath
 * When a civilian is killed, check if they were killed by the enemy. If so, spawn more enemies.
 * ARGUMENTS: killed by unit
 * RETURNS: Nothing
 * 
 * [_this select 1] call HZ_fnc_handleCivDeath;
*/

//Hint format ["Killed by %1",_this]";


//if !(isServer) exitWith {};

//_this spawn {
[] spawn {
	_knownDead = 0;
	while {true} do {
		if ({typeof _x == "I_soldier_F"} count allDead > _knownDead) then {
			_knownDead = _knownDead + 1;
			[] call spawnDudes;
		};
		sleep 10;
	};
}; //end spawn



spawnDudes = {
	randInt = floor random 3;	
	
	switch (randInt) do {
		case 0: {[] call HZ_fnc_spawnBomber};
		case 1: {[] call HZ_fnc_spawnFighters};
		case 2: {[] call HZ_fnc_spawnTechnical};
		default {[] call HZ_fnc_spawnFighters};
	};
};