
if (!isServer) exitWith {};

boatPickup = false;
boatExtract = false;

possiblebarrels = [12155.3,23000.4,3.75424] nearObjects 10;
barrels = [];

{
	if (typeof _x == "FlexibleTank_01_sand_F") then {
		barrels = barrels + [_x];
	};
} foreach possiblebarrels;

startingBarrels = count barrels;
endingBarrels = startingBarrels;

/*
Takes in: [barrel, boat]
Returns: N/A
*/
fnc_grabBarrel = {
	boatPickup = false;
	_barrel = _this select 0;
	_boat = _this select 1;

	_barrel disableCollisionWith _boat;
	
	_relDir = [_barrel, _boat modelToWorld [0,2,0]] call BIS_fnc_relativeDirTo;
	_barrel setdir (getdir _barrel + _relDir);
	sleep 0.01;
	_barrel setVelocity[0,0,5];
	sleep 0.4;
	_barrel setVelocity [
		(sin (direction _barrel) * 18), 
		(cos (direction _barrel) * 18), 
		5];
	sleep 1.5;
	_barrel attachTo [_boat, [0, 1.5, -0.2] ]; 
};

/*
Takes in: [barrel]
Returns: N/A


	cocaineboat allowdamage false;
	boatExtract = false;
	_barrel = _this select 0;
	detach _barrel;
	_barrel setVelocity [0,0,50];
	sleep 2;
	deletevehicle _barrel;
	endingBarrels = endingBarrels - 1;
	cocaineboat allowdamage true;

*/
fnc_extractBarrel = {
	cocaineboat allowdamage false;
	boatExtract = false;
	_barrel = _this select 0;
	
	detach _barrel;
	_barrel setVelocity[0,0,5];
	_relDir = [_barrel, trawler modelToWorld [0,2,0]] call BIS_fnc_relativeDirTo;
	_barrel setdir (getdir _barrel + _relDir);
	_barrel setVelocity[0,0,5];
	sleep 0.4;
	_barrel setVelocity [
		(sin (direction _barrel) * 25), 
		(cos (direction _barrel) * 25), 
		5];
	sleep 2;
	
	deletevehicle _barrel;
	endingBarrels = endingBarrels - 1;
	cocaineboat allowdamage true;
};

[] spawn {
	_i = 0;
	while {alive cocaineboat} do {
		_curBarrel = barrels select _i;
		waitUntil{sleep 0.4;boatPickup}; //wait until boat is at dock
		[_curBarrel,cocaineboat] call fnc_grabBarrel;
		waitUntil{sleep 0.4;boatExtract}; //wait until boat is ready to extract barrel
		[_curBarrel] call fnc_extractBarrel;
		_i = _i + 1;
	};
};