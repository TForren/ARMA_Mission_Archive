//_leaders execVM HZ_fnc_garrisonController;
_this spawn {
	_leaders = _this;

	_groups = [];
	
	{_groups = _groups + [(group _x)]} foreach _leaders;
	
	while {true} do {
		
		_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
		_furthestGroup = 0;
		_furthestDist = 0;
		{
			_curDist = ((getpos leader _x) distance _avgLoc);
			if (_curDist > _furthestDist) then {
				_furthestDist = _curDist;
				_furthestGroup = _x;
			};
		} foreach _groups;


		{
		_x dofollow (leader (group _x));
		[_x, [(_avgLoc select 0) + (random 200 - 100),
			  (_avgLoc select 1) + (random 200 - 100),
			   0]
		] remoteExec ["doMove", 0, true];
		} foreach units _furthestGroup;

		sleep 60;
	};
};