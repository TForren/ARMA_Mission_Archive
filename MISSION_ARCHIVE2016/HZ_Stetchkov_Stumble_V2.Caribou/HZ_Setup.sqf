//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

//["en", "English"] call acre_api_fnc_babelAddLanguageType;
//["sand", "Sand People"] call acre_api_fnc_babelAddLanguageType;


//Post processing Effects.
//==================================================================
/*hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy
[player, -1.0, .5, true] call BIS_fnc_sandstorm;

hndl ppEffectCommit 0;*/
//==================================================================


if ((side player) == east ) then 
{
	_draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

			if ( (player distance (getmarkerpos "HQ")) < 100) then {

				drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos s1) select 0,(getpos s1) select 1,((getpos s1) select 2) + 2.5], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos s10) select 0,(getpos s10) select 1,((getpos s10) select 2) + 2.5], 0, 0, 0, "1'1 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos s13) select 0,(getpos s13) select 1,((getpos s13) select 2) + 2.5], 0, 0, 0, "1'1 Bravo", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,1,1,1], [(getpos s16) select 0,(getpos s16) select 1,((getpos s16) select 2) + 2.5], 0, 0, 0, "1'1 BMP", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos s4) select 0,(getpos s4) select 1,((getpos s4) select 2) + 2.5], 0, 0, 0, "1'2 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos s5) select 0,(getpos s5) select 1,((getpos s5) select 2) + 2.5], 0, 0, 0, "1'2 Bravo", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,1,1,1], [(getpos s17) select 0,(getpos s17) select 1,((getpos s17) select 2) + 2.5], 0, 0, 0, "1'2 BMP", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos s3) select 0,(getpos s3) select 1,((getpos s3) select 2) + 2.5], 0, 0, 0, "1'3 SL", 1, 0.04, "TahomaB"]; 

			};
		}
	];
	

sleep 6;
titleText ["Ultranationalists fighting for the Ukrainian Government", "BLACK FADED"];
sleep 5.5;
titleText ["Ultranationalists fighting for the Ukrainian Government\nhave aquired 3x BM-21 Grad truck-mounted rocket launchers.", "BLACK FADED"];
sleep 5.5;
titleText ["With such artillery, the Ultranationalists have devastated Novossiya positions.", "BLACK FADED"];
sleep 5.5;
titleText ["The Armed Forces of the Russian Federation have decided to take action against this threat\n", "BLACK FADED"];
sleep 5.5;
titleText ["The Armed Forces of the Russian Federation have decided to take action against this threat\nand have decided to send the VDV.\n", "BLACK FADED"];
sleep 5.5;
titleText ["With 2x BMD-4s and only 3x squads of paratroopers,\n", "BLACK FADED"];
sleep 5.5;
titleText ["The VDV have deployed South of the Ultranationalist position\n", "BLACK FADED"];
sleep 5.5;
titleText ["The VDV have deployed South of the Ultranationalist position\nand will soon come in contact with the Ultranationalists.\n", "BLACK FADED"];
sleep 5.5;
titleText ["Stetchkov Stumble\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];
};




