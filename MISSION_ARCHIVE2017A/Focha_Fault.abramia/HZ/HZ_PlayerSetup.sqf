//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


//player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

//Post processing Effects.
/*==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy



hndl ppEffectCommit 0;
*///==================================================================

[] spawn {
	
	titleText ["", "BLACK FADED", 0];
	sleep 5;
	titleText ["", "BLACK IN", 8];
	_any=[
		[
		["Focha Fault","<t align = 'center' size = '1'>%1</t><br/>"],
		["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
		["","<t align = 'center' size = '0.7'>%1</t>"]
		]
	] spawn BIS_fnc_typeText;
};