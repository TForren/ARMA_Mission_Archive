execVM "weather.sqf";


hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [1, 0.04, 0];
hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.20], [0.8, 0.74, 0.63, 0.40], [0.8, 0.74, 0.63, 0.30]];
[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
setWind [15, 10, true];

hndl ppEffectCommit 0;

while {true} do {
		hint "loopstart";
	sleep 3;
		if (true) then { // checks if unit is a player and not AI
		hint "player is player";
		//[nil, "AGM_Goggles_fnc_applyDustEffect", false, true] call BIS_fnc_MP; // calls the function on the player
		[["Hello World"],"BIS_fnc_guiMessage",nil,true ] call BIS_fnc_MP;
		};
	sleep 3; 
};
