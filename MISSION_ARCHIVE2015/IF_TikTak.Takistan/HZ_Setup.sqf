//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


//MISC
CIVS = [civ1,civ2,civ3]; // the US Sympathizers


["en", "English"] call acre_api_fnc_babelAddLanguageType;
["sand", "Sand People"] call acre_api_fnc_babelAddLanguageType;


//Post processing Effects.
/*==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy


hndl ppEffectCommit 0;
*///==================================================================
[player, -1.0, .5, true] call BIS_fnc_sandstorm;

if (player in CIVS) then 
{

	["sand","en"] call acre_api_fnc_babelSetSpokenLanguages;

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


if ((side player) == blufor ) then //blufor
{
	_draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

			if ( (player distance (getmarkerpos "HQ")) < 100) then {

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
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p9) select 0,(getpos p9) select 1,((getpos p9) select 2) + 2.5], 0, 0, 0, "DAGGER-1", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p11) select 0,(getpos p11) select 1,((getpos p11) select 2) + 2.5], 0, 0, 0, "DAGGER-2", 1, 0.04, "TahomaB"];

				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos MT_LEAD) select 0,(getpos MT_LEAD) select 1,((getpos MT_LEAD) select 2) + 2.5], 0, 0, 0, "1'4 Mortars", 1, 0.04, "TahomaB"]; 				
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

};//end blufor

if ((side player) == opfor ) then //blufor
{

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

};//end blufor

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


//civilian casualty checker
if (isServer) then {
	//KNOWNCIVS = ["LOP_Tak_Civ_Man_01","LOP_Tak_Civ_Man_02", "LOP_Tak_Civ_Man_03", "LOP_Tak_Civ_Man_04"];
	LOWDEATH = 3;
	MEDDEATH = 6;
	HIGHDEATH = 9;
	checklow = true;
	checkmed = false;
	checkhigh = false;
	civdeaths = 0;
	
	[] spawn { 
		while {true} do {
			civdeaths = 0; //start fresh
	
			//iterate over all dead unit array (alldead) and count total number of civ deaths
			for [{_i=0}, {_i<(count alldead)}, {_i=_i+1}] do
			{
				switch ( typeof (alldead select _i)) do { //current index in array
					case "LOP_Tak_Civ_Man_01": { civdeaths = civdeaths + 1};
					case "LOP_Tak_Civ_Man_02": { civdeaths = civdeaths + 1};
					case "LOP_Tak_Civ_Man_03": { civdeaths = civdeaths + 1};
					case "LOP_Tak_Civ_Man_04": { civdeaths = civdeaths + 1};
					default { civdeaths = civdeaths };
				};
			};
			
			if ((civdeaths >= LOWDEATH) && checklow) then { //low
				["Minor Civilian Casualties. Civilian Opinion of BLUFOR in question...","hint",true,true] call BIS_fnc_MP;
				checklow = false;
				checkmed = true;
			};
			
			if ((civdeaths >= MEDDEATH) && checkmed) then { //medium
				["Medium Civilian Casualties. Civilians audibly upset.","hint",true,true] call BIS_fnc_MP;
				checkmed = false;
				checkhigh = true;
			};
			
			if ((civdeaths >= HIGHDEATH) && checkhigh) then { //High
				["Heavy Civilian Casualties! Civilians are taking action!","hint",true,true] call BIS_fnc_MP;
				checkhigh = false;	
			};
			sleep 60;
		}; //end while
	}; //end spawn block

};//end casualty checker

