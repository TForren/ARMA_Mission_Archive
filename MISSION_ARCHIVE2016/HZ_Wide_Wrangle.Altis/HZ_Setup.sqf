//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

if ( (player distance (getmarkerpos "HQ")) < 15624) then {
	player addAction ["Return to LHD", { 
	 [LHD1, player] call CUP_fnc_moveInCargo;},  
	"", 1, true, true, "", "'AswmPercMstpSnonWnonDnon' == AnimationState player"];
	
	planning = true; //start in planning
player allowdamage false;

_safestart = [(paramsArray select 0)] spawn {
	startTimer = _this select 0;
	cutText ["Planning Phase", "PLAIN"];  
	sleep 3;
	deletemarker "planmark"; 
	while {planning} do {
		cutText [format["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPlanning Phase\n%1:%2",floor(startTimer/60),(startTimer mod 60)], "PLAIN"];
		if (isServer) then {
			startTimer = startTimer - 1;
			publicVariable "startTimer";
			if (startTimer < 1) then {
				planning = false; //break out of loop
				publicVariable "planning";
			};
		};
		sleep 1.4;
		
		if (!planning && (startTimer > 1)) then {
			cutText ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPlanning Phase\nTIMER SKIPPED", "PLAIN"];
			sleep 3;
			cutText ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nMission has Begun.", "PLAIN"];
			sleep 3;
			cutText ["", "PLAIN"];
		};
	};
	
	player allowdamage true;
	if (true) exitWith {};
};

};

//player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 



