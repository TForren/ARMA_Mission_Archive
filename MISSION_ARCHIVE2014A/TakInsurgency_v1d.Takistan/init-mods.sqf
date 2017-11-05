/**********************************************************************************************
*      /\__  _\                                                                                       
*      \/_/\ \/     ___     ____  __  __  _ __    __      __    ___     ___   __  __                  
*  _______\ \ \   /' _ `\  /',__\/\ \/\ \/\`'__\/'_ `\  /'__`\/' _ `\  /'___\/\ \/\ \  _______        
* /\______\\_\ \__/\ \/\ \/\__, `\ \ \_\ \ \ \//\ \L\ \/\  __//\ \/\ \/\ \__/\ \ \_\ \/\______\       
* \/______//\_____\ \_\ \_\/\____/\ \____/\ \_\\ \____ \ \____\ \_\ \_\ \____\\/`____ \/______/       
*          \/_____/\/_/\/_/\/___/  \/___/  \/_/ \/___L\ \/____/\/_/\/_/\/____/ `/___/> \              
*                                                 /\____/                         /\___/              
*                                                 \_/__/                          \/__/     
*
* Insurgency ALiVE by Mphillips'Hazey' + Sacha Ligthert + Phronk
*
* File Modified on: 5/2/2014
*
* All Hail the Great Cthulhu
*  
*
* You are free to edit this mission for your personal or group use. Please do not re-release the map without the consent of the owner.
*
* Special Thanks:
*
* Cheers to the ALiVE Dev Team - http://dev-heaven.net/projects/alive/
* Tangodown - Tactical Gaming Community http://www.tangodown.nl/
* Whiskey Company - Tactical Realism http://www.TheWhiskeyCo.com/
***********************************************************************************************/

// ACRE Config and sync
if (isClass(configFile>>"CfgPatches">>"acre_main")) then {
	// Add ACRE box near current ammo boxes - ACRE_RadioBox
	if (isServer) then {
	
	private ["_radiomarkers"];
	_radiomarkers = ["Gear_Marker"];
	
		{
			private ["_pos","_newpos"];
			if !(str (markerPos _x) == "[0,0,0]") then {
				_pos = markerPos _x;
					if (count nearestObjects [_pos, ["ACRE_RadioBox"], 10] == 0) then {
						_newpos = [_pos, 0, 10, 2, 0, 0, 0] call BIS_fnc_findSafePos;
						"ACRE_RadioBox" createVehicle _newpos;
						diag_log format ["Creating ACRE Radio Box at %1", _newpos];
					};
			};
		} foreach _radiomarkers;
	};
};
// TFAR Config and sync
if (isClass(configFile>>"CfgPatches">>"task_force_radio")) then {
	// Add TFAR box near current ammo boxes - TF_NATO_Radio_Crate
	if (isServer) then {
	
	private ["_radiomarkers"];
	_radiomarkers = ["Gear_Marker"];
	
		{
			private ["_pos","_newpos"];
			if !(str (markerPos _x) == "[0,0,0]") then {
				_pos = markerPos _x;
					if (count nearestObjects [_pos, ["TF_NATO_Radio_Crate"], 10] == 0) then {
						_newpos = [_pos, 0, 10, 2, 0, 0, 0] call BIS_fnc_findSafePos;
						"TF_NATO_Radio_Crate" createVehicle _newpos;
						diag_log format ["Creating TFAR Radio Box at %1", _newpos];
					};
			};
		} foreach _radiomarkers;
	};
};