_gen = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_house = nearestObject [gen, "House"];

_house setdamage 0.91;

_gen removeAction _id;