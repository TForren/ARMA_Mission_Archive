/*
 * HZ_fnc_angryMobYelling.sqf
 * Determines the average location of all members of the mob to create a sound source.
 * Will stop sound at casualty threshold
 * Takes in:
 * group
 * Returns:
 * N/A
 *
 *_nul = (group this) call HZ_fnc_angryMobYelling;
 */
 
_this spawn {

	private _allLocs = [];
	private _avgX = 0;
	private _avgY = 0;
	private _avgLoc = [0,0,0];
	private _group = _this;

	private _startCount = count (units _group);
	private _aliveCount = _startCount;
	private _threshold = (50/100) * _startCount;

	//private _arrow = "Sign_arrow_down_large_EP1" createvehicle _avgLoc;
	private _soundSource = "Land_HelipadEmpty_F" createVehicle _avgLoc;
	
	private _breakout = false;

	_soundLoop = _soundSource spawn {
		while {alive _this} do {
			//systemChat "play sound";
			[_this, "angryMob",70] call CBA_fnc_globalSay3d;
			sleep 7;
		};
		
	};
	while {!_breakout} do {

		//systemChat "mob handle";
		_aliveCount = {alive _x} count (units _group);
		
		if (_aliveCount < _threshold) then {
			_breakout = true;
		};
		
		//Creating the 2D array of xyz locations of all units
		{ 
			_allLocs = _allLocs + [(getpos _x)];

		} foreach units _group;
		
		{
			_avgX = _avgX + (_x select 0);
			_avgY = _avgY + (_x select 1);
		} foreach _allLocs;

		_avgX = _avgX / _aliveCount;
		_avgY = _avgY / _aliveCount;

		_avgLoc = [_avgX,_avgY,0];

		//_arrow setpos _avgLoc; //DEBUG
		_soundSource setpos _avgLoc;
		
		//reset
		_avgLoc = [0,0,0];
		_avgX = 0;
		_avgY = 0;
		_allLocs = [];
		
		sleep 2;
		
	};
	
	deletevehicle _soundSource;

};
