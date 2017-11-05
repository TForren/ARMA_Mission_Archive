with missionNamespace do {
	//--- Infantry
	GUER_SOLDIER = "ShootaBoy1";
	GUER_SOLDIER_AA = "ShootaBoy1";
	GUER_SOLDIER_AR = "ArdBoy1";
	GUER_SOLDIER_AT = "TankBusta1";
	GUER_SOLDIER_CREW = "ShootaBoy1";
	GUER_SOLDIER_LAT = "TankBusta1";
	GUER_SOLDIER_HAT = "TankBusta1";
	GUER_SOLDIER_ENGINEER = "ShootaBoy1";
	GUER_SOLDIER_GL = "TankBusta1";
	GUER_SOLDIER_MEDIC = "ShootaBoy1";
	GUER_SOLDIER_PILOT = "ShootaBoy1";
	GUER_SOLDIER_SQUADLEADER = "Boss1";
	GUER_SOLDIER_SNIPER = "ShootaBoy1";
	GUER_SOLDIER_MARKSMAN = "ShootaBoy1";
	GUER_SOLDIER_TEAMLEADER = "Boss1";

	//--- Infantry - Mixed
	GUER_SOLDIERS_MG = [GUER_SOLDIER_AR];
	GUER_SOLDIERS_AT_LIGHT = [GUER_SOLDIER_LAT];
	GUER_SOLDIERS_AT_MEDIUM = [GUER_SOLDIER_AT];
	GUER_SOLDIERS_AT_HEAVY = [GUER_SOLDIER_HAT];
	GUER_SOLDIERS_SPECOPS = ["ArdBoy1"];
	GUER_SOLDIERS_ENGINEER = [GUER_SOLDIER_ENGINEER, "ArdBoy1"];
	GUER_SOLDIERS_SNIPERS = [GUER_SOLDIER_SNIPER, "ArdBoy1", "ArdBoy1"];
	GUER_SOLDIERS_MARKSMEN = [GUER_SOLDIER_MARKSMAN, GUER_SOLDIER_MARKSMAN, "ArdBoy1"];

	//--- Vehicles
	GUER_VEHICLE_APC = ["Trukk1"]; //todo: replace with real veh later on
	//GUER_VEHICLE_APC = [["I_APC_Wheeled_03_cannon_F"],["I_APC_tracked_03_cannon_F"]]; //todo: replace with real veh later on
	// GUER_VEHICLE_APC = ["RHS_M2A3_BUSKI_wd", "rhs_btr80_vmf", "rhsusf_m113_usarmy", "rhs_btr80_vmf"]; //todo: replace with real veh later on
	GUER_VEHICLE_ARMORED_HEAVY = ["Deffkopta_02_0"];
	GUER_VEHICLE_ARMORED_LIGHT = ["Deffkopta_01_0"];
	// GUER_VEHICLE_MECHANIZED = ["mechanized1","mechanized2"];
	GUER_VEHICLE_MOTORIZED = ["Deffkopta_02_0","Deffkopta_02_0","Deffkopta_01_0"];

	//--- Vehicles - Mixed
	// GUER_VEHICLES_AA_LIGHT = GUER_VEHICLE_AA;
	// GUER_VEHICLES_LIGHT = GUER_VEHICLE_MECHANIZED + GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_LIGHT = GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_MEDIUM = GUER_VEHICLE_ARMORED_LIGHT + GUER_VEHICLE_APC;
	//GUER_VEHICLES_MEDIUM = GUER_VEHICLE_APC;
	// GUER_VEHICLES_MEDIUM = GUER_VEHICLE_MOTORIZED;
	GUER_VEHICLES_HEAVY = GUER_VEHICLE_ARMORED_HEAVY;
};