_vehicle = (_this select 0);

[_vehicle] spawn { 
	_vehicle = _this select 0;
	
	while {true} do { 
		_source01 = "#particlesource" createVehicleLocal (getpos suv1);
//		_source01 setParticleClass "ObjectDestructionFire1Smallx";
		_source01 setParticleClass "LeftDustLongMed";
		_source01 attachto [suv1,[0,0,0]];
	  sleep 10;
	 // deletevehicle _source01;
	};
};
