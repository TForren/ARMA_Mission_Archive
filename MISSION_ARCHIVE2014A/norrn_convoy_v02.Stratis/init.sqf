//init.sqf

// Code for convoy defend script
if (isServer) then {
	[["pos1","pos2","pos3","pos4","pos5"],[c1,c2,c3,c4,c5],true] execVM "convoyDefend\convoyDefend_init.sqf";
};
// Not needed for convoy scripts
[]execVM "NORRN_cam\start_cam.sqf";
