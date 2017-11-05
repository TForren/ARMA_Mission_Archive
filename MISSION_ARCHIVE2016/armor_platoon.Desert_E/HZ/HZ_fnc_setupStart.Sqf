startLoadingScreen ["BACCONN"];

if (isServer) then {

_tanks = ["rhs_t72ba_tv","rhs_t72bb_tv","rhs_t72bc_tv","rhs_t72bd_tv","rhs_t80","rhs_t80a","rhs_t80b","rhs_t80bk","rhs_t80bv","rhs_t80bvk","rhs_t80u","rhs_t80u45m","rhs_t80ue1","rhs_t80uk","rhs_t80um","rhs_t90a_tv","rhs_t90_tv"];
_ifv = ["rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_tv","rhs_bmp2k_tv","rhs_bmp2d_tv","rhs_bmp2e_tv"];

distanceToObj = "objDist" call BIS_fnc_getParamValue;
enemySize = "enemySize" call BIS_fnc_getParamValue;
enemyGroups = [];

_blacklist = [[[22525.4,19437.8,0],[24672.3,17147.3,0]]];

startPos = [[19733.9,15049.1,0], 0, 11000, 20, 0, 0.070, 0, _blacklist, [14744.1,16712.9,0]] call BIS_fnc_findSafePos;
startBall = "Land_Baseball_01_F" createvehicle startPos;
publicVariable "startPos";
publicVariable "startBall";
objectivePos = [startPos, distanceToObj, (distanceToObj + 2000), 1, 0, 0.070, 0, _blacklist, [11493.8,13225.3,0]] call BIS_fnc_findSafePos;
objBall = "Land_Baseball_01_F" createvehicle objectivePos;
publicVariable "objectivePos";
publicVariable "objBall";

tankCount = floor(enemySize / 1.25);
ifvCount = enemySize - tankCount;
 

_group = nil;
for "_i" from 0 to tankCount do
{
	if (_i mod 4 == 0) then {
		_group = createGroup east;
		enemyGroups = enemyGroups + [_group];
		_group setFormation "Wedge";
	};
	_chosenVehicle = _tanks call BIS_fnc_selectRandom;
	_spawnPos = ([objectivePos, 0, 150, 4, 0, 1, 0] call BIS_fnc_findSafePos);
	_vic = _chosenVehicle createVehicle _spawnPos;
	createVehicleCrew _vic;
	crew _vic join _group;
};

for "_i" from 0 to ifvCount do
{
	_chosenVehicle = _ifv call BIS_fnc_selectRandom;
	_spawnPos = ([objectivePos, 0, 150, 4, 0, 1, 0] call BIS_fnc_findSafePos);
	_vic = _chosenVehicle createVehicle _spawnPos;
	createVehicleCrew _vic;
	crew _vic join (enemyGroups call BIS_fnc_selectRandom);
};

[enemyGroups] spawn {
	enemyGroups = _this select 0;
	while {true} do {
		avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
		newLoc = [(avgLoc select 0) + random 200, (avgLoc select 1) + random 200, (avgLoc select 2)];
		{
			_wp = _x addwaypoint [newLoc,0];
			_wp setWaypointSpeed "NORMAL";
			_wp setWaypointBehaviour "AWARE";
		} foreach enemyGroups;
		sleep 10;
	};
};

playerCount = (count allPlayers);
for "_i" from 0 to ceil(playerCount/3) do
{
	_spawnPos = ([startPos, 0, 70, 4, 0, 1, 0] call BIS_fnc_findSafePos);
	_vic = "rhsusf_m1a2sep1wd_usarmy" createVehicle _spawnPos;
};

["playerPLT",startBall,west,[ "armor","1"],4,1,[west],"1 Armored Company"] call vk_fnc_addMarker;
["enemy1",objBall,east,[ "armor","1"],4,1,[west]," "] call vk_fnc_addMarker;


}; //end server block

EndLoadingScreen;


player setpos ([startPos, 0, 20, 1, 0, 1, 0] call BIS_fnc_findSafePos);