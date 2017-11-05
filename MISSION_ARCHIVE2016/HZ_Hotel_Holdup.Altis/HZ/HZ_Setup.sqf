//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

["en", "English"] call acre_api_fnc_babelAddLanguageType;
["sand", "Sand People"] call acre_api_fnc_babelAddLanguageType;

player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

//Post processing Effects.
/*==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy

[player, -1.0, .5, true] call BIS_fnc_sandstorm;

hndl ppEffectCommit 0;
*///==================================================================

/*
//Allah yelling script
[] spawn { 
	while {true} do { 
		{ 
		 if (side _x == independent) then //faction to yell
		 {
			 if (random 1 > 0.8) then //chance to yell
			 {
				 _x say3D (["allah1", "allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9"] call BIS_fnc_selectRandom);
			 };
		 };
		} forEach allunits;
	  sleep (random 60);
	};
};
*/


waitUntil{!isNil "randTime"};
skipTime randTime;
