#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("START POSITION")
<br/>
The entire platoon starts in what is known as the Jungle Movement Formation (FM 90-5 Jungle Operations).<br/>
<br/>
This formation is described with one whole squad in file on the left flank, another whole squad on the right flank, and then any additional soldiers at the front and rear security.
<br/>
<br/>
The squad leaders are to be positioned in the middle of their files directly adjacent to the platoon leader who will be in the center of the entire formation.
<br/>
<br/>
DO NOT MOVE until you look around and fully understand the formation. It is your only lifeline of dense-jungle survival.
ENDTAB;

NEWTAB("RESPAWNS")
<br/>
100 respawn tickets.<br/>
Vehicles do not respawn.<br/>
ENDTAB;

NEWTAB("RESUPPLY")
<br/>
resupply crates are located under the tents.<br/>
ENDTAB;

NEWTAB("MUSIC")
<br/>
Vehicles equip with cassette players are activated by the driver/pilot. the decision to play music is determined by the SQUAD LEADER. Note that music cannot be interrupted.<br/>
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
MCC and Zeus.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE