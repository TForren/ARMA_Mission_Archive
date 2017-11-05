
if (isServer) then {
	Objects = ["Land_GarbageContainer_open_F", "Land_GarbageContainer_closed_F", "Land_WheelieBin_01_F", "Land_FireExtinguisher_F", "Land_GasTank_02_F", "Land_WeldingTrolley_01_F", "Land_RattanChair_01_F", "Land_Portable_generator_F", "Land_WoodenBox_F", "rhs_uaz_open_vv", "FlexibleTank_01_sand_F","FlexibleTank_01_forest_F", "Land_BarrelSand_F", "Land_Icebox_F","Land_Sleeping_bag_brown_folded_F", "Land_ShelvesWooden_F","Land_WaterCooler_01_old_F", "Land_Bench_F"];


	_boom = "Bo_GBU12_LGB" createvehicle (getpos workshopbarrel);
	_boom1 = "HelicopterExploBig" createvehicle (getpos boomloc1);
	_boom2 = "HelicopterExploBig" createvehicle (getpos boomloc2);
	_boom3 = "HelicopterExploBig" createvehicle (getpos boomloc3);
	_boom4 = "HelicopterExploBig" createvehicle (getpos boomloc4);
	{_x setdamage 1} foreach (workshopbarrel nearObjects 30);

	{
		if ( (Typeof _x) in Objects) then {
			_x setVelocity [(random 5),(random 5),(random 20+15)];
		};
	} foreach ((getpos workshopbarrel) nearObjects 20);
	
sleep 10;
deletevehicle _boom;
deletevehicle _boom1;
deletevehicle _boom2;
deletevehicle _boom3;
deletevehicle _boom4;
};