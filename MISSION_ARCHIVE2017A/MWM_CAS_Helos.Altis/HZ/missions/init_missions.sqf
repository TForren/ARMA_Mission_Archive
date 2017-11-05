
destroy_landVehicle = compile preprocessfilelinenumbers "HZ\missions\destroy_landVehicle.sqf";
destroy_airVehicle = compile preprocessfilelinenumbers "HZ\missions\destroy_landVehicle.sqf";
destroy_building = compile preprocessfilelinenumbers "HZ\missions\destroy_landVehicle.sqf";
eliminate_HVT = compile preprocessfilelinenumbers "HZ\missions\eliminate_hvt.sqf";
eliminate_aircraft = compile preprocessfilelinenumbers "HZ\missions\eliminate_aircraft.sqf";


MissionCount = 1;
missionInProgress = false;
missionfailed = false;
missionCompleted = false;
missionCanceled = false;
cancelMission = false;

destroyMissions = [destroy_landVehicle,destroy_building];
eliminateMissions = [eliminate_HVT,eliminate_aircraft];
//eliminateMissions = [eliminate_HVT];
recoveryMissions = [];
stealMissions = []; //steal_weapon, steal_vehicle

categories = [destroyMissions,eliminateMissions];
//categories = [eliminateMissions];

recoverObjects = ['B_Slingload_01_Ammo_F', 'CargoNet_01_barrels_F', 'CargoNet_01_box_F', 'B_CargoNet_01_ammo_F', 'B_Slingload_01_Cargo_F', 'B_Slingload_01_Fuel_F', 'B_Slingload_01_Medevac_F', 'B_Slingload_01_Repair_F'];
