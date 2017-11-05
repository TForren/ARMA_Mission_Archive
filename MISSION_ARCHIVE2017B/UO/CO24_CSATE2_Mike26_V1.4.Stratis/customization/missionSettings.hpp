author = "Starfox64"; //Author of the mission
loadScreen = "core\missionLogo.jpg"; //Sets the image displayed during the loading screen
onLoadMission = "A CSAT platoon must hold the Mike-26 air radar station against the AAF."; //Text displayed under the image during the loading screen
onLoadName = "CSATE2 - Mike-26";

class Header {
	
	gameType = Coop;
	minPlayers = 17;
	maxPlayers = 24; //maxPlayers must always be accurate to the amount of playable units
	
};

#include "CfgORBAT.hpp"

enableDebugConsole = 1;