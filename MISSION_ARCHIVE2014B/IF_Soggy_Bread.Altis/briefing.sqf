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
Mission ends when blackbox is recovered and AA position is cleared.<br />
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
Divers: 1'3<br />
<br />

ENDTAB;

NEWTAB("IV. Service Support:")
USS Nimitz Deck services for aircraft.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Clear Opfor AA and recover the v-22 blackbox<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
US Navy Seal Platoon with HQ<br />
1x skid Hummingbird<br />
1x Transport Ghosthawk<br />
F-18 E and F <br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Russian Spetsnaz platoon. Mechanized Infantry and various foot patrols. Nearby Russian held airfield suggests possible enemy air support. 
ENDTAB;

NEWTAB("I. Situation:")
A V-22 Osprey went down in the Ammolofi Bay. UAV recon has spotted what looks like some AA equipment in Krya Nera. HQ is sending a platoon of Seals with air support to recover the blackbox and clear out the AA position.
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