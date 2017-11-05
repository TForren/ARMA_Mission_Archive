

_bunkerType = typeof _this;

_lampType = "Land_PortableLight_single_F";


switch (_bunkerType) do {
    case "Land_Bunker_01_small_F": { 
		_lamp1 = _lampType createvehicle [0,0,0];
		_lamp1 attachTo [_this, [-2.5, -2.2, 0.3] ];
		_lamp1 setdir (getdir bunker) + 10;
		
		_lamp2 = _lampType createvehicle [0,0,0];
		_lamp2 attachTo [bunker, [3.4, -2.2, 0.3] ];
		_lamp2 setdir (getdir bunker) - 70;
	};
    case 2: { hint "2" };
    default { hint "default" };
};
