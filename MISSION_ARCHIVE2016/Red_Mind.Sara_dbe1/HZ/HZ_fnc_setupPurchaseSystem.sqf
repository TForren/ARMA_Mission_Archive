_groups = [
//Name, ID, Cost, uses 
["Ural Motorized Infantry","MotorInf", 90, 3],
["BTR80 Mechanized Infantry","BTR80Mech", 110, 3],
["BTR80A Mechanized Infantry","BTR80AMech", 130, 2]
];

_veh = [
//Name, ID, Cost, uses 
["GAZ Tigr","GAZArmed", 20, 4],
["UAZ","UAZ", 4, 6],
["BMP-2K","BMP2K", 200, 2],
["ZSU-23","ZSU23", 180, 2],
["T-80A","T80A", 250, 1],
["GAZ-66 (UAV)","GAZ66UAV", 100, 1],
["GAZ-66 (MG Nest)","GAZ66MGNest", 50, 3],
["GAZ-66 (Propaganda)","GAZ66Prop", 10, 3],
["Mi-8MTV (UPK)","MI8MTV", 150, 1],
["Mi-8","MI8", 50, 2]
];

_inf = [
//Name, ID, Cost, uses 
["Infantry (Marksman)","INFMARK", 70, 3],
["Infantry (GPMG)","INFGPMG", 70, 3],
["Section Fire Team","INF_FT", 30, 3],
["Section AA","INF_AA", 25, 2],
["Section AT","INF_AT", 30, 2]
];

infLaptop addAction ["<t color='#FF0000'>===Infantry===</t>", "",[],5];
for [{_i=0}, {_i<(count _inf)}, {_i=_i+1}] do
{
	_curInfo = _inf select _i;
	_name = _curInfo select 0;
	_ID = _curInfo select 1;
	_cost = _curInfo select 2;
	_uses = _curInfo select 3;
	_string = format["%1 - %2 (max: %3)",_name, _cost, _uses];
	_purchase = infLaptop addaction [_string, HZ_fnc_requestGroup, [_ID], 1, false, true, ""];	
	[commandModule, [_ID, _uses]] remoteExec ["setVariable", 2];
};

vehLaptop addAction ["<t color='#56ff30'>===Vehicles===</t>", "",[],5];

for [{_i=0}, {_i<(count _veh)}, {_i=_i+1}] do
{
	_curInfo = _veh select _i;
	_name = _curInfo select 0;
	_ID = _curInfo select 1;
	_cost = _curInfo select 2;
	_uses = _curInfo select 3;
	_string = format["%1 - %2 (max: %3)",_name, _cost, _uses];
	_purchase = vehLaptop addaction [_string, HZ_fnc_requestGroup, [_ID], 1, false, true, ""];	
	[commandModule, [_ID, _uses]] remoteExec ["setVariable", 2];
};

groupLaptop addAction ["<t color='#3443ed'>===Groups===</t>", "",[],5];
for [{_i=0}, {_i<(count _groups)}, {_i=_i+1}] do
{
	_curInfo = _groups select _i;
	_name = _curInfo select 0;
	_ID = _curInfo select 1;
	_cost = _curInfo select 2;
	_uses = _curInfo select 3;
	_string = format["%1 - %2 (max: %3)",_name, _cost, _uses];
	_purchase = groupLaptop addaction [_string, HZ_fnc_requestGroup, [_ID], 1, false, true, ""];	
	[commandModule, [_ID, _uses]] remoteExec ["setVariable", 2];
};

