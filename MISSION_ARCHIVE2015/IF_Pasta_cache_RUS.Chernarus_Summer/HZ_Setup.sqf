//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


//MISC
CIVS = [civ1,civ2,civ3]; // the US Sympathizers

//==================================================================

if (player in CIVS) then 
{

	_mkrBsvc1 = createMarkerLocal ["mkrBsvc1", getPos civ1];
	_mkrBsvc1 setMarkerTypeLocal "mil_dot";
	_mkrBsvc1 setMarkerTextLocal "Madiq's House";
	
	_mkrBsvc2 = createMarkerLocal ["mkrBsvc2", getPos civ2];
	_mkrBsvc2 setMarkerTypeLocal "mil_dot";
	_mkrBsvc2 setMarkerTextLocal "Sadam's House";
	
	_mkrBsvc3 = createMarkerLocal ["mkrBsvc3", getPos civ3];
	_mkrBsvc3 setMarkerTypeLocal "mil_dot";
	_mkrBsvc3 setMarkerTextLocal "Taariq's House";

	sleep 1;
	titleText ["You are having a very Afghanny day.", "BLACK FADED"];
	sleep 5;
	titleText ["Afghanny sands, Afghanny rocks, Afghanny Afghans.", "BLACK FADED"];
	sleep 6;
	titleText ["What a perfectly normal Afghanny day.", "BLACK FADED"];
	sleep 6;
	titleText ["", "BLACK IN", 8];
	sleep 8;
	titleText ["", "PLAIN"];
	sleep 3;
};


if ((side player) == EAST ) then //blufor
{
	_draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

			if ( (player distance (getmarkerpos "HQ")) < 100) then {

				drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos o1) select 0,(getpos o1) select 1,((getpos o1) select 2) + 2.5], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos o5) select 0,(getpos o5) select 1,((getpos o5) select 2) + 2.5], 0, 0, 0, "1'1 SL - Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos o8) select 0,(getpos o8) select 1,((getpos o8) select 2) + 2.5], 0, 0, 0, "1'1 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos o11) select 0,(getpos o11) select 1,((getpos o11) select 2) + 2.5], 0, 0, 0, "1'2 SL - Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos o14) select 0,(getpos o14) select 1,((getpos o14) select 2) + 2.5], 0, 0, 0, "1'2 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos o17) select 0,(getpos o17) select 1,((getpos o17) select 2) + 2.5], 0, 0, 0, "1'3 SL - Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos o20) select 0,(getpos o20) select 1,((getpos o20) select 2) + 2.5], 0, 0, 0, "1'3 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p1) select 0,(getpos p1) select 1,((getpos p1) select 2) + 2.5], 0, 0, 0, "TSAR", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p3) select 0,(getpos p3) select 1,((getpos p3) select 2) + 2.5], 0, 0, 0, "KOROL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p6) select 0,(getpos p6) select 1,((getpos p6) select 2) + 2.5], 0, 0, 0, "KNJAZ", 1, 0.04, "TahomaB"]; 
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
	sleep 8;
	titleText ["", "PLAIN"];
	sleep 3;	
	
};




