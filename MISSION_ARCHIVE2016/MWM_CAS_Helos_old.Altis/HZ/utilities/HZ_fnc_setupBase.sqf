baseObjects = [
// CLASSNAME, pos, dir, init
//["Land_fort_artillery_nest_EP1", [14620.8,16752.2,0], 0, ""]
];

baseCenter = [14654.6,16731,0];

{
	_classname = typeOf _x;
	_pos = getPos _x;
	_dir = getDir _x;
	baseObjects = baseObjects + [[_classname,_pos,_dir,""]];
	baseObjectInstances = baseObjectInstances + [_x];
} foreach nearestObjects [baseCenter, ["air","landVehicle"], 900];