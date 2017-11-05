//Different spawned stuff for parallel execution.

//custom "channel" for informant
//INFOCHAN = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Imformant Channel", "%UNIT_NAME", [o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14]];


//protest variable
ProtestQuelled = false;
publicvariable "ProtestQuelled";

//protest animations
[] spawn { 
	while {true} do { 
		civ1 switchmove "Acts_A_M01_briefing";
		civ2 switchmove "Acts_A_M02_briefing";
		civ3 switchmove "Acts_A_M03_briefing";
		civ4 switchmove "Acts_A_M04_briefing";
		civ5 switchmove "Acts_A_M05_briefing";
		civa switchmove "Acts_A_M04_briefing";
		civb switchmove "Acts_A_M03_briefing";
		sleep 1;
		civ1a switchmove "Acts_A_M01_briefing";
		civ2a switchmove "Acts_A_M02_briefing";
		civ3a switchmove "Acts_A_M03_briefing";
		civ4a switchmove "Acts_A_M04_briefing";
		civ5a switchmove "Acts_A_M05_briefing";
		sleep 1;
		civ1b switchmove "Acts_A_M01_briefing";
		civ2b switchmove "Acts_A_M02_briefing";
		civ3b switchmove "Acts_A_M03_briefing";
		civ4b switchmove "Acts_A_M04_briefing";
		civ5b switchmove "Acts_A_M05_briefing";
		sleep 68;
	};
};
//protest sound fx
[] spawn { 
	while {true} do { 
		crowdsource say3D "crowd";
		sleep 28;
	};
};

//fat script
[] spawn { 

	while {true} do {
		sleep 1;
		_sprinting = (speed mayor > 15);
		_invehicle = (vehicle mayor) iskindof "LandVehicle";
		if (_sprinting && !_invehicle) then {
			//hint format ["Mayor is sprinting! Going: %1",(speed mayor)]; //BEBUG
			mayor setfatigue ((getfatigue mayor) + 0.09);
		}
	};

};

//Mayor's Aviophobia
[] spawn { 

	while {true} do {
		sleep 1;
		if (mayor in bird) then {
			mayor action ["EJECT", bird]; //mayor jumps out
			mayor action ["GetOut", bird]; //mayor jumps out
		}
	};

};

//police trucks
{ 
	_x animate ["HidePolice", 0];_x animate ["HideBumper1", 0];
	_x animate ["HideBumper2", 0];_x animate ["HideBackpacks",0]; 
	_x setObjectTextureGlobal [0, "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE02_CO.paa"]
} foreach [policecar1,policecar2,policecar3,policecar4];



//Intro
