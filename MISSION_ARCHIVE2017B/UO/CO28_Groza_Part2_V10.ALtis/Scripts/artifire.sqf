private["_mortar","_radius","_rounds","_pos","_delay","_ammount"];
_mortar = _this select 0;
_radius = _this select 1;
_pos = _this select 2;
_rounds = _this select 3;
_delay = _this select 4;
_ammount = _this select 5;

if(isServer) then
{
	//put into the init of the unit _arti = [this, 500, getpos target,40,5,5] execVM "artifire.sqf";
	//mortar = reference to your artillery
	//radius = radius of the artillery fire
	//_pos = center of impact area
	//_ammount = rounds in a firemission
	//to change ammunition change _selection

	_selection = 0;

	sleep(10);
	_mortar commandArtilleryFire 
							[
								_pos,
								getArtilleryAmmo [_mortar] select _selection,
								1
							];
	_rounds= _rounds -1;
	_eta = _mortar getArtilleryETA [_pos, getArtilleryAmmo [_mortar] select _selection];
	sleep(_eta + 5); //spotting round


	while{_rounds != 0} do
	{
		_newpos = 
				[
				(_pos select 0) - _radius + (2 * random _radius),
				(_pos select 1) - _radius + (2 * random _radius),
				0
				];
		if((_rounds / _ammount) >= 1) then 
		{
			_mortar commandArtilleryFire 
							[
								_newpos,
								getArtilleryAmmo [_mortar] select _selection,
								_ammount
							];
			
			_rounds = _rounds - _ammount;
		}
		else
		{
			_mortar commandArtilleryFire 
							[
								_newpos,
								getArtilleryAmmo [_mortar] select _selection,
								_rounds
							];
			
			_rounds = 0;
		};
		_mortar setVehicleammo 1;
		sleep(_delay * _ammount);
	};

	//modification
	{deleteVehicle _x;}forEach crew _mortar;
};