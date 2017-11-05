
destroy_landVehicle = compile preprocessfilelinenumbers "HZ\missions\destroy_landVehicle.sqf";
destroy_airVehicle = compile preprocessfilelinenumbers "HZ\missions\destroy_landVehicle.sqf";
destroy_building = compile preprocessfilelinenumbers "HZ\missions\destroy_landVehicle.sqf";


destroyMissions = [destroy_landVehicle,destroy_airVehicle,destroy_building];
secureMissions = [];
stealMissions = []; //steal_weapon, steal_vehicle

//categories = [destroyMissions,secureMissions,stealMissions];
categories = [destroyMissions];

