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



if (isServer) then
{
	
	//=============BLUFOR===============================================
	bc1passengers = [sa1,sa2,sa3,sa4,sa5,sa6,sa7,sa8,sa9,sa10];
	bc2passengers = [sb1,sb2,sb3,sb4,sb5,sb6,sb7,sb8,sb9];

	bc1group = group bc1; 
	bc2group = group bc2; 

	bc1lz = [((getmarkerpos "bluLZ") select 0) + 15, ((getmarkerpos "bluLZ") select 1) + 20, (getmarkerpos "bluLZ") select 2];
	bhp1 setpos bc1lz; //invisible helipads for the dumbass AI
	bc2lz = [((getmarkerpos "bluLZ") select 0) - 15, ((getmarkerpos "bluLZ") select 1) - 20, (getmarkerpos "bluLZ") select 2];
	bhp2 setpos bc2lz; //invisible helipads for the dumbass AI
	
	//==========BLUFOR HELO 1===========
	bc1process = [] spawn { //Spawns code running in parallel
		bc1group setBehaviour "CARELESS";
		bc1group setSpeedMode "FULL";
		bc1group setCombatMode "BLUE";
		_wp1 = bc1group addWaypoint [bc1lz, 0];
		waitUntil {(bc1 distance bc1lz) < 100};
		//hint "close enough";
		sleep 1;
		//hint "landing...";
		bc1 land "GET OUT";
		
		waitUntil{ (getpos bc1 select 2) < 1};
		sleep 0.5;
		bc1freezer = "Sign_sphere10cm_EP1" createvehicle (getpos bc1); //save location for lock
		bc1freezer setpos (getpos bc1);
		bc1freezer setdir (getdir bc1);
		bc1 attachTo [bc1freezer, [0, 0, 2.6] ]; //lock helo in place because AI is dumb
		//eject all crew
		{
			if (_x in bc1passengers) then {
			_x action ["EJECT", bc1];
			_x action ["GetOut", bc1]; 
			};
		    sleep 1;
		} foreach crew bc1;
		
		sleep 5; //wait a bit on the ground just in case..
		detach bc1; //unfreeze
		deletevehicle bc1freezer;

		//hint "Leaving...";
		_wp2 = bc1group addWaypoint [(getmarkerpos "blustart"), 0];
		waitUntil {(bc1 distance (getmarkerpos "blustart")) < 200};
		{deletevehicle _x;} foreach crew bc1;
		deletevehicle bc1;
	};
	//========BLUFOR HELO 2==========
	bc2process = [] spawn { //Spawns code running in parallel
		bc2group setBehaviour "CARELESS";
		bc2group setSpeedMode "FULL";
		bc2group setCombatMode "BLUE";
		_wp1 = bc2group addWaypoint [bc2lz, 0];
		waitUntil {(bc2 distance bc2lz) < 100};
		//hint "close enough";
		sleep 1;
		//hint "landing...";
		bc2 land "GET OUT";
		
		waitUntil{ (getpos bc2 select 2) < 1};
		sleep 0.5;
		bc2freezer = "Sign_sphere10cm_EP1" createvehicle (getpos bc2); //save location for lock
		bc2freezer setpos (getpos bc2);
		bc2freezer setdir (getdir bc2);
		bc2 attachTo [bc2freezer, [0, 0, 2.6] ]; //lock helo in place because AI is dumb
		//eject all crew
		{
			if (_x in bc2passengers) then {
			_x action ["EJECT", bc2];
			_x action ["GetOut", bc2]; 
			};
		    sleep 1;
		} foreach crew bc2;
		
		sleep 5; //wait a bit on the ground just in case..
		detach bc2; //unfreeze
		deletevehicle bc2freezer;

		//hint "Leaving...";
		_wp2 = bc2group addWaypoint [(getmarkerpos "blustart"), 0];
		waitUntil {(bc2 distance (getmarkerpos "blustart")) < 200};
		{deletevehicle _x;} foreach crew bc2;
		deletevehicle bc2;
	};
};


