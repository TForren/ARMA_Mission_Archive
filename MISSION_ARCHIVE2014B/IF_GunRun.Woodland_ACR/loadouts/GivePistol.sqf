/*Clearing Set*/
removeallweapons _this;


	_rand = random(1);
	
if (_rand <= .5) then{
	_this addMagazine ["16Rnd_9x21_Mag", 16];
	_this addMagazine ["16Rnd_9x21_Mag", 16];
	_this addMagazine ["16Rnd_9x21_Mag", 16];
	_this addMagazine ["16Rnd_9x21_Mag", 16];
	_this addWeapon "hgun_Rook40_F";
}
else{
	_this addMagazine ["9Rnd_45ACP_Mag", 9];
	_this addMagazine ["9Rnd_45ACP_Mag", 9];
	_this addMagazine ["9Rnd_45ACP_Mag", 9];
	_this addMagazine ["9Rnd_45ACP_Mag", 9];
	_this addWeapon "hgun_ACPC2_F";
}

