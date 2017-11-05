//Written by beta
//Put AI into trench


if (isServer) then
{
	private ["_unit"];
	
	if (isNil "trenchUnits") then {trenchUnits = []};

	_unit = _this select 0;

	_unit setPos [(((getPos _unit) nearestObject "Fort_EnvelopeSmall") buildingPos 0) select 0, (((getPos _unit) nearestObject "Fort_EnvelopeSmall") buildingPos 0) select 1, 0];
	_unit setUnitPos "UP";
	doStop _unit;
	trenchUnits = trenchUnits + [_unit];
};

