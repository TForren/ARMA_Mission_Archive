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
Mission ends when both khat trucks are destroyed and dealer hideout is cleaned out.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
Suggested Callsigns:<br />
Delta Squad: 1'0<br />
UN Squad: 1'1<br />

<br />

ENDTAB;

NEWTAB("IV. Service Support:")
1x UN HMG Strider.<br />
1x UN Logistics Truck.<br />
1x MH-9 Hummingbird.<br />
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Destroy khat shipment trucks and clear out dealer hideout.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
US DELTA squad.<br />
UN Peacekeeper squad.<br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Platoon size+ of khat traffic security. Various pockets of khat junkies scattered around the frequented towns.  
ENDTAB;

NEWTAB("I. Situation:")
The khat market has grown to dangerous levels in the area of Bystrica. Turf wars with civilians in the crossfire. One group of dealers has grown particularly strong and have made an impact on peaceful life. 
Their business has grown so large that they have begun using blue-topped trucks for the same reason that ice cream trucks play music. This should give the blufor forces easy identification of their targets.
Blufor has been tasked with destroying 2x blue truck khat shipments that have been known to frequent the 3 marked towns as well as clearing out the dealer's hideout. DELTA squad has been elected to assist in
hunting down the trucks. 
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