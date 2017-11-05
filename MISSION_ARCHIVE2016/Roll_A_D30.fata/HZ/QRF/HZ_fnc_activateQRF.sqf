/*HZ_fnc_activateQRF
 *  Activates the given QRF to hunt down the given detected enemies.
 * spawns new child processes which loop for continued hunting of detected players
 * over a specified time (seconds) by each individual qrf group
 *Takes in:
 *  [[_initialEnemyPos,_localQRF,400]] call HZ_fnc_activateQRF;
 *Returns:
 *  N/A
*/
[_this select 0] spawn {

private _params = (_this select 0);
private _initialEnemyPos = _params select 0;
private _qrfGroups = _params select 1;
private _huntTime = _params select 2;


//Systemchat format ["Activating QRF: %1 going to %2",str(_qrfGroups),_initialEnemyPos];
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
	
	[_x,_initialEnemyPos, _huntTime] spawn {
		_group = _this select 0;
		_initialEnemyPos = _this select 1;
		_huntTime = _this select 2;
		_startTime = time; 
		_elapsedTime = 0;

		_huntLoc = _initialEnemyPos;
		_wp = _group addWaypoint [_initialEnemyPos , 1];
		[_group, 1] setWaypointType "MOVE";
		[_group, 1] setWaypointSpeed "FULL";
		[_group, 1] setWaypointCompletionRadius 15;
		
		waitUntil {(getpos (units _group select 0) distance _huntLoc) < 80 || ((time - _startTime) > 100)};

		while {_elapsedTime < _huntTime} do {
			_huntLoc = [[west,false]] call HZ_fnc_avgSideLoc;
			_wpLoc = [(_huntLoc select 0) + random(10), (_huntLoc select 1) + random(10), _huntLoc select 2];
			Systemchat format ["updating hunt target to: %1", _wpLoc];
			_wp2 = _group addWaypoint [_wpLoc, 0];
			_wp2 setWaypointType "MOVE";
			_wp2 setWaypointSpeed "NORMAL";
			_group setBehaviour "AWARE";

			_startTime = time - _startTime;
			sleep 40;
		}; //end while
		
	}; //end spawn block
	
	sleep 10; //10 second delay between groups
} foreach _qrfGroups;

}; //end spawn block