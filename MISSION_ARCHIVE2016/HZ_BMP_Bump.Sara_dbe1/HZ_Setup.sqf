//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


//player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

planning = true; //start in planning

if (isServer) then {
	
	//randtime
	randTime = ((random 16) + 3) - daytime;
	publicVariable "randTime";
	
	//LZs per area
	blueLZs = ["blz1","blz2","blz3","blz4"];
	redLZs = ["rlz1","rlz2","rlz3","rlz4"];

	//2D array of all areas
	LZareas = [blueLZs,redLZs];

	//start positions

	 //cannot bis_fnc_selectrandom on marker arrays(???)... so this..
	rand = floor(random 2);
	chosenarea = LZareas select rand; //pick one of the 2 possible areas. opposite is chosen for opfor
	rand = floor(random 4);
	BFchosenLZ = chosenarea select rand; //pick one of the 4 possible LZs from the chosen area
	
	areadesignation = (chosenarea select 0) select [0,1]; //grab first letter of first element of chosen LZarea for switch

	switch (areadesignation) do { //determine opposite side of town for opfor
		
		case "b": //Blufor is going blue. Opfor will go red
		{ 
			rand = floor(random 4);
			OPchosenLZ = (redLZs select rand);
		};		
		case "r": //Blufor is going red. Opfor will go blue
		{ 
			rand = floor(random 4);
			OPchosenLZ = (blueLZs select rand);
		};

	};
	publicVariable "BFchosenLZ";
	publicVariable "OPchosenLZ";
};

	"bluLZ" setMarkerPos (getmarkerpos BFchosenLZ); //move actual blufor LZ marker to randomized location
	"opLZ" setMarkerPos (getmarkerpos opChosenLZ); 
	//set start positions for each bmp
	
	racsbmp setpos [((getmarkerpos "bluLZ") select 0) - 3, ((getmarkerpos "bluLZ") select 1) - 3, 0];
	racsural setpos [((getmarkerpos "bluLZ") select 0) + 3, ((getmarkerpos "bluLZ") select 1) + 3, 0];
	racsbmp setdir (markerDir BFchosenLZ);
	racsural setdir (markerDir BFchosenLZ);
	
	slabmp setpos [((getmarkerpos "opLZ") select 0) - 3, ((getmarkerpos "opLZ") select 1) - 3, 0];
	slaural setpos [((getmarkerpos "opLZ") select 0) + 3, ((getmarkerpos "opLZ") select 1) + 3, 0];
	slabmp setdir (markerDir OPchosenLZ);
	slaural setdir (markerDir OPchosenLZ);
	
//	bc1 setpos [((getmarkerpos "blustart") select 0) + 25, ((getmarkerpos "blustart") select 1) + 20, 30];
//	bc2 setpos [((getmarkerpos "blustart") select 0) - 25, ((getmarkerpos "blustart") select 1) - 20, 30];

waitUntil{!isNil "randTime"};
skipTime randTime;

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
			cutText ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPlanning Phase\nOh no...", "PLAIN"];
			sleep 3;
			cutText ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nADMIN HAX!!@1", "PLAIN"];
			sleep 1.3;
			cutText ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nMURDER.", "PLAIN"];
			sleep 1.0;
			cutText ["\n\n\n\n\n\n\nPHASE.", "PLAIN"];
			sleep 1.0;
			cutText ["NOW!", "PLAIN"];
			sleep 1;
			cutText ["", "PLAIN"];
		};
	};
	cutText ["Planning Done", "PLAIN"];
	sleep 1;
	cutText ["", "PLAIN"];
	
	titleText ["", "BLACK OUT"];
	sleep 3;
	titleText ["Transporting", "BLACK FADED"];
	
	{
		_x allowdamage true;
		if ((side _x) == WEST) then {
			_x moveincargo racsural;
		};
		if ((side _x) == EAST) then {
			_x moveincargo slaural;
		};
	} foreach allunits;
	
	if (isServer) then {
		if (!isEngineOn slaural) then {slaural engineOn true};
		if (!isEngineOn racsural) then {racsural engineOn true};
	};
	sleep 5;
	titleText ["Transporting", "BLACK FADED"];
		if (isEngineOn slaural) then {slaural engineOn false};
		if (isEngineOn racsural) then {racsural engineOn false};
	sleep 1;
	titleText ["Transporting", "BLACK IN"];
	player allowdamage true;
	if (true) exitWith {};
};



