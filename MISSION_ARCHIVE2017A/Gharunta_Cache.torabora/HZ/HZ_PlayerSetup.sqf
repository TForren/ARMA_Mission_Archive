//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

//Post processing Effects.
//==================================================================
//hndl = ppEffectCreate ["colorCorrections", 1501];
//hndl ppEffectEnable true;

//0 setFog [.25, 0.07, 10];
//hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Very Sandy
//hndl ppEffectAdjust [.96, 0.90, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.03, 0.9]]; 
 // Sandy

//hndl ppEffectCommit 0;
//==================================================================

//[player, -1.0, .5, true] call BIS_fnc_sandstorm;


if (side player == east) then {
	[] spawn {
		//sleep 2;
		_pos = getpos cache;
		_txt=format["cache%1",_pos];
		_debugMkr = createMarkerLocal [_txt,_pos];
		_debugMkr setMarkerTextLocal "Cache";
		_debugMkr setMarkerShapeLocal "ICON";
		_debugMkr setMarkerTypeLocal "IDM_DOT";
		_debugMkr setMarkerColorLocal "ColorOpfor";
	};
};