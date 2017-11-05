/*
By Hoizen
huntSide
Tells the group to continously hunt the enemy faction
INTPUT: leader,spread,enemyFaction
OUTPUT: N/A
[this,60,west] call HZ_fnc_huntSide;
*/

if (!isServer) exitWith {};

_this spawn {
	_group = group (_this select 0);
	_spread = _this select 1;
	_enemyFaction = _this select 2;
	

	if ((leader _group) getVariable ["HZ_isHunting",false]) exitWith {/*group already hunting*/};
	(leader _group) setVariable["HZ_isHunting",true];
	
	while {alive (leader _group)} do {
		_avgLoc = [[west,false]] call HZ_fnc_avgSideLoc;
		_newHuntLoc = [(_avgLoc select 0) + (random (_spread*2) - _spread),(_avgLoc select 1) + (random (_spread*2) - _spread),0];
		_group addWaypoint [_newHuntLoc,0];
		[_group,0] setWaypointType "SAD";
		[_group,0] setWaypointCombatMode "RED";
		{_x domove _newHuntLoc} foreach units _group;
		sleep 60;
	};
	
};
