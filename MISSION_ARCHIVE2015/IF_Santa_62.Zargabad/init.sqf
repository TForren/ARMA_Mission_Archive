// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";

player addrating 99999; // because fuck that "player turns hostile" shit 

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "tb3\briefing\f_orbatNotes.sqf";

// wait until template is init and player synched

waitUntil { TB3_INIT };


//EDIT THIS STUFF FOR THAT MISSION INTRO TEXT IN BOTTOM RIGHT CORNER
[str ("SANTA SIX TWO") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("ZARGABAD")] spawn BIS_fnc_infoText;

if (isServer) then {

	// AI information sharing
		[] execVM "scripts\ai\aiLink.sqf";
	};

if (!isDedicated) then {		
	// Fires&Smoke
	
//		[apc_wrk1, 7, 0, false, false] spawn bis_fnc_burn; //Make shit burn
		
	// Retard prevention in spawn.
		[] execVM "scripts\grenadeStop.sqf";
	
	// Building Position Indicator
		//[] execVM "scripts\posCheck.sqf";	
		
	player switchmove "AmovPknlMstpSlowWrflDnon";
	};