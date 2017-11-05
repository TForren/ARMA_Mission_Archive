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


NEWTAB("EVERYONE READ THIS")
1. Your gear will be in your foot locker across from you when you wake up. Gear up before leaving the tent!<br />
2. When you respawn, you will respawn with the same gear that was in your foot locker.<br />
3. Blufor may use the flag near the respawn to teleport between the the main FOB and FOB Qalat.
<br />
ENDTAB;

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
BLUFOR forces are to track down the stolen water supply truck and return it to the FOB. If the truck is destroyed, the mission is failed. <br />
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
The desperately needed water supply shipment was ambushed by a group of rebel fighters right before heading into the FOB. 
HQ is sending Ranger team 1'2 as first responders to secure the ambush location and eliminate any straggling rebels.
Squad 1'1 (Player squad) must hunt down and return the shipment to the FOB before
the rebels distribute it across their network of hideouts. Blufor can accomplish this by either lifting the truck with the chinook or driving it back. 

ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("EVERYONE READ THIS")
1. When you respawn, you can choose one of the three hookahs at the camp to teleport to the selected hideout. <br />
2. Each hideout will have an assortment of vehicles that will respawn when deserted. <br />
3. To deliver the water to the hideouts, look for three concrete barriers in a box shape. Park the water truck near these for 10 seconds and one of the water tanks will be placed in the concrete barriers.
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
United States Soldiers at their two bases.<br />
ENDTAB;

NEWTAB("I. Situation:")
We have successfully ambushed the blufor water supply truck and we must now distribute it across our hideouts. We are dangerously close to the US base so we must board up and leave immediately.
It is up to the group leader what road we should take. If one of us is to fall in battle, there will be reinforcements (respawn) that will help us at any of the three hideouts. 
ENDTAB;
};
};