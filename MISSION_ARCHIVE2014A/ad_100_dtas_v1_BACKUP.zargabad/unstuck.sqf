private ["_dir", "_radius"];
_dir = random 360;
_radius = 30 * sqrt (random 1);
player setPos ([[(objPos select 0) + _radius * (sin _dir), (objPos select 1) + _radius * (cos _dir)]] call fnc_findFlatEmpty);