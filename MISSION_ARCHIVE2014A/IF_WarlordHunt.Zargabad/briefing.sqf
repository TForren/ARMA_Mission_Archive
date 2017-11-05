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
Mission ends when all water has been distributed (Opfor victory), truck returned to FOB (bluefor victory), or if the truck is destroyed (everyone loses).<br />
All vehicles respawn (besides truck of course).<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
..
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
3x Hunters.<br />
1x Littlebird skid.<br />
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Blufor must hunt down and eliminate Ratzebad (Player hvt) in Zargabad. The location of Ratzebad can be found by interrogating unarmed insurgents in any of 
the three known insurgent hideouts. Eliminate Ratzebad before he escapes from Zargabad.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
N/A

ENDTAB;

NEWTAB("A. Enemy Forces:")
Insurgents held up in the three known hideout locations. Small groups travelling between the hideouts and around Zargabad.
ENDTAB;

NEWTAB("I. Situation:")
Ratzebad is an infamous insurgent who is attempting to escape Zargabad now that Blufor have a FOB in the area. Ratzebad has a few things to do before leaving so this
is the only chance Blufor will have at taking him down before he escapes up North. Blufor will be unable to follow Ratzebad too far North due to the extremely heavy Opfor
activity. 
ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing


NEWTAB("V. Command & Signal:")
..
ENDTAB;

NEWTAB("IV. Service Support:")
N/A</br />
ENDTAB;

NEWTAB("III. Execution:")
Group Leader's discretion.
ENDTAB;

NEWTAB("II. Mission:")
Ratzebad must collect the three briefcases of sensitive material that have been hidden among piles of garbage around Zargabad. Once all three briefcases
have been recovered, Ratzebad must escape Zargabad up towards the escape marker and cross over into areas that Blufor will not dare to travel.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
Pockets of insurgents at each hideout.<br />
Small bands insurgents around Zargabad ready to give their lives for Ratzebad.
ENDTAB;

NEWTAB("A. Enemy Forces:")
United States Soldiers at their HQ.<br />
ENDTAB;

NEWTAB("I. Situation:")
The nearby hideouts all have hidden their intel in three different locations around Zargabad in preparation for incoming Blufor raids. Ratzebad must gather all intel before
leaving Zargabad to the north. The insurgents around the city will hold off the Blufor for as long as they can but Ratzebad must escape with all intel and with his life intact.
ENDTAB;
};
};