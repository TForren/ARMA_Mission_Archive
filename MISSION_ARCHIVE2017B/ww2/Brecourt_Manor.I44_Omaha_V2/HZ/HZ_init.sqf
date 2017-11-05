if (isServer) then {
	[] spawn {
		[ 
		 [flak1,flak2,flak3,flak4], 
		 [[2802,3130], [2643, 2943], [1000, 2000]], 
		 12 + random 10, 
		 0, 
		 {true} 
		] execVM "ambAA.sqf";
	};
};

try {
	_newFace = "LIB_" + (face player) + "_Dirt";
	[player, _newFace] remoteExec ["setFace", 0, netId player] ;
} catch {
	//oh well
};