_rNumber = random 1; 

if (_rNumber > .5) then {
	_this addMagazine ["16Rnd_9x21_Mag", 4]; _this addWeapon "hgun_mas_glock_F";
}
else {
	_this playmove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon";
}