/////////////////////////////////////////
//   _____  _____ _____         ____   //
//  / ____|/ ____/ ____|  /\   |___ \  //
// | |    | (___| (___   /  \    __) | //
// | |     \___ \\___ \ / /\ \  |__ <  //
// | |____ ____) |___) / ____ \ ___) | //
//  \_____|_____/_____/_/    \_\____/  //
// -Cyro's Spectator Script for ArmA 3 //
//				  v0.3				   //
/////////////////////////////////////////

I. Configuration & Installation:
--------------------------------
A. Installation:

	1. Extract the CSSA3 folder and stringable.xml to your mission directory.

	2. Add the following to the init.sqf file:
			
[] execVM "CSSA3\CSSA3_init.sqf";

	3. Add the following to your description.ext:

respawnDelay = 9999999; // 9999999 or greater = No Respawn
//Changes respawn, respawnDialog and respawnTemplates parameters.
#include "CSSA3\CSSA3_header.hpp"
	
B. Configuration:

	To customize the script, add the following variables to the init.sqf

	//Only players can be spectated. True/False
	CSSA3_onlySpectatePlayers = False;

	//Perspective modes that can be used.
	CSSA3_allowedModes = ["freeCam","firstPerson","thirdPerson"];

	//Sides that BLUFOR players can spectate.
	CSSA3_bluforSpectateable = [blufor, opfor, civilian, resistance];

	//Sides that OPFOR players can spectate.
	CSSA3_opforSpectateable = [blufor, opfor, civilian, resistance];

	//Sides that CIVILIAN players can spectate.
	CSSA3_civilianSpectateable = [blufor, opfor, civilian, resistance];

	//Sides that INDEPENDENT players can spectate.
	CSSA3_independentSpectateable = [blufor, opfor, civilian, resistance];
	
C. In-game:
	
	- Manually start the spectator script by executing the following:
	["forced"] spawn CSSA3_fnc_createSpectateDialog;

	- Press 'F1' in the spectator script for more info.

	- CSSA3 can be forced to stay closed while the player is still dead:
	[] call CSSA3_fnc_forceClose;

III. Credit:
------------------
Created by Cyrokrypto

Thanks to:
- BIS's Karel Moricky for the splendid camera and arsenal functions.
- Zulu Alpha's Phoenix for snippets of code.
- The Zulu-Alpha and BDR communities for testing.
- LordHeart for code recommendations.
- {BDR} Nemesi for the Italian translation.
- Everyone else who helped me out.

IV. Known Issues:
------------------
A. Issues:
- Click to interact on infantry can be unreliable since there is currently
  no infantry intersect command.
- First person camera placement can be a bit unreliable.
- Click to interact doesn't work under water.

B. Planned Features:
- Improved third person perspective.
- Smarter freecam camera placement.
- Adaptive map and HUD updating based on frame rate.
- Improved map markers.
- Reduction of file sizes. (Started)

V. Changelog:
-------------
Version 0.3
- Fixed slow listbox updating, (onEachFrame and diag_tickTime used instead is spawn and sleep.) Thanks LH.
- Added function to force CSSA3 to close (won't re-open if player is dead): [] call CSSA3_fnc_forceClose;
- Overall performance improvements.
- Fixed compatibility with AGM.
- Minor HUD tweaks.

Version 0.2
- Added variables allowing advanced configuration. (Allowed perspectives, spectatable sides,
  force players only) 
- Rewrote unit list updating (now faster)
- UI positioning fixes.
- Localization fixes.
- Fixed RPT spam.
- Removed filter when player dies under water.
- Mutliple other bug fixes.

Version 0.1
- Test release.

VI. License:
------------    
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.