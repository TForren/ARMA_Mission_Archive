//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

//Post processing Effects.
//==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.15, 0.02, 10];
//hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Very Sandy
//hndl ppEffectAdjust [.96, 0.90, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.03, 0.9]]; 
hndl ppEffectAdjust [.96, 0.90, 0.0, [0.3, 0.3, 0.3, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.03, 0.9]];
hndl ppEffectCommit 0;
//==================================================================

[player, -1.0, .5, true] call BIS_fnc_sandstorm;

/*
[] spawn {
	
	titleText ["", "BLACK FADED", 0];
	sleep 3;
	_any=[
		[
		["___________________","<t align = 'center' size = '0.7'>%1</t><br/>"],
		["OPERATION:","<t align = 'center' size = '1'>%1</t><br/>"],
		["Sweeping Gambit","<t align = 'center' size = '1'>%1</t><br/>"],
		["________________","<t align = 'center' size = '0.7'>%1</t><br/>"]
		]
	] spawn BIS_fnc_typeText;
	titleText ["", "BLACK IN", 8];

};*/