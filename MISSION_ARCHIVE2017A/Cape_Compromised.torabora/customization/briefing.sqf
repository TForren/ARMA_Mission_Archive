#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
A Taliban splinter group has been trading and selling US equipment to other Insurgent cells. 2 Undercover CIA operatives have setup a purchase for a shipment of FIM-92 Stingers in an attempt to gain more information about the Taliban weapons trade operations. 
<br/><br/>
Unfortunately the CIA agents have been compromised and were forced to kill the Taliban traders. US 1st Cav will attempt to secure the shipment and rescue the CIA operatives. 
<br/><br/>
Dense civilian presense. The CIA agents are dressed to blend in.
<br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Taliban Insuregents.
<br/>
<br/>
Equipment:<br/>
Soviet-era small arms with a mix of Czechoslovakian and Belgium rifles, old Russian RPG-7.
<br/>
Strength:<br/>
~15 Insurgents in the area. 
<br/>
<br/>
Location:<br/>
Yak Ghar.
<br/>
<br/>
MLCOA:<br/>
Insurgents will search for the CIA operatives in town.
<br/>
<br/>
Defensive Fires:<br/>
N/A
<br/>
<br/>
Airthreat:<br/>
N/A
<br/>
<br/>
Morale:<br/>
HIGH.
<br/>
<br/>
CBRN Threat:<br/>
N/A
<br/>
<br/>
Future intentions:<br/>
Execute the CIA operatives and take back their stingers.
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
1st Cav 1st Platoon staging at [<marker name='usa'>LC061005</marker>].
<br/>
<br/>
b. Higher Units Mission:<br/>
1st Platoon is to find and secure the CIA operatives and stinger crate.
<br/>
<br/>
c. Composition:<br/>
1st Platoon is comprised of 2x rifle squads and 1x HQ element.
<br/>
<br/>
d. Supporting fires:<br/>
N/A
<br/>
<br/>
e. Attachments/Detachments:<br/>
2x UH-60M
<br/>
<br/>
f. Assets:<br/>
2x UH-60M<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
LOCATE and SECURE the CIA Operatives and Stingers at site WASP.
ENDTAB;

// Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
i) Chain of Command:<br/>
No Change.<br/>
<br/>
ii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
Airnet Net - Channel 2<br/>
<br/>
SR:<br/>
1st Platoon, 1st Squad Rifles - Channel 1<br/>
1st Platoon, 2nd Squad Rifles - Channel 2<br/>
1st Platoon, HQ Squad - Channel 6<br/>
ENDTAB;

}; //End of west case

case east: {
NEWTAB("I. Situation:")
We have setup a sale of some of our FIM-92 stinger missile launchers in Yak Ghar but it turns out the buyers have double crossed the seller. 
ENDTAB;


NEWTAB("A. Enemy Forces:")
American Soldiers.
<br/>
<br/>
Equipment:<br/>
Modern American military small arms, armor, and equipment. Light armored and armed HMMWV.
<br/>
<br/>
Strength:<br/>
Air Cav platoon of ~25 soldiers.
<br/>
<br/>
Location:<br/>
Coming in from the South.
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
Taliban Insurgents.
<br/>
<br/>
a. Assets:<br/>
3x Civilian Vehicles<br/>
1x Technical(M2)<br/>
<br/>
ENDTAB;

NEWTAB("II. Objective:")
LOCATE and ELIMINATE the double crossers and SECURE the stinger crate.
ENDTAB;

};

case civilian: {
NEWTAB("I. Situation:")
During our fake trade with the Taliban for the Stingers, they figured out who we were. The sellers are dead but their friends are nearby and probably heard the gunshots. A distress singal is out to nearby US forces but we have no other comms.
ENDTAB;

NEWTAB("II. Objective:")
SURVIVE and prevent the Taliban from recapturing the stingers.
ENDTAB;

};

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. 
<br/>
<br/>OPFOR Victory is achieved when BLUFOR are eliminated or the stingers are secured by them.
 <br/>
<br/>BLUFOR Victory is achieved when OPFOR are eliminated or the stingers are secured by them.
<br/>
<br/>Securing the crate includes eliminating all hostiles in a 200m radius. 
ENDTAB;

NEWTAB("Game Mastering")
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();
#include "orbat.sqf" //DO NOT REMOVE 