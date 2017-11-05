_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

{_x setdamage 0.91 } foreach nearestTerrainObjects[_gen,[], 10,true,true];

_gen removeAction _id;