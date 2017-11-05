#define preinit

#include "core\preInitFunctions.sqf" //DO NOT REMOVE
#include "modules\modules.sqf" //DO NOT REMOVE

//AO coverup
["ao",specPen,30,false,true] execVM "modules\ao.sqf";


//Determine LZs for both factions.
//Done in pre-init so we can have map screen markers.
if (isServer) then
{
	//LZs per area
	blueLZs = ["blz1","blz2","blz3","blz4"];
	redLZs = ["rlz1","rlz2","rlz3","rlz4"];
	greenLZs = ["glz1","glz2","glz3","glz4"];
	blackLZs = ["klz1","klz2","klz3","klz4"];

	//2D array of all areas
	LZareas = [blueLZs,redLZs,greenLZs,blackLZs];

	//Start locations:
	SOUTHWEST = [0,0,0]; 
	NORTHEAST = [2045,2045,0]; 

	//start positions

		 //cannot bis_fnc_selectrandom on marker arrays(???)... so this..
		rand = floor(random 4);
		chosenarea = LZareas select rand; //pick one of the 4 possible areas. opposite is chosen for opfor
		rand = floor(random 4);
		BFchosenLZ = chosenarea select rand; //pick one of the 4 possible LZs from the chosen area
		
		"bluLZ" setMarkerPos (getmarkerpos BFchosenLZ); //move actual blufor LZ marker to randomized location
		
		
		areadesignation = (chosenarea select 0) select [0,1]; //grab first letter of first element of chosen LZarea for switch

		switch (areadesignation) do { //determine opposite side of town for opfor
			
			case "b": //Blufor is going blue. Opfor will go Black
			{ 
				rand = floor(random 4);
				"opLZ" setMarkerPos (getmarkerpos (blackLZs select rand)); 
				"blustart" setmarkerpos SOUTHWEST;
				"opstart" setmarkerpos NORTHEAST;
			};		
			case "r": //Blufor is going red. Opfor will go green
			{ 
				rand = floor(random 4);
				"opLZ" setMarkerPos (getmarkerpos (greenLZs select rand)); 
				"blustart" setmarkerpos SOUTHWEST;
				"opstart" setmarkerpos NORTHEAST;
			};
			case "g": //Blufor is going green. Opfor will go red
			{ 
				rand = floor(random 4);
				"opLZ" setMarkerPos (getmarkerpos (redLZs select rand)); 
				"blustart" setmarkerpos NORTHEAST;
				"opstart" setmarkerpos SOUTHWEST;
			};
			case "k": //Blufor is going black. Opfor will go blue
			{ 
				rand = floor(random 4);
				"opLZ" setMarkerPos (getmarkerpos (blueLZs select rand)); 
				"blustart" setmarkerpos NORTHEAST;
				"opstart" setmarkerpos SOUTHWEST;
			};
		};

	//set start positions for each chopper
	bc1 setpos [((getmarkerpos "blustart") select 0) + 25, ((getmarkerpos "blustart") select 1) + 20, 30];
	bc2 setpos [((getmarkerpos "blustart") select 0) - 25, ((getmarkerpos "blustart") select 1) - 20, 30];
	oc1 setpos [((getmarkerpos "opstart") select 0) + 25, ((getmarkerpos "opstart") select 1) + 20, 30];
	oc2 setpos [((getmarkerpos "opstart") select 0) - 25, ((getmarkerpos "opstart") select 1) - 20, 30];

};

	//Visible Markers
	{
		if ((side _x) == west) then {
			_marker_bluLZ = createMarkerLocal ["marker_bluLZ", (getmarkerpos "bluLZ")];
			_marker_bluLZ setMarkerTypeLocal "mil_dot";
			_marker_bluLZ setMarkerTextLocal "BLU LZ";
			_marker_opLZ setMarkerColor "ColorBlue";
		};
		if ((side _x) == east) then {
			_marker_opLZ = createMarkerLocal ["marker_opLZ", (getmarkerpos "opLZ")];
			_marker_opLZ setMarkerTypeLocal "mil_dot";
			_marker_opLZ setMarkerTextLocal "OP LZ";
			_marker_opLZ setMarkerColor "ColorRed";
		};
	} forEach playableUnits;
