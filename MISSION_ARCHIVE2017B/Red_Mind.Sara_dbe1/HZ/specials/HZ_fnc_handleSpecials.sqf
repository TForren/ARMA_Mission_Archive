_group = _this select 0;
_spawned = _this select 1;

switch (_chosenGroup) do {


case "GAZ66UAV": {
	[_spawned] execVM "HZ\specials\HZ_spec_gazUAV.sqf";
};

case "GAZ66MGNest": {
	[_spawned] execVM "HZ\specials\HZ_spec_gazMGNest.sqf";
};

case "GAZ66Prop": {
	[_spawned] execVM "HZ\specials\HZ_spec_gazProp.sqf";
};

};