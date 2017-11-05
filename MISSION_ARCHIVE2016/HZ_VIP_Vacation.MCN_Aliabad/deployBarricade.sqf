_truck = _this select 0;
_caller = _this select 1;
_id = _this select 2;



deletevehicle pallets;
deletevehicle pipes;
deletevehicle truckwreck;

barricade attachTo [barricadeTruck, [0.1, -6, -1.2] ];
barricade setdir 0;
detach barricade;

