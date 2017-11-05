/*HZ_fnc_activateQRF
 *  Activates the given QRF to hunt down the given detected enemies.
 * spawns new child processes which loop for continued hunting of detected players
 * over a specified time (seconds) by each individual qrf group
 *Takes in:
 *  [[_detectedUnits,_localQRF,400]] call HZ_fnc_activateQRF;
 *Returns:
 *  N/A
*/
[_this select 0] spawn {

private _params = (_this select 0);
private _detectedUnits = _params select 0;
private _qrfGroups = _params select 1;
private _huntTime = _params select 2;


Systemchat format ["Activating QRF: %1 will hunt %2 for %3 seconds",str(_qrfGroups),str(_detectedUnits),_huntTime];
//activate the qrf groups 
{
	{
		if (vehicle _x != _x) then { //in vehicle
			(vehicle _x) enableSimulation true;
			(vehicle _x) hideObject false; 
		};

		_x enableSimulation true;
		_x hideObject false; 
	} foreach units _x;
	
	[_x,_detectedUnits, _huntTime] spawn {
		_group = _this select 0;
		_detectedUnits = _this select 1;
		_huntTime = _this select 2;
		_startTime = time; 
		_elapsedTime = 0;

		_huntLoc = [_detectedUnits] call HZ_fnc_avgUnitLoc;
		_wpLoc = [(_huntLoc select 0) + random(10), (_huntLoc select 1) + random(10), (_huntLoc select 2)];
		
		_wp = _group addWaypoint [_wpLoc , 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed "FULL";
		_group setBehaviour "CARELESS";
		
		waitUntil {(getpos (units _group select 0) distance _huntLoc) < 80 || ((time - _startTime) > 100)};

		while {_elapsedTime < _huntTime} do {
			_huntLoc = [_detectedUnits] call HZ_fnc_avgUnitLoc;
			_wpLoc = [(_huntLoc select 0) + random(10), (_huntLoc select 1) + random(10), _huntLoc select 2];
			Systemchat format ["updating hunt target to: %1", _wpLoc];
			_wp2 = _group addWaypoint [_wpLoc, 0];
			_wp2 setWaypointType "MOVE";
			_wp2 setWaypointSpeed "NORMAL";
		
			if ((vehicle (units _group select 0)) isKindOf "helicopter") then {
				_helo = (vehicle ((units _group) select 0));
				_helo flyInHeight 20;
				_wp2 setwaypointCombatMode "RED";
				_group setBehaviour "SAFE";
				{
					_hunter = _x;
					{
						_hunter reveal [_x, 4];
					} foreach _detectedUnits;
				} foreach units _group;
			} else {
				_group setBehaviour "AWARE";
			};
			
			if ( (getpos ((units _group) select 0)) distance _huntLoc < 100) then {
				{
					_hunter = _x;
					{
						_hunter reveal [_x, 3.5];
					} foreach _detectedUnits;
				} foreach units _group;
			};

			_startTime = time - _startTime;
			sleep 40;
		}; //end while
		
	}; //end spawn block
	
	sleep 10; //10 second delay between groups
} foreach _qrfGroups;

}; //end spawn block