// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";
TF_give_microdagr_to_soldier = false; // Don't give people those stupid micro dagrs 

player addrating 99999; // because fuck that "player turns hostile" shit 

// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

[] execVM "tb3\briefing\f_orbatNotes.sqf";

//New not-derp Spectator system
[] execVM "CSSA3\CSSA3_init.sqf";

// wait until template is init and player synched

if (!isServer) then {
RnRVeh = [rnrV1,rnrV2,rnrV3,rnrV4] call BIS_selectRandom;
RnRVeh Setpos (getMarkerpos "RnRVehPos");
};

//AAR System
call compile ("AMET" callExtension "init" );

waitUntil { TB3_INIT };
titleText ["Generating random building ruins...\n\n", "BLACK FADED"];


// Initialize DAC
if (!isServer) then { waitUntil {!isNull player}};
DAC_Zone = compile preprocessFile "DAC\Scripts\DAC_Init_Zone.sqf";
DAC_Objects = compile preprocessFile "DAC\Scripts\DAC_Create_Objects.sqf";
execVM "DAC\DAC_Config_Creator.sqf";

// random mortar fire function
if (isServer) then {
	if (isnil "DZ_fnc_MortarFire") then {
		DZ_fnc_MortarFire = {
			private ["_ammo", "_marker", "_xcoord", "_ycoord", "_timer", "_fire"];
			_ammo = _this select 0;
			_marker = _this select 1;
			_xcoord = _this select 2;
			_ycoord = _this select 3;
			_timer = _this select 4;
			_fire = true;
			while {_fire} do {
			_firerun = _ammo createvehicle [(getmarkerpos _marker select 0) + random _xcoord, (getmarkerpos _marker select 1) + random _ycoord, getmarkerpos _marker select 2];
			sleep (random _timer);
			};
		};
	};
};
sleep 3;
titleText ["Finalizing Death Mortars...\n\n", "BLACK FADED"];
sleep 2;
titleText ["Generating Random Debris...", "BLACK FADED"];
sleep 2;
titleText ["Done...?\n\n", "BLACK FADED"];
sleep 2;
titleText ["Yeah I think it's done...", "BLACK FADED"];
sleep 2;
titleText ["Cold Combat Ukraine Edition\n\nBy Hoizen", "BLACK IN", 8];
sleep 8;
titleText ["", "PLAIN"];