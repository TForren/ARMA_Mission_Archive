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

//applying dust to googles script
if ((paramsArray select 0) != 4) then { //sandstorm not disabled
	[] spawn { 
		//apply dust to goggles over time due to sandstorm
		while {true} do {
			sleep 60;
			[nil, "ace_goggles_fnc_applyDustEffect", player, false, true] call BIS_fnc_MP; // calls the function on the player
		};
	};
};


if ((paramsArray select 0) != 4) then {
	// define the global sand parameter array
	//[fog,overcast,use ppEfx,allow rain,force wind,vary fog,use wind audio,EFX strength]
	MKY_arSandEFX = [0,"",true,false,true,true,true,(paramsArray select 0)];
	// init the EFX scripts
	nul = [] execVM "MKY\MKY_Sand_Snow_Init.sqf";
};

//vehicle deletion
vehdeletion = (paramsArray select 1);
if (vehdeletion == 0) then { //Disable vehicles
	deletevehicle opveh1;deletevehicle opveh2;deletevehicle opveh3;deletevehicle opveh4;deletevehicle opveh5;
};

if (isServer) then
{
	reapergroup = group reaper; //for reaper drone tracking
	reapergroup setBehaviour "STEALTH";
	reapergroup setSpeedMode "FULL";
	reapergroup setCombatMode "BLUE";
		
	randTime = ((random 16) + 4) - daytime;
	publicVariable "randTime";
};

[] spawn {
	while {true} do 
	{
		if (((hvt distance bananahome) > 50) && time > 120) then {
			//Marker has not been moved yet. alert all players. Will not alert again
			if ((getmarkerpos "hvtmarker") distance (getpos bananahome) < 10) then { 
				hint "Drone tracking activated!";
			}
			else{
				hint "Postition Updated";
			};
			"hvtmarker" setmarkerpos (getpos hvt); //put marker on HVT
		};
	if (isServer) then {
	_wp1 = reapergroup addWaypoint [(getpos hvt), 0];
	};
	sleep 60;
	};
};



waitUntil{!isNil "randTime"};
skipTime randTime;

