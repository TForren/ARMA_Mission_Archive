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
Mission ends when all supply caches are cleared out.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
Suggested Callsigns:<br />
1st Team: 1'1<br />
Sniper Team: 1'2<br />
<br />

ENDTAB;

NEWTAB("IV. Service Support:")
None.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Eliminate enemy HVT and destroy assets.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
US NATO Assault Squad<br />
1x AMV-7 Marshall<br />
US NATO Sniper team <br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Platoon of CSAT ground forces. Sights of enemy air assets that may be scrambled at any time. <br />
Band of AAF barricaded in the Terminal. 
Mechanized patrols seen all across the airfield.
ENDTAB;

NEWTAB("I. Situation:")
Intel says there is a CSAT HVT undergoing negotiation with the AAF platoon that has barricaded themselves up in the terminal. This HVT is our primary objective. Once the HVT is out of the way, destroy any AAF air assets and dismantle their little fort at the Terminal.  <br />
<br />
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