// Pickupscript
_pole = _this select 0; 
_user = _this select 1;
_id = _this select 2;  

a10 setVelocity [
	((velocity a10) select 0) + (sin (direction a10) * 20), 
	((velocity a10) select 1) + (cos (direction a10) * 20), 
	((velocity a10) select 2) + 10
];
