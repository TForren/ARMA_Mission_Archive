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

-2x M2 HMMWV <br />
-1x Mk19 HMMWV <br />
-1x M2 MTVR <br />

ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Locate and destroy the insurgent weapons cache
ENDTAB;

NEWTAB("B. Friendly Forces:")
-US Rifle squad<br />
-US Weapons squad<br />
-US Anti-Tank Attachment<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
-Pockets of Insurgent patrols scattered across the AO<br />
-Heavy Insurgent movement within the designated compound. Unknown numbers.<br />
-Potential light vehicle reinforcements.<br />
ENDTAB;

NEWTAB("I. Situation:")
Local insurgent activity has been congregating around the compound located at 6-digit grid 010058. A weapons cache is likely located within the compound. Blufor unites will move to clear any insurgent activity and destroy the weapons cache.

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