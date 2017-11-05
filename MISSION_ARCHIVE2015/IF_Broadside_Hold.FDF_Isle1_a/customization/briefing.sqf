#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Novorossiyan Forces are advancing into Ukraine Army terrritoy. For some reason, this farmstead is really important so 2x Ukraine Army rifle squads will protect it.
ENDTAB;


NEWTAB("II. Mission:")
Ukraine Army Forces will defend the farmstead[<marker name='ukraine'>129134</marker>].<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")

<br/>
i) Chain of Command:<br/>
No Change.<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st Platoon, 1st Squad Rifles - Channel 1<br/>
1st Platoon, 2nd Squad Rifles - Channel 2<br/>
<br/>

ENDTAB;

}; //End of west case

case east: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Novorossiyan Forces are advancing into Ukraine Army terrritoy. For some reason, this farmstead is really important so a Mecanized Infantry unit of Novorossiyan forces will attempt to capture it.
ENDTAB;


NEWTAB("II. Mission:")
Novorossiyan Forces will attempt to capture the farmstead[<marker name='ukraine'>129134</marker>].<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")

<br/>
i) Chain of Command:<br/>
No Change.<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st Platoon, 1st Squad Rifles - Channel 1<br/>
1st Platoon, Attachment Fireteam - Channel 1<br/>
<br/>

ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes.
<br/>
<br/>BLUFOR Victory is achieved when all OPFOR are defeated or time limit is reached.<br/>
<br/>OPFOR Victory is achieved when all BLUFOR are defeated or the zone is captured (capture takes 5 minutes).<br/>

ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();