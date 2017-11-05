//Written by beta
//Put AI into trench
//Edited by TinfoilHate

if (isServer) then
{
	private ["_unit"];

	if (isNil "trenchUnits") then {trenchUnits = []};

	_unit = _this select 0;

	//_unit setPos [(((getPos _unit) nearestObject "Fort_EnvelopeSmall_EP1") buildingPos 0) select 0, (((getPos _unit) nearestObject "Fort_EnvelopeSmall_EP1") buildingPos 0) select 1, 0];
	_unit setUnitPos "MIDDLE";
	_unit disableAI "PATH";

	trenchUnits = trenchUnits + [_unit];
};