_groups = [
//Name, ID, Cost, uses 
["Opal Blitz Motorized Infantry","MotorInf", 100, 3],
["Kfz251 Halftrack Mechanized Infantry","HalftrackMech", 150, 3]
];

_veh = [
//Name, ID, Cost, uses 
["Kubelwagen (MG42)","kubel42", 30, 4],
["Kubelwagon","kubel", 20, 6],
["PzKpfw VI","panzerVI", 300, 2]
];

_inf = [
//Name, ID, Cost, uses 
["Rifle Squad","RIFLEINF", 50, 4],
["Scout Squad","SCOUTINF", 50, 4],
["Patrol Team","PATROL", 20, 3],
["Sniper Team","SNIPER", 30, 2]
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