if (isServer) then
{

	//====================OPFOR=============================================
	oc1passengers = [oa1,oa2,oa3,oa4,oa5,oa6,oa7,oa8,oa9,oa10,oa11,oa12];
	oc2passengers = [ob1,ob2,ob3,ob4,ob5,ob6,ob7];

	oc1group = group oc1; 
	oc2group = group oc2; 

	oc1lz = [((getmarkerpos "opLZ") select 0) + 15, ((getmarkerpos "opLZ") select 1) + 20, (getmarkerpos "opLZ") select 2];
	ohp1 setpos oc1lz; //invisible helipads for the dumbass AI
	oc2lz = [((getmarkerpos "opLZ") select 0) - 15, ((getmarkerpos "opLZ") select 1) - 20, (getmarkerpos "opLZ") select 2];
	ohp2 setpos oc2lz; //invisible helipads for the dumbass AI


	//==========OPFOR HELO 1===========
	oc1process = [] spawn { //Spawns code running in parallel
		oc1group setBehaviour "CARELESS";
		oc1group setSpeedMode "FULL";
		oc1group setCombatMode "BLUE";
		_wp1 = oc1group addWaypoint [oc1lz, 0];
		waitUntil {(oc1 distance oc1lz) < 100};
		//hint "close enough";
		sleep 1;
		//hint "landing...";
		oc1 land "GET OUT";
		
		waitUntil{ (getpos oc1 select 2) < 1};
		sleep 0.5;
		oc1freezer = "Sign_sphere10cm_EP1" createvehicle (getpos oc1); //save location for lock
		oc1freezer setpos (getpos oc1);
		oc1freezer setdir (getdir oc1);
		oc1 attachTo [oc1freezer, [0, 0, 2.85] ]; //lock helo in place because AI is dumb
		//eject all crew
		{
			if (_x in oc1passengers) then {
			_x action ["EJECT", oc1];
			_x action ["GetOut", oc1]; 
			};
		    sleep 1;
		} foreach crew oc1;
		
		sleep 5; //wait a bit on the ground just in case..
		detach oc1; //unfreeze
		deletevehicle oc1freezer;

		//hint "Leaving...";
		_wp2 = oc1group addWaypoint [(getmarkerpos "opstart"), 0];
		waitUntil {(oc1 distance (getmarkerpos "opstart")) < 200};
		{deletevehicle _x;} foreach crew oc1;
		deletevehicle oc1;
	};
	//========OPFOR HELO 2==========
	oc2process = [] spawn { //Spawns code running in parallel
		oc2group setBehaviour "CARELESS";
		oc2group setSpeedMode "FULL";
		oc2group setCombatMode "BLUE";
		_wp1 = oc2group addWaypoint [oc2lz, 0];
		waitUntil {(oc2 distance oc2lz) < 100};
		//hint "close enough";
		sleep 1;
		//hint "landing...";
		oc2 land "GET OUT";
		
		waitUntil{ (getpos oc2 select 2) < 1};
		sleep 0.5;
		oc2freezer = "Sign_sphere10cm_EP1" createvehicle (getpos oc2); //save location for lock
		oc2freezer setpos (getpos oc2);
		oc2freezer setdir (getdir oc2);
		oc2 attachTo [oc2freezer, [0, 0, 2.85] ]; //lock helo in place because AI is dumb
		//eject all crew
		{
			if (_x in oc2passengers) then {
			_x action ["EJECT", oc2];
			_x action ["GetOut", oc2]; 
			};
		    sleep 1;
		} foreach crew oc2;
		
		sleep 5; //wait a bit on the ground just in case..
		detach oc2; //unfreeze
		deletevehicle oc2freezer;

		//hint "Leaving...";
		_wp2 = oc2group addWaypoint [(getmarkerpos "opstart"), 0];
		waitUntil {(oc2 distance (getmarkerpos "opstart")) < 200};
		{deletevehicle _x;} foreach crew oc2;
		deletevehicle oc2;
	};
};

