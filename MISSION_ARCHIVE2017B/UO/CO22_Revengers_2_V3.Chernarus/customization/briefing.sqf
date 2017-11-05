#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
Your platoon's helicopters were shot down on your way back to base, killing the platoon leader as well as everyone in his helicopter.
<br />
<br />
<br />BACKSTORY
<br />(as told by SFC Alfred Reige, 1st Platoon Sergeant)
<br />
<br />Some bastard thought it'd be a grand idea to shoot down our chopper. Guess we won't be home in time for dinner after all.
Motherfuckers hit the Lt's chopper as well, and it didn't look pretty. Don't think they made it.
<br />Fuck! I really liked the Lt, too!
<br />I'll make those fuckin' reds pay, if it's the last damn thing I do... Grab your gear, boys, and not a damn word to company HQ until we've sorted this like men.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Russian MSV infantry of unknown size and composition located in and around Gorka, with two ZSU-23-4 SPAAGs.
ENDTAB;

NEWTAB("B. Friendly Forces:")
You are a platoon- of US Army infantry, plus the crew of the downed helicopter carrying you.
<br />The helicopter carrying the remaining elements of your platoon crashed in the fields to your southeast. It is highly unlikely any of them survived.
ENDTAB;

NEWTAB("II. Mission:")
Avenge your fallen brethren by destroying the two ZSU-23-4s near Gorka.
ENDTAB;

NEWTAB("III. Execution:")
Up to CO.
ENDTAB;

NEWTAB("IV. Service Support:")
You only have the supplies you're carrying and the cargo of the helicopter.
The helicopter contains some medical supplies, two AT4 launchers, and spare munitions.
<br/><br/>
Notably, you have limited anti-armour equipment. To complete your mission, it may be necessary to scavenge for supplies from the other helicopter's crash site, or take them from the enemy.
ENDTAB;

NEWTAB("V. Command & Signal:")
SUCCESSION OF COMMAND:
<br/>1'6
<br/>1'2
<br/>1'3
<br/>
<br/>SIGNAL:
<br/>
<br/>Short range (343):
<br/>Channel 1 - 1'1 (absent)
<br/>Channel 2 - 1'2
<br/>Channel 3 - 1'3
<br/>Channel 6 - 1'6
<br/>
<br/>Long range (152):
<br/>Channel 1 - Platoon net
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
Time limit: 90 minutes
<br/>
<br/>Weather: Slightly cloudy
<br/>60 minute forecast: Cloudy
<br/>
<br/>END CONDITIONS:
<br/>
<br/>US taking 80% casualties will result in defeat.
<br/>RU taking 90% casualties will result in victory.
<br/>Both ZSUs being destroyed will result in victory.
<br/>
<br/>Mission created by Pekka using the Olsen Framework.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering, but don't let me stop you from doing as you see fit.
ENDTAB;

DISPLAYBRIEFING();