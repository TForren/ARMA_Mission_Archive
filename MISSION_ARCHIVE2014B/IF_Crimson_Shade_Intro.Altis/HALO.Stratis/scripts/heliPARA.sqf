if (!isServer || isDedicated) exitWith {};

_spawnDir = [getMarkerPos "spawnMrk", getMarkerPos "endMrk"] call BIS_fnc_dirTo;

_helisv = [getMarkerPos "spawnMrk", _spawnDir, "B_Heli_Transport_01_camo_F", blufor] call BIS_fnc_spawnVehicle;
_heli = _helisv select 0;
_heliGroup = _helisv select 2;

_dir = direction _heli;
_heli setPos [getPos _heli select 0, getPos _heli select 1, 300];
_heli setVelocity [sin (_dir) * 50, cos (_dir) * 50, 0];
_heli flyInHeight 300;
_heli lock true;
{_heli animateDoor [_x, 1]} forEach ["door_L","door_R"];
_heli addAction ["<t color='#2bf000'>START PARADROP</t><br/><img size='3' image='\a3\ui_f\data\gui\cfg\CommunicationMenu\supplydrop_ca.paa'/>", {[player, vehicle player, true, true] call COB_fnc_paradrop}, [], 1, FALSE, TRUE, "", "_this in _target"];

clearBackpackCargo _heli;
clearItemCargo _heli;
clearWeaponCargo _heli;
clearMagazineCargo _heli;

[_heli] spawn {
	private "_heli";
	_heli = _this select 0;
	
	while {alive _heli} do { 
		(driver _heli) action ["collisionlightOn", _heli];
		(driver _heli) action ["lightOn", _heli];
		sleep 0.01;
	};
};

player assignAsCargo _heli;
player moveInCargo _heli;

_wp0 = _heliGroup addWaypoint [getMarkerPos "endMrk", 0];
_wp0 setWaypointType "MOVE";
_wp0 setWaypointSpeed "NORMAL";
_wp0 setWaypointBehaviour "CARELESS";
_wp0 setWaypointStatements ["true", "{deleteVehicle _x} forEach (crew vehicle this) + [vehicle this]; deleteGroup group this"];