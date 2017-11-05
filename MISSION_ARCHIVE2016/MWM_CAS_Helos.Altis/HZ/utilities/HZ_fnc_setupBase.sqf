baseObjects = [
// CLASSNAME, pos, dir, init
//["Land_fort_artillery_nest_EP1", [14620.8,16752.2,0], 0, ""]
];

_exclude = [cram1,cram2];

baseCenter = [14370.1,16264.9,0];

{
	if !(_x in _exclude) then {	
		_classname = typeOf _x;
		_pos = getPos _x;
		_dir = getDir _x;
		baseObjects = baseObjects + [[_classname,_pos,_dir,""]];
		baseObjectInstances = baseObjectInstances + [_x];
	};
} foreach nearestObjects [baseCenter, ["air","landVehicle"], 900];

diag_log format["base object Instances: %1",baseObjectInstances];