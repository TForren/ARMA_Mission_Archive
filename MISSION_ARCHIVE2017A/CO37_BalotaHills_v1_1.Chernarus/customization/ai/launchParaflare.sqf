//Written by beta
//Launches an AI paraflare
//Modified by TinfoilHate for light source

private ["_pos", "_dir", "_flare", "_unit"];

_unit = _this select 0;
_pos = _unit modelToWorld [0, 1, 0];
_pos = [_pos select 0, _pos select 1, 1.5];
_dir = getDir _unit;

_flare = "F_40mm_White" createVehicle _pos;
_flare setVelocity [sin (_dir) * 90, cos (_dir) * 90, 80];

sleep 2.6;

[-2, {
	_flareLight = "#lightpoint" createVehicleLocal position _this;
	
	_flareLight setLightBrightness 10;
	_flareLight setLightFlareSize 100;
	_flareLight setLightColor [1,1,1];
	_flareLight lightAttachObject [_this, [0,0,0]];
}, _flare] call CBA_fnc_globalExecute;

//sleep 32.4;
sleep 57.4; //Corrected for 40mm instead of old flare

deleteVehicle _flareLight;