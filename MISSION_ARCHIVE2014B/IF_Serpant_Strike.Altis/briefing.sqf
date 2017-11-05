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
Mission ends when Russian UAV prototype and air assets are destroyed.<br />
IMPORTANT: It is highly recommend that all players imediately board their assigned vehicles once loaded in. The nimitz tends to eat people who loiter too long on the flight deck. <br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
Suggested Callsigns:<br />
Command: HQ<br />
1st Squad: 1'1<br />
2nd Squad: 1'2<br />
<br />

ENDTAB;

NEWTAB("IV. Service Support:")
USS Nimitz Deck services for aircraft.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Strike a Russian held airfield and destroy their air assets and UAV prototype. High speed no drag.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
US Navy Seal Platoon with HQ<br />
1x Transport Ghosthawk<br />
1x AH-99 Blackfoot<br />
2x F-18 E and F <br />
-2x Speed boats<br />
-2x Sandstorm MLRS launchers set to strike the beach strong points in 5 minutes.<br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Russian infantry company. Plenty of light armor. Air support likely to be called once the chaos hits. 
ENDTAB;

NEWTAB("I. Situation:")
Intel suggests a high value Russian UAV prototype is being hidden away at a small airstrip between Selakano and Feres. The impact of such a weapon of war will be devastating so HQ needs it gone. While you are in the area you might as well get rid of some of their air assets as well.
ENDTAB;
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