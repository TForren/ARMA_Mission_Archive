//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

	

cachehandle = [] spawn { 

	cache disableCollisionWith cacheduder;
	cache disableCollisionWith cacheduder2;
	
	cacheduder allowdamage false;
	
	//initial cache placement
	[cacheduder, cacheduder, 100] call CBA_fnc_TaskDefend;
	sleep 50;
	cache setpos [ ((getpos cacheduder) select 0) + 1, (getpos cacheduder) select 1, 1.5];
	
	//loop check to see if something broke
	while {true} do { 
	
		if (!alive cache) then {
			//hint "last cache was destroyed! moving cache duder";
			//new random pos for cacheduder
			cacheduder setpos [((getpos cacheduder) select 0) + ((random 60)-30),
							   ((getpos cacheduder) select 1) + ((random 60)-30), 0];
							   
			//rerun search for position for cache
			[(group cacheduder), (getpos cacheduder), 100] call CBA_fnc_TaskDefend;
			sleep 50;
			//create new cache on new cacheduder pos
			//hint "creating new cache";
			cache = "CUP_GuerillaCacheBox"
			createvehicle [((getpos cacheduder) select 0),
						   ((getpos cacheduder) select 1),
						   ((getpos cacheduder) select 2) + 1];
		};
		
		
		//Continue while until 5min into mission. cacheduder should have found a good spot by now
		if (time > 300) then {
			cacheduder allowdamage true;
			terminate cachehandle; //terminate checker
			if (true) exitWith {};
		};
		
	 sleep 10; //don't run through if statments every tick!
	 
	};//end while
	
};//end cachehandle


if ((side player) == blufor ) then //blufor
{
	_draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

			if ( (player distance (getmarkerpos "HQ")) < 180) then {

				drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos b1) select 0,(getpos b1) select 1,((getpos b1) select 2) + 2.5], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b9) select 0,(getpos b9) select 1,((getpos b9) select 2) + 2.5], 0, 0, 0, "1'1 SL", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b14) select 0,(getpos b14) select 1,((getpos b14) select 2) + 2.5], 0, 0, 0, "1'2 SL", 1, 0.04, "TahomaB"]; 

				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b23) select 0,(getpos b23) select 1,((getpos b23) select 2) + 2.5], 0, 0, 0, "1'3 SL", 1, 0.04, "TahomaB"]; 
	
			};
		}
	];



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
