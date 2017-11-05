//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

 
DACFinished = false;

/*
//Post processing Effects.
//==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy

[player, -1.0, .5, true] call BIS_fnc_sandstorm;
hndl ppEffectCommit 0;
//==================================================================
*/
//10 setFog [0.5, 0.06, 5];

if (isServer) then
{
	randTime = ((random 16) + 4) - daytime;
	publicVariable "randTime";
};

waitUntil{!isNil "randTime"};
skipTime randTime;
	


if ((side player) == east ) then //blufor
{

[player, -1.0, .5, true] call BIS_fnc_sandstorm;
	titleText ["\n\n", "BLACK FADED"];
	sleep 1;
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; //crouch
	titleText ["Loading DAC", "BLACK FADED"];
	sleep 3;
	titleText ["Loading DAC.", "BLACK FADED"];
	sleep 3;
	titleText ["Loading DAC..", "BLACK FADED"];
	sleep 3;
	titleText ["Loading DAC...", "BLACK FADED"];
	sleep 3;
	titleText ["Loading DAC....", "BLACK FADED"];
	sleep 3;
	titleText ["", "BLACK IN", 8];
	sleep 8;
	titleText ["", "PLAIN"];
	sleep 3;	
	DACFinished = true;
	publicVariable "DACFinished";

};

if (!isServer) exitWith {};

//allah yelling script
[] spawn { 
	while {true} do { 
		{ 
		_sleepPerDuder = 4;
		
		//Allow for potential "Mob yell". 10% chance to set the per duder wait time to 0 meaning almsot everyone will yell at once.
		if (random 1 > 0.9) then {
			_sleepPerDuder = 0;
		}
		else {
			_sleepPerDuder = 2;
		};
		
		 if (side _x == independent) then //faction to yell
		 {
			 if (random 1 > 0.6) then //chance per duder to yell
			 {
				[_x, (["allah1", "allah2","allah3","allah4","allah5","allah6","allah7","allah8","allah9","allah9"] call BIS_fnc_selectRandom),60] call CBA_fnc_globalSay3d;
			 };
		 };
		 sleep (random _sleepPerDuder); //time to wait until moving to next duder 
		} forEach allunits;
	  sleep 1;
	};
};

