#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
		So nobody knows if the war is still going on or not but there's a line of dudes to the East that are shooting at us so we're going to shoot back
	ENDTAB;

};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
		So nobody knows if the war is still going on or not but there's a line of dudes to the West that are shooting at us so we're going to shoot back
	ENDTAB;

}; //end EAST


}; //End of switch
/*
if (player in [civ1, civ2, civ3]) then {
NEWTAB("Being Afghan")
<br/>
It's a good day to be an Afghan civilian. 
<br/>
<br/>Normal Afghanny houses. 
<br/>Normal Afghanny sands. 
<br/>Normal Afghanny explosions.
ENDTAB;
NEWTAB("Supply Notes")
<br/>
Due to the daily explosions of Afghan, I always keep a crate of basic medical supplies somewhere in the house. In case of emergency, I also keep my old trusty TT33 in the cabinet.
ENDTAB;
}; //end of civs */

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 30 minutes.
<br/>
<br/>Mission ends if:<br/>
All BLUFOR are killed(OPFOR VICTORY)<br/>
All OPFOR are killed(BLUFOR VICTROY)<br/>
Or time limit is hit. Victory will be calculated based on casualties<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();