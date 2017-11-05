_tarArray = ((_this select 3) select 0);

{_x animate["terc", 1];_x hideobject false} forEach _tarArray;


 if ((_this select 1) == west) then [{(_this select 0) enableSimulation false}, if ((_this select 1) == east) then {(_this select 0) enableSimulation false}]