hint "Click on the map where you'd like to HALO jump.";
openMap true;

onMapSingleClick {
	onMapSingleClick {};
	player setpos _pos; 
	[player, 3500, false, true, true] call COB_fnc_HALO;
	hint '';
	openMap false;
	true
};