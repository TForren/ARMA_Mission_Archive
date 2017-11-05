_tempGroup = createGroup independent;
_tempGroup setGroupId ["Extra Technical"];
_vehicles = ["LOP_AM_OPF_Offroad_M2","LOP_AM_OPF_Landrover_M2","LOP_AM_OPF_UAZ_DshKM"];
_chosenVehicle = _vehicles call BIS_fnc_selectRandom;

_spawnpos = [spawnPos, 0, 60, 4, 0, 20, 0] call BIS_fnc_findSafePos;

_newVehicle = _chosenVehicle createvehicle _spawnpos;
createVehicleCrew _newVehicle;
{
	_x call FNC_TrackUnit;
	commandModule addCuratorEditableObjects [[_x],true ];
} foreach crew _newVehicle + [_newVehicle];
