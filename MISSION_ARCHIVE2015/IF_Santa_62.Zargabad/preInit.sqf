// Create Initial stuff
	player setVariable ["BIS_noCoreConversations", true, false];
	0 fadeRadio 0;
	//enableRadio false; 
	bis_fnc_burn = compile preprocessFileLineNumbers "scripts\burn.sqf";

// Randomisation Elements 

	if (isServer) then {
		O_GRP1			= true;

		if (random 100 < 50) then {O_GRP1 = false};
	};

// AO script 
	["ao",specPen,800,false,false] execVM "scripts\ao.sqf";	
	
