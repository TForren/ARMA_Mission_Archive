//init.sqf

// Code for convoy defend script
if (isServer) then {
	[["pos1","pos2","pos3","pos4","pos5"],[c1,c2,c3,c4,c5],true] execVM "convoyDefend\convoyDefend_init.sqf";
};


// You may run post-core-init scripts here

call compile preprocessFile "VAS\config.sqf";
ExecVM "briefing.sqf"; 
setviewdistance 3000;


barracksTask = false;


{
        if (side _x == east) then {
                _x unassignItem "NVGoggles_OPFOR";
                _x removeItem "NVGoggles_OPFOR";
        };

} foreach allunits;