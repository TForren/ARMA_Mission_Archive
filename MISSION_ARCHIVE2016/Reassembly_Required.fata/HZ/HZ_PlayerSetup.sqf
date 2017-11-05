//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

//Post processing Effects.
//==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy

hndl ppEffectCommit 0;
//==================================================================

[player, -1.0, .5, true] call BIS_fnc_sandstorm;

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


if (side player == east) then {
	[] spawn {
		{
			_pos = getpos _x;
			_txt=format["cache%1",_pos];
			_debugMkr=createMarkerLocal [_txt,_pos];
			_debugMkr setMarkerTextLocal "Cache";
			_debugMkr setMarkerShapeLocal "ICON";
			_debugMkr setMarkerTypeLocal "IDM_DOT";
			_debugMkr setMarkerColorLocal "ColorOpfor";
		} foreach caches;
	};
	_startmarker=createMarkerLocal ["Start",getpos ammoTruck];		
	_startmarker setMarkerTextLocal "Start";
	_startmarker setMarkerShapeLocal "ICON";
	_startmarker setMarkerTypeLocal "hd_dot";
	_startmarker setMarkerColorLocal "ColorRed";
	player setpos ([getpos ammotruck, 4, 20, 1, 0, 5, 0] call BIS_fnc_findSafePos);
};