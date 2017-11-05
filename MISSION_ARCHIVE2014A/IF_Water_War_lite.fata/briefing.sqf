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
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
FOB rearm, refuel, and repair trucks.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
BLUFOR forces are to track down the stolen water supply truck and <marker name='return'>return</marker<br/> it to the FOB. If the truck is destroyed, the mission is failed. <br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
-US Ranger squad 1'1 (Players)<br />
-US Ranger team 1'2 (AI)<br />
-CH-47 Chinook <br />
-MH-9 Littlebird <br />
-FOB Personnel<br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Pockets of rebel fighters across the tribal area. Team of guerilla fighters that ambushed and stole the water truck. 
ENDTAB;

NEWTAB("I. Situation:")
The desperately needed water <marker name='ambush'>supply convoy</marker<br/> was ambushed in Hama by a group of rebel fighters in the middle of the FATA area.
Ranger team 1'2 was escorting the convoy and have requested immediate support to get the truck out of the combat zone.
<marker name='infantry'>Squad 1'1</marker<br/> (Player squad) must head to the Ambushed Water Supply marker and retrieve the truck. If opfor get there first, then the blufor must track down the truck and <marker name='return'>return</marker<br/> it undestroyed.
Blufor can accomplish this by either lifting the truck with the chinook or driving it back. 

ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("EVERYONE READ THIS")
1. Each hideout will have an assortment of vehicles that will respawn when deserted. <br />
2. To deliver the water to the hideouts, look for three concrete barriers in a box shape. Park the water truck near these for 10 seconds and one of the water tanks will be placed in the concrete barriers.
ENDTAB;


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
You are tasked with distributing the stolen water supply to the three main rebel hideouts before the BLUFOR can take their truck back.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
Pockets of rebel fighters at each hideout.<br />
Small bands of rebels scattered across the tribal areas.
ENDTAB;

NEWTAB("A. Enemy Forces:")
United States Soldiers at their HQ.<br />
ENDTAB;

NEWTAB("I. Situation:")
First team has successfully stopped the <marker name='ambush'>water supply</marker<br/>. Now we must wipe out the rest of the blufor defending the truck and distribute the water to the hideouts. Each hideout is well guarded by our brothers
and they are on stand by waiting for our delivery. First team will also give us their <marker name='technicals'>technicals</marker<br/>. 
ENDTAB;
};
};