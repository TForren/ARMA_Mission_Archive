/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-15 08:09:27
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-25 08:33:32
*/

class NMD_ModuleVehicles_GarageLimit
{
	title = "Garage Spawn Limit";
	values[] = { -1, 1, 5, 10, 15, 20 };
	texts[] = { "No limit", "1", "5", "10", "15", "20" };
	default = 5;
};

class NMD_ModuleVehicles_GarageGC
{
	title = "Garage Vehicle Cleanup Time";
	values[] = { -1, 60, 120, 180, 240, 300 };
	texts[] = { "Disable", "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes" };
	default = 60;
};

class NMD_ModuleVehicles_ServiceCooldown
{
	title = "Vehicle Service Cooldown";
	values[] = { 0, 60, 120, 180, 240, 300 };
	texts[] = { "None", "1 minute", "2 minutes", "3 minutes", "4 minutes", "5 minutes" };
	default = 60;
};