#define framework

#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

//CSSA3 Spectator System
[] execVM "core\CSSA3\CSSA3_init.sqf";
 execVM "randomWeather2.sqf";

//vars
bluforowned = false;
opforowned = false; 
 
#include "HZ_Setup.sqf"

titleText ["", "BLACK IN", 8];
sleep 8;
_any=[
	[
	["Raging Rangers","<t align = 'center' size = '1'>%1</t><br/>"],
	["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
	["","<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

[] spawn {
	while {true} do 
	{
		{
			if ("ACE_Banana" in items _x) then //player has Prototype
			{
				switch (side _x) do {
					case EAST: 
					{ 
					  hint "Spetsnaz have the Prototype!";
					  opforowned = true;
					  bluforowned = false; 
					};
					case WEST: 
					{ 
					  hint "Rangers have the Prototype!";
					  opforowned = false;
					  bluforowned = true;
					};
					
				};
				publicvariable "bluforowned";
				publicvariable "opforowned";
				_x say3D "ping";
				[_x,"ACE_insignia_banana"] call bis_fnc_setUnitInsignia;
			}
			else 
			{
			[_x,""] call bis_fnc_setUnitInsignia; //remove insignia if there
			
			 //Player doesn't have Prototype. Ignore	
			 //hint "this person doesn't have a Prototype";
			};
		} foreach allunits;
	sleep 25;
	};
};



if (isServer) then {
	opforowned = false; //init opfor has the banana
	bluforowned = false; //int blufor has the banana

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel
	
		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			"" call FNC_CurrentCount; //DO NOT REMOVE
			#include "customization\endConditions.sqf" //DO NOT REMOVE

		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE


