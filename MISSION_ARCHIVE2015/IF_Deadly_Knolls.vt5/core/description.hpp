#ifdef description
	
	#include "dia\rscdefinitions.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load
	#include "dia\endscreen\dia_endscreen.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load

	respawnDelay = 9999999; // 9999999 or greater = No Respawn
	//Changes respawn, respawnDialog and respawnTemplates parameters.
	#include "CSSA3\CSSA3_header.hpp"
	disabledAI = 1; //disabledAI does so not slotted units do not spawn as ai
	enableDebugConsole = 1;
	
	class Extended_PreInit_EventHandlers {
		
		class Mission {
		
			init = "'' call compile preprocessFileLineNumbers 'preinit.sqf'; FNC_GearScript = compile preprocessFileLineNumbers 'customization\gear.sqf'; FNC_VehicleGearScript = compile preprocessFileLineNumbers 'customization\vehGear.sqf';"; //Compiles the gear script for the server and client
		
		};
	};
	
#endif
	
#ifdef description_titles
	
	#include "dia\debug\dia_debug.hpp" //Must have for the end screen to work, if removed Arma 3 will crash on mission load

#endif