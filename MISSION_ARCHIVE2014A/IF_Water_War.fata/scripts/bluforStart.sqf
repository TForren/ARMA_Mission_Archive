
{
	removeallweapons _x;
	Removeheadgear _x; 
	removeBackpack _x;
	removeVest _x;
	_x unassignItem "NVGoggles";
	_x removeItem "NVGoggles";
    _x switchMove "amovppnemstpsraswrfldnon";
} forEach thislist;