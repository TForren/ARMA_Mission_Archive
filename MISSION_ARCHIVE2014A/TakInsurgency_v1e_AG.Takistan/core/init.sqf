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
* File Modified on: 1/30/2014
*
*
* You are free to edit this mission for your personal or group use. Please do not re-release the map without the consent of the owner.
*
* Special Thanks:
*
* ArmA Tactical Combat Applications Group - Tactical Realism http://www.ATCAG.enjin.com
* Tangodown - Tactical Gaming Community http://www.tangodown.nl/
* Whiskey Company - Tactical Realism http://www.TheWhiskeyCo.com/
***********************************************************************************************/

#include <modules\modules.hpp>

#ifndef execNow
#define execNow call compile preprocessfilelinenumbers
#endif

#ifdef gridMarkers
if (isServer || isDedicated) then {
	null = ["null"] execVM "core\modules\gridMarkers\createMarkers.sqf";
};
#endif

#ifdef cacheScript
execNow "core\modules\cacheScript\cache.sqf";
#endif

#ifdef intelSpawn
if (isServer || isDedicated) then {
	[] execVM "core\modules\cacheScript\Functions\spawnIntel.sqf";
};
#endif