#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/> Year of tension between different factions within the local government have come to a head, starting with a Local Militia claiming various cities across Germany.
<br/>
<br/> They have set up their headquarters inside the town of Celle.
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/> Early recon estimates put their numbers at between 30-50 men, armed with AKs, PKMs, SVDs, a few RPGs, and DSHKMs.
<br/>
<br/> They have no access to armed or armored vehicles of any sort.
<br/> They have barricaded the entrances to the town with various fortifications.
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/> Platoon Minus of CTRG Operators armed with M4s and 203s.
<br/>
<br/> 2x 8-man Section
<br/> 5-man HQ Element with attached MAAAWS Team.
<br/> 7-man Mk V Service Crew, capable of being used as an ad-hoc third section.
ENDTAB;

NEWTAB("II. Mission:")
<br/> Move in and clear the town of hostiles.
ENDTAB;

NEWTAB("III. Execution:")
<br/> Mission Maker Suggested Execution:
<br/>
<br/> Load the RHIBs onto the Mark V. 
<br/> Move close to the target area utilizing the Mark V.
<br/> Deploy closer utilizing the RHIBs to get into position. 
<br/> Clear the town of Hostiles with minimal damage to the surrounding structures.
<br/>
<br/> Use the Mark V for Close-in Fire Support from the waterfront.
<br/>
<br/> Anything else is Mission Commanders Discretion.
ENDTAB;

NEWTAB("IV. Service Support:")
<br/> 1x Mark V SOCOM Boat
<br/> 3x RHIB
<br/>
<br/> A small amount of extra supplies and weaponry are loaded in the Mark V.
<br/>
<br/> 1x SARC Medic attached to Arthur, Bedivere, and Merlin.
ENDTAB;

NEWTAB("V. Command & Signal:")
<br/> Callsigns:
<br/>
<br/> Arthur - First Team
<br/> Bedivere - Second Team
<br/> Merlin - HQ
<br/> Llamrei - Mark V
<br/>
<br/> Signal:
<br/>
<br/> Long Range:
<br/>
<br/> 1 - 1 Platoon
<br/>
<br/> Short Range:
<br/>
<br/> 1 - Arthur
<br/> 2 - Bedivere
<br/> 3 - Llamrei
<br/> 6 - Merlin
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/> Mission Maker: Emerald
<br/> Version: 1
<br/>
<br/> Default TOD is 1330, Fair Skies, No weather.
<br/> Win: 80 percent of enemy killed and no enemy within 200 meters of Militia HQ.
<br/> Loss: 80 percent friendly forces lost.
<br/> Time Limit: 90 Minutes.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();