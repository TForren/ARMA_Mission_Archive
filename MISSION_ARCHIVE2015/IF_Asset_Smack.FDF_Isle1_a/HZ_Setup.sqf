
_draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

		if ( (player distance (getmarkerpos "HQ")) < 200) then {

			drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos b1) select 0,(getpos b1) select 1,18.1], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b5) select 0,(getpos b5) select 1,18.1], 0, 0, 0, "1'1 SL", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [1,0,0,1], [(getpos b6) select 0,(getpos b6) select 1,18.1], 0, 0, 0, "1'1 Alpha", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0,0,1,1], [(getpos b10) select 0,(getpos b10) select 1,18.1], 0, 0, 0, "1'1 Bravo", 1, 0.04, "TahomaB"]; 
			
			drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b18) select 0,(getpos b18) select 1,18.1], 0, 0, 0, "1'2 SL", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0,1,0,1], [(getpos b14) select 0,(getpos b14) select 1,18.1], 0, 0, 0, "1'2 Alpha", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [1,1,0,1], [(getpos b19) select 0,(getpos b19) select 1,18.1], 0, 0, 0, "1'2 Bravo", 1, 0.04, "TahomaB"];  
			
			drawIcon3D ["", [0.1,0.1,0.1,1], [(getpos p1) select 0,(getpos p1) select 1,18.1], 0, 0, 0, "VADER-1", 1, 0.04, "TahomaB"]; 
			drawIcon3D ["", [0.1,0.1,0.1,1], [(getpos p3) select 0,(getpos p3) select 1,18.1], 0, 0, 0, "VADER-2", 1, 0.04, "TahomaB"]; 
		};
	}
];


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
0 setFog [1, 0.001, 0];
20 setFog [0, 0, 0];
sleep 8;
titleText ["", "PLAIN"];
sleep 3;	





