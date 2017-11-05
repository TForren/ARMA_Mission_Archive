/*
By Hoizen
HZ_fnc_garrisonContact
populates buildings with enemy contact
takes in:
[[trigger,number of buildings to populate]]
returns:
N/A
*/
if (!isServer) exitWith {};

[_this select 0] spawn {

	_params = _this select 0;
	_trig = _params select 0;
	_buildingCount = _params select 1;
	_usedBuildings = [];
	
	for [{_i=0}, {_i<_buildingCount}, {_i=_i+1}] do {
		_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
		_chosenBuilding = nearestBuilding _randomLoc;
		
		while {_chosenBuilding in _usedBuildings} do {
			_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
			_chosenBuilding = nearestBuilding _randomLoc;
		};
		_usedBuildings = _usedBuildings + [_chosenBuilding];
		
		_enemyCount = 5 + (random 5);
		//systemchat format ["found building at: %1 for enemy count: %2",getpos _chosenBuilding,_enemyCount];
		[[_chosenBuilding,_enemyCount]] call HZ_fnc_populateHouse;
 	};

}; //spawn