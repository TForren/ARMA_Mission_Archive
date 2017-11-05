#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Breifing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
USSR Forces are encroaching from the west through the destroyed town of Skadovsk. Remaining US Forces are to hold the frontlines against the Soviets. 
<br/><br/>
a. Area of Operations:<br/>
Dense snow fall. Low visibility. Battle-torn terrain with shallow inclines.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
USSR conscript forces.
<br/><br/>
Equipment:<br/>
AK-74, AK-74u, AKS-74.
<br/><br/>
Strength:<br/>
Company or less. 
<br/><br/>
Location:<br/>
West of Skadovsk.

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
a. Higher HQ Mission and Intent:<br/>
Maintain control of Route 191.
<br/><br/>
b. Composition:<br/>
Heavy casualties have left only 1x rifle squad and 1x weapons squad to hold the frontline.
<br/><br/>
c. Assets:<br/>
Ammo crates at each bunker.

ENDTAB;

NEWTAB("II. Mission:")
US Forces are to HOLD the frontlines against the encroaching Soviets.
ENDTAB;


 // Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
i) Chain of Command:<br/>
No Change.<br/>
<br/>
ii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>

ENDTAB;


}; //End of west case

//Breifing is default west only, change the side on the line below

case east: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
US Forces continue to hold out against the glorious Soviet incursion to capture Route 191. Snow too stronk and we must continue on foot.
<br/><br/>
a. Area of Operations:<br/>
Dense snow fall. Low visibility. Battle-torn terrain with shallow inclines.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
US Forces.
<br/><br/>
Equipment:<br/>
M-16, M240, LAW.
<br/><br/>
Strength:<br/>
Less than a platoon.
<br/><br/>
Location:<br/>
East of Skadovsk.

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
a. Higher HQ Mission and Intent:<br/>
Capture of Route 191.
<br/><br/>
b. Composition:<br/>
Conscripts. Nothing but conscripts (and Commissar).

ENDTAB;

NEWTAB("II. Mission:")
All Soviet Forces are to charge the US lines to capture.
ENDTAB;


 // Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
i) Chain of Command:<br/>
No Change.<br/>
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 30 minutes. // change the XX to what you set the time limit to
<br/>
<br/>US victory is achieved when all Soviets are elimninated or the time limit is reached.
<br/>Soviet victory is achieved when all US forces are eliminated.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE