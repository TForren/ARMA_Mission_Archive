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
Mission ends when the experimental weapon is transferred to the retrieval Helo.<br />
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
1x AH-99 Blackfoot <br />
1x F-18 F <br />
1x Marshal <br />
Rearm, repair, and refuel at airfield
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
1. Acquire CSAT experimental weapon and transfer it to the retrieval helo at the transfer zone. <br />
2. Eliminate AAF HVT.

ENDTAB;

NEWTAB("B. Friendly Forces:")
Retrieval Ghosthawk on standby at airfield. <br />
Small Security Team setup at transfer zone.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Platoon size+ of mercenary forces. Unknown amount of AAF reinforcements on standby. Expect AAF APCs and air support. 
ENDTAB;

NEWTAB("I. Situation:")
The AAF have arranged a deal with a mercenary group to steal a CSAT experimental weapon. AAF get the weapon and the mercenaries get a hefty sum of Euro. An AAF HVT
will be arriving at the mercenary stronghold within the next few minutes to confirm and finalize the trade. Blufor forces 
are sending a force recon team ahead of mechanized infantry with CAS support to recon the abandoned factory and try to get an idea of where they stashed
the experimental weapon. Force recon will also be responsible for ID'ing the HVT and eliminating him. The mechanized infantry group will assault the factory and primarily be 
responsible for clearing the area of hostile contact to allow a safe retreat with the experimental weapon to the transfer zone. Blufor forces must act with high speeds with little
drag else face inevitable AAF reinforcements. Once the experimental weapon is in the transfer zone, the retrieval helo will be dispatched and Blufor must maintain security at the LZ until
its arrival. Be wary of enemy air reinforcements. They will pose a threat to the retrieval helo.
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