//Different spawned stuff for parallel execution.

//custom "channel" for informant
//INFOCHAN = radioChannelCreate [[0.96, 0.34, 0.13, 0.8], "Imformant Channel", "%UNIT_NAME", [o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14]];


//Intro





"colorCorrections" ppEffectEnable true; 
"filmGrain" ppEffectEnable true;
"filmGrain" ppEffectAdjust [0.1, 1.1, 0.1, 0.05, 1, false];  
"filmGrain" ppEffectCommit 0; 

pphndl = ppEffectCreate ["colorCorrections", 1501];

pphndl ppEffectEnable true;
pphndl ppEffectAdjust [0.85, 0.85, 0, [0.8,0.8, 0.8, .1], [0.5,0.5,0.5,0.5], [1 , 1, 1, 0.03]];
pphndl ppEffectCommit 0;


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