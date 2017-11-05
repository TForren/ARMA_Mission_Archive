//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

//Post processing Effects.
/*==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy

[player, -1.0, .5, true] call BIS_fnc_sandstorm;

hndl ppEffectCommit 0;
*///==================================================================

execVM "randomWeather2.sqf";

//fat script
[] spawn { 

	while {true} do {
		sleep 1;
		_sprinting = (speed hostage > 15);
		_invehicle = (vehicle hostage) iskindof "LandVehicle";
		if (_sprinting && !_invehicle) then {
			//hint format ["hostage is sprinting! Going: %1",(speed hostage)]; //BEBUG
			hostage setfatigue ((getfatigue hostage) + 0.078);
		}
	};

};


//hostage doesn't know how to fly
[] spawn { 

	while {true} do {
		sleep 1;

		if (((driver bird) == hostage) || ((gunner bird) == hostage)) then {
			hostage action ["EJECT", bird]; //hostage jumps out
			hostage action ["GetOut", bird]; //hostage jumps out
		}
	};

};