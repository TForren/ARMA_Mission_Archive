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

//[player, -1.0, .5, true] call BIS_fnc_sandstorm;

missionNameSpace setVariable ["RscSpectator_allowFreeCam", true];

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


[] spawn {
	while {true} do 
	{
		if (isServer) then {
			_randX = (random 200) * 2 - 200;
			_randY = (random 200) * 2 - 200;
			newMarkerPos = [((getpos vip) select 0) + _randX, 
								((getpos vip) select 1) + _randY, 0];
								
		publicVariable "newMarkerPos";
		};
		"vipmarker" setmarkerpos newMarkerPos; //put marker on HVT
		"vipmarker2" setmarkerpos newMarkerPos; //put marker on HVT
		sleep 30;
	};
};


if (isServer) then
{
	randTime = ((random 15) + 4) - daytime;
	publicVariable "randTime";
};

waitUntil{!isNil "randTime"};
skipTime randTime;
	
