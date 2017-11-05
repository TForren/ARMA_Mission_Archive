// Pickupscript
_pole = _this select 0; 
_user = _this select 1;
_id = _this select 2;  

if ((side _user == east) and !planning) then {
_user moveincargo slaural;
}
else {
_pole say3d "nope";
_user setvelocity [0,0,0];
_user setVelocity [
	((velocity _user) select 0) + (sin (direction _user) * -6), 
	((velocity _user) select 1) + (cos (direction _user) * -6), 
	((velocity _user) select 2) + 5
];
sleep 1;
};