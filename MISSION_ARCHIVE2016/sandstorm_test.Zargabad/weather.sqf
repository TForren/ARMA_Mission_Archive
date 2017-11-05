//SANDSTORM PPEFFECTS AND SETTINGS
//HOIZEN


//For easy commenting out of entire blocks, hit enter right before the  /* The block comment will be ended automatically
//ONLY HAVE ONE ACTIVE AT A TIME




hndl = ppEffectCreate ["colorCorrections", 1501]; //keep here
hndl ppEffectEnable true; //keep here


//=================================Light=========================================
/*
0 setFog [.6, 0.05, 0];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]];
[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
setWind [4, 5, true];


[] spawn { 
	while {true} do {
		sleep 30; // sleeps for 10 seconds
		[nil, "ace_goggles_fnc_applyDustEffect", player, false, true] call BIS_fnc_MP; // calls the function on the player
	};
};
//===============================================================================*/


//=================================Medium=========================================/*
0 setFog [.7, 0.04, 0];
hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.10], [0.8, 0.74, 0.63, 0.10], [0.8, 0.74, 0.63, 0.10]];
[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
	setWind [8, 5, true];


[] spawn { 
	while {true} do {
		sleep 20; // sleeps for 10 seconds
		[nil, "ace_goggles_fnc_applyDustEffect", player, false, true] call BIS_fnc_MP; // calls the function on the player
	};
};
//===============================================================================*/



//=================================Heavy=========================================
/*
0 setFog [1, 0.04, 0];
hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.20], [0.8, 0.74, 0.63, 0.40], [0.8, 0.74, 0.63, 0.30]];
[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
setWind [15, 10, true];



[] spawn { 
	while {true} do {
		sleep 10; // sleeps for 10 seconds
		[nil, "ace_goggles_fnc_applyDustEffect", player, false, true] call BIS_fnc_MP; // calls the function on the player
	};
};

//===============================================================================*/


hndl ppEffectCommit 0; //keep here