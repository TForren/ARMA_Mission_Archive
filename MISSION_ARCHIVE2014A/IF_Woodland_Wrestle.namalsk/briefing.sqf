#define NEWTAB(NAME) \
player createDiaryRecord ["Diary",[NAME,"

#define ENDTAB \
"]];

//See "VI. Mission notes:" for inspiration about briefing syntax
//"<br />" makes line switches

waitUntil {!(isNull player)};//This is needed for JIP compatibility since this code is spawned not called

NEWTAB("Game Mastering")
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

NEWTAB("VI. Mission notes:")
Mission by Hoizen.<br />
Mission ends 45m time limit is reached, opfor HVT escapes, HVT is killed, or blufor are wiped out.<br />
<br />

ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
N/A
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Locate and eliminate Razabaden before he escapes.
ENDTAB;

NEWTAB("B. Friendly Forces:")
-US Rifle squad<br />
-2x MH-9 Littlebird <br />
-2x M2 hmmwv <br />
-1x unarmed hmmwv <br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Band of rebels escorting Razabaden last known location at Opfor Camp<br />
Heavy Opfor presence at Lubjansk waiting for the HVT to arrive.
ENDTAB;

NEWTAB("I. Situation:")
Razabaden has been wanted dead for a long history of war crimes in the Chernarussian conflict. His location has recently been leaked by a defector and is attempting to escape to the north of the island of Namalsk.
Locally stationed blufor units will attempt to eliminate the HVT before he escapes to the opfor held compound. The HVT will only have 45 minutes before the Opfor bail in fear on incoming blufor reinforcements.

ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing


NEWTAB("V. Command & Signal:")
Group Leader's orders.
ENDTAB;

NEWTAB("IV. Service Support:")
N/A</br />
ENDTAB;

NEWTAB("III. Execution:")
Group Leader's discretion.
ENDTAB;

NEWTAB("II. Mission:")
Get Razabaden to the escape point up north.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
Heavy Opfor units waiting for Razabaden up at the north port.<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
United States Soldiers at their FOB.<br />
ENDTAB;

NEWTAB("I. Situation:")
Razabaden got away with some crazy shit in Chernarus but he's not out of the woods yet with full pun intended. He's paying high to get him out safely. We have a few technicals here and we have
stocked spare offroads at Sebjan, the Sebjan dam, and the Old Yard. The US know the location of this camp and we must leave immediately.<br/>. 
ENDTAB;
};
};