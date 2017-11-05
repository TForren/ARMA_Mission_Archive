//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


//player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

if (isServer) then {

	//LZs per area
	spetsLZs = ["spets1","spets2","spets3","spets4"];

	//start positions
	rand = floor(random 4);
	SPETSchosenLZ = spetsLZs select rand; //pick one of the 4 possible LZs from the chosen area
	
	publicVariable "SPETSchosenLZ";
};
	if (side player == east) then {
		"opStart" setMarkerPosLocal (getmarkerpos SPETSchosenLZ); 
		spetsnaz1 setpos [((getmarkerpos "opStart") select 0) - 3, ((getmarkerpos "opStart") select 1) - 3, 0];
		spetsnaz2 setpos [((getmarkerpos "opStart") select 0) - 1, ((getmarkerpos "opStart") select 1) - 3, 0];
		spetsnaz3 setpos [((getmarkerpos "opStart") select 0) - 1, ((getmarkerpos "opStart") select 1) - 1, 0];
		spetsnaz4 setpos [((getmarkerpos "opStart") select 0) + 1, ((getmarkerpos "opStart") select 1) - 1, 0];

	};
	
		
if (side player == west) then {
		deleteMarkerLocal "opStart";
};
		