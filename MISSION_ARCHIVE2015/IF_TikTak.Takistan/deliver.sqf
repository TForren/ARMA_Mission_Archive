if (isServer) then {
_crate = _this select 0;
_i = 0;
	while (_i < 20) do 
	{
	_food = "Land_BottlePlastic_V2_F" createvehicle [(getpos _crate) select 0, (getpos _crate) select 1, (getpos _crate) + 0.5];
	_food setVelocity [(random 5), (random 5), (random 5)];
	sleep 0.05;
	_i = _i + 1;
	};
sleep 3;
deletevehicle _crate;
};

//Land_BottlePlastic_V2_F Land_TacticalBacon_F Land_BakedBeans_F