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
Mission ends when all primary objectives are complete.<br />
When you die, you will respawn at the reinforcement pool. You are not to teleport back to the Nimitz unless instructed to do so by your squad leader or the GM.
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a shortrange.<br />
Every leader has a 1523G Long Range.<br />
<br />

ENDTAB;

NEWTAB("IV. Service Support:")
3x F18E
1x AH-99 Blackfoot
1x UH-80 Ghosthawk
2x MH-9 Littlebird
ENDTAB;

NEWTAB("III. Execution:")
Leader's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Primary Objectives:<br />
1. Destroy Logistic trucks at the Supply Depot<br />
2. Clear out Infantry Barracks<br />
3. Destroy Experimental Research Equipment<br />
4. Destroy SU-35 air assets at the Airfled<br />
Secondary Objective:<br />
-Eliminate Convoy HVT<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
-US Navy Seal Teams.<br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Multiple Platoons of Infantry across the island. Sentries, Patrols, Light Armor, Heavy Armor, and CAS.
ENDTAB;

NEWTAB("I. Situation:")
???
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("V. Command & Signal:")
Co’s discretion
ENDTAB;

NEWTAB("IV. Service Support:")
One Mi-8 transport helicopter<br />
Each Senior rifleman has 1x satchel charge for destroying the cache. <br />
3x BTR 70s for resupply (BTRs cannot be used)<br />
ENDTAB;

NEWTAB("III. Execution:")
Co’s discretion
ENDTAB;

NEWTAB("II. Mission:")
You are tasked with finding and destroying the stolen cache located somewhere inside of the city of Thirsk.<br /> 
You are also tasked to Inflict maximum casualties as possible on the local rebels.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
A platoon of dismounted Russian infantry and one Mi-8 helicopter for transport.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Local guerrilla rebels, possible armed civilians located in and around the city of Thirsk.<br />
They will be using weaponry similar to ours and may contain some AA assets.<br /> 
Enemy size is unknown<br />
ENDTAB;

NEWTAB("I. Situation:")
Local rebels attacked another platoon that was stationed at Thirsk Airbase.<br /> 
They have stolen their weaponry and handed them out to civilians to start a revolt in the city of Thirsk.
ENDTAB;
};
};