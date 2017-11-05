//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

 


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
	


if ((side player) == blufor ) then //blufor
{
	_draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

			if (( (player distance (getmarkerpos "HQ")) < 180) && time < 200 ) then {

				drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos b1) select 0,(getpos b1) select 1,((getpos b1) select 2) + 2.5], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b5) select 0,(getpos b5) select 1,((getpos b5) select 2) + 2.5], 0, 0, 0, "1'1 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b10) select 0,(getpos b10) select 1,((getpos b10) select 2) + 2.5], 0, 0, 0, "1'1 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b14) select 0,(getpos b14) select 1,((getpos b14) select 2) + 2.5], 0, 0, 0, "1'2 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b18) select 0,(getpos b18) select 1,((getpos b18) select 2) + 2.5], 0, 0, 0, "1'2 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b23) select 0,(getpos b23) select 1,((getpos b23) select 2) + 2.5], 0, 0, 0, "1'3 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos b24) select 0,(getpos b24) select 1,((getpos b24) select 2) + 2.5], 0, 0, 0, "1'3 Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b26) select 0,(getpos b26) select 1,((getpos b26) select 2) + 2.5], 0, 0, 0, "1'3 Bravo", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,1,0,1], [(getpos b28) select 0,(getpos b28) select 1,((getpos b28) select 2) + 2.5], 0, 0, 0, "1'3 Charlie", 1, 0.04, "TahomaB"]; 

				
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p3) select 0,(getpos p3) select 1,((getpos p3) select 2) + 2.5], 0, 0, 0, "BARON-1", 1, 0.04, "TahomaB"];  
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p1) select 0,(getpos p1) select 1,((getpos p1) select 2) + 2.5], 0, 0, 0, "KNIGHT-1", 1, 0.04, "TahomaB"]; 

				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos m1) select 0,(getpos m1) select 1,((getpos m1) select 2) + 2.5], 0, 0, 0, "1'4 Mortars", 1, 0.04, "TahomaB"]; 				
			};
		}
	];


	titleText ["\n\n", "BLACK FADED"];
	sleep 1;
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; //crouch
	titleText ["Loading DAC", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC.", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC..", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC...", "BLACK FADED"];
	sleep 5;
	titleText ["Loading DAC....", "BLACK FADED"];
	sleep 5;
	titleText ["", "BLACK IN", 8];
	sleep 8;
	titleText ["", "PLAIN"];
	sleep 3;	

};

if (!isServer) exitWith {};

//Cheeki yelling script
[] spawn { 
	while {true} do { 
		{ 
		 if (side _x == east) then //faction to yell
		 {
			 if (random 1 > 0.8) then //chance to yell
			 {
				[_x, (["Cheeki1", "Cheeki2","Cheeki3","Cheeki4","Cheeki5","Cheeki6","Cheeki7","Cheeki8","Cheeki9","Cheeki9"] call BIS_fnc_selectRandom),60] call CBA_fnc_globalSay3d;
			 };
		 };
		} forEach allunits;
	  sleep (random 30);
	};
};

