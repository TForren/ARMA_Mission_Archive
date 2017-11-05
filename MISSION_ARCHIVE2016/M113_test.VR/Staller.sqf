
FNC_Stall = 
{
_stallveh = _this select 0; //vehicle that stalls
	_StallThread = [_stallveh] spawn {
		_veh = _this select 0;
		 hint format ["%1 Stalling...",_veh];
		_obj = _veh;
		//_veh say3D "stall";
		[_obj,"stall",150] call CBA_fnc_globalSay3d;
		_smoke = "#particlesource" createVehicleLocal (getpos _obj); 
		_smoke setParticleCircle [0, [0, 0, 0]];
		_smoke setParticleRandom [0, [0.5, 0.5, 0], [0.2, 0.2, 0], 0, 0.25, [0, 0, 0, 0.1], 0, 0];
		_smoke setParticleParams [["\Ca\Data\ParticleEffects\FireAndsmokeAnim\smokeAnim.p3d", 8, 1, 6], "", "Billboard", 1, 8, [0, 0, 0], [0, 0, 4.5], 0, 10, 7.9, 0.5, [4, 12, 20], [[0.1, 0.1, 0.1, 0.8], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.125], 1, 0, "", "", _obj];
		_smoke setDropInterval 1;	
		
		for [{_i=1},{_i<=11},{_i=_i+1}] do
		{
			_veh setHit ["motor", 1];
			sleep 1;
		}; //end for
		
		//_veh say3D "boom";
		[_veh,"boom",150] call CBA_fnc_globalSay3d;
		_veh setvelocity [0,0,5];
		_veh setHit ["motor", 0];
		deletevehicle _smoke;
		//terminate _StallThread;
	};//end spawn
 //WaitUntil {scriptDone _StallThread};
};//end FNC_stall


if (isServer) then {
	[] spawn { 
		while {true} do {
			_rand = random 1;
			
			if (_rand < 0.05) then { 
				[m1] call FNC_Stall;	
			};
			sleep 60;
		};
	};
	[] spawn { 
		while {true} do {
			_rand = random 1;
			
			if (_rand < 0.05) then { 
				[m2] call FNC_Stall;	
			};
			sleep 60;
		};
	};
		[] spawn { 
		while {true} do {
			_rand = random 1;
			
			if (_rand < 0.05) then { 
				[m3] call FNC_Stall;	
			};
			sleep 60;
		};
	};

		[] spawn { 
		while {true} do {
			_rand = random 1;
			
			if (_rand < 0.05) then { 
				[m4] call FNC_Stall;	
			};
			sleep 60;
		};
	};
};