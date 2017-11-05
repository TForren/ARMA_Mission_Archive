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

if ( (player distance (getmarkerpos "HQ")) < 15624) then {
	player addAction ["Return to LHD", { 
	 [LHD1, player] call CUP_fnc_moveInCargo;},  
	"", 1, true, true, "", "'AswmPercMstpSnonWnonDnon' == AnimationState player"];
};

if ((side player) == blufor ) then //blufor
{
	draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

			if ( (player distance (getmarkerpos "HQ")) < 150) then {

				drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos b1) select 0,(getpos b1) select 1,((getpos b1) select 2) + 2.5], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b5) select 0,(getpos b5) select 1,((getpos b5) select 2) + 2.5], 0, 0, 0, "1'1 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos b6) select 0,(getpos b6) select 1,((getpos b6) select 2) + 2.5], 0, 0, 0, "1'1 Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b10) select 0,(getpos b10) select 1,((getpos b10) select 2) + 2.5], 0, 0, 0, "1'1 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b14) select 0,(getpos b14) select 1,((getpos b14) select 2) + 2.5], 0, 0, 0, "1'2 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos b15) select 0,(getpos b15) select 1,((getpos b15) select 2) + 2.5], 0, 0, 0, "1'2 Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b18) select 0,(getpos b18) select 1,((getpos b18) select 2) + 2.5], 0, 0, 0, "1'2 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b23) select 0,(getpos b23) select 1,((getpos b23) select 2) + 2.5], 0, 0, 0, "1'3 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos b24) select 0,(getpos b24) select 1,((getpos b24) select 2) + 2.5], 0, 0, 0, "1'3 Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b26) select 0,(getpos b26) select 1,((getpos b26) select 2) + 2.5], 0, 0, 0, "1'3 Bravo", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,1,0,1], [(getpos b28) select 0,(getpos b28) select 1,((getpos b28) select 2) + 2.5], 0, 0, 0, "1'3 Charlie", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,1,0,1], [(getpos b31) select 0,(getpos b31) select 1,((getpos b31) select 2) + 2.5], 0, 0, 0, "1'3 Delta", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p1) select 0,(getpos p1) select 1,((getpos p1) select 2) + 2.5], 0, 0, 0, "BARON-1", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p5) select 0,(getpos p5) select 1,((getpos p5) select 2) + 2.5], 0, 0, 0, "BARON-2", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p9) select 0,(getpos p9) select 1,((getpos p9) select 2) + 2.5], 0, 0, 0, "VENOM-1", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p11) select 0,(getpos p11) select 1,((getpos p11) select 2) + 2.5], 0, 0, 0, "KNIGHT-1", 1, 0.04, "TahomaB"]; 
			};
		}
	];



	sleep 1;
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; //crouch
/*	titleText ["Loading DAC", "BLACK FADED"];
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
	*/
};

