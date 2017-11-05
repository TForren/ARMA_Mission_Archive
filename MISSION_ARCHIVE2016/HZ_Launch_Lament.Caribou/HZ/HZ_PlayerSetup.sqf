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

[true, true] call acre_api_fnc_setupMission;

if (isServer) then
{
	randTime = ((random 15) + 3) - daytime;
	publicVariable "randTime";
	randOvercast = (random 1);
	publicVariable "randOvercast";
};
player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; //crouch

waitUntil{!isNil "randTime"};
skipTime randTime;
0 setOvercast randOvercast;
forceWeatherChange;