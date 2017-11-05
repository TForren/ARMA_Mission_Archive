_id = _this select 2;
_leader = _this select 3 select 0;

if ((vehicle _leader) != _leader) then { //Checks if the squad leader is in a vehicle
	if ((vehicle _leader) emptyPositions "cargo" == 0) then { //Checks if vehicle has empty seats
		hint "No more room in the squad leaders vehicle, try again later";
	}
	else {
		player moveincargo (vehicle _leader);
		player removeAction _id;
	};
}
else {
	player setPos (getpos _leader);
	player removeAction _id;
};