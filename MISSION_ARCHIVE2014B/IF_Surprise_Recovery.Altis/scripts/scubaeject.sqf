{unAssignVehicle _x;_x action ["eject",chopper]} forEach units opDivers1;sleep 3;{_x doMove getpos c1} forEach units opDivers1;
sleep 5;
{unAssignVehicle _x;_x action ["eject",chopper]} forEach units opDivers2;sleep 3;{_x doMove getpos c2} forEach units opDivers2;
sleep 5;
{unAssignVehicle _x;_x action ["eject",chopper]} forEach units opDivers3;sleep 3;{_x doMove getpos c3} forEach units opDivers3;
sleep 5;
chopper flyinheight 100;
chopper doMove getmarkerPos "leave";