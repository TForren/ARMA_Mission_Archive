_groups = [
//Name, ID, Cost, uses 
["Ural Motorized Infantry","MotorInf", 90, 3],
["BTR80 Mechanized Infantry","BTR80Mech", 110, 2],
["BTR80A Mechanized Infantry","BTR80AMech", 130, 2],
["Section AT","INF_AT", 40, 2],
["Section Fire Team","INF_FT", 30, 3],
["GAZ Tigr","GAZArmed", 20, 4],
["BMP-2K","BMP2K", 200, 2],
["T-80A","T80A", 260, 1],
["GAZ-66 (Propaganda)","GAZ66Prop", 10, 1]
];

for [{_i=0}, {_i<(count _groups)}, {_i=_i+1}] do
{
	_curInfo = _groups select _i;
	_name = _curInfo select 0;
	_ID = _curInfo select 1;
	_cost = _curInfo select 2;
	_uses = _curInfo select 3;
	_string = format["%1 - %2 (max: %3)",_name, _cost, _uses];
	_purchase = spawnCenter addaction [_string, HZ_fnc_requestGroup, [_ID], 1, false, true, ""];	
	[commandModule, [_ID, _uses]] remoteExec ["setVariable", 2];
};

