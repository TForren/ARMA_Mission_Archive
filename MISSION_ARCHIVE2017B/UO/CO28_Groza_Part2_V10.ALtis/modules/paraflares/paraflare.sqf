//Written by beta
//Modified by TinfoilHate for A3 / config grabbing nonsense, colors
//Launches a paraflare

	private ["_pos", "_dir", "_flare"];

	_pos = player modelToWorld [0, 1, 0];
	_pos = [_pos select 0, _pos select 1, 1.5];
	_dir = getDir player;
	_color = _this select 0;
	_magType = "";
	_magColor = [0,0,0];

	lynx_fireAnim = {
		_this playActionNow "Gear";
	};

	lynx_flareSound = {
		(_this select 0) say3D (_this select 1);
	};

	switch (_color) do {
		case 1:{_magType = "FlareWhite_F"; _magColor = [1,1,1];};
		case 2:{_magType = "FlareGreen_F"; _magColor = [0.25,0.5,0.25];};
		case 3:{_magType = "FlareYellow_F"; _magColor = [0.5,0.5,0.25];};
		case 4:{_magType = "FlareRed_F"; _magColor = [0.5,0.25,0.25];};
	};

	_ammoType = getText (configFile >> "CfgMagazines" >> _magType >> "ammo");
	player removeMagazine _magType;

	[player,"lynx_fireAnim"] spawn BIS_fnc_MP;

	sleep 1;

	[[player,"flareFire"],"lynx_flareSound"] spawn BIS_fnc_MP;

	sleep 0.6;

	_flare = _ammoType createVehicle _pos;
	_flare setVelocity [sin (_dir) * 90, cos (_dir) * 90, 80];
	
	[[_flare,"flareShot"],"lynx_flareSound"] spawn BIS_fnc_MP;
	
	sleep 2.6;
	
	_flareLight = "#lightpoint" createVehicle position _flare;
	_flareLight setLightBrightness 10;
	_flareLight setLightFlareSize 100;
	_flareLight setLightColor _magColor;
	_flareLight lightAttachObject [_flare, [0,0,0]];
	
	sleep 32.4;
	
	deleteVehicle _flareLight;