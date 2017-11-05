#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
Russian MSV have established a foothold in the town of Galati. Mechanized ARSENIC company has been tasked with clearing out the town. 
<br/><br/>
a. Area of Interest:<br/>
//Give the broader picture of the current conflict's sitation. Enemy occupation outside of and including the platoon's AO.
North Western Altis.
<br/><br/>
b. Area of Operations:<br/>
// Describe the terrain and weather conditions: Mountainy, Countryside, open, dense woods, light/heavy fog, rain, clear skies, etc.
Rolling Hills with wide open terrain features. Sparse vegitation. Dense urban streets.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
//Name of the enemy force(s) here. Ex. Armed Forces of the Rusisan Federation (MSV)
Russian Federation (MSV)
<br/><br/>
Equipment:<br/>
Modern Russian Federation equipment. Expected armored IFV. Possible heavy armor MBT.
<br/><br/>
Strength:<br/>
// An approximation of enemy strength
2x Mechanized Infantry Platoon.
<br/><br/>
Location:<br/>
In and around Galati.
<br/>
<br/>
MLCOA:<br/>
The MSV will likely dig in and repel any attacks.
<br/>
<br/>
MDCOA:<br/>
The MSV may bait ARSENIC into a hard flanking ambush.
<br/>
<br/>
Defensive Fires:<br/>
N/A
<br/><br/>
Airthreat:<br/>
N/A
<br/><br/>
Morale:<br/>
HIGH
<br/><br/>
CBRN Threat:<br/>
N/A
<br/><br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
a. Higher HQ Mission and Intent:<br/>
Uproot the MSV in Galati.
<br/><br/>
b. Composition:<br/>
//Describe the makeup of the friendly forces. ex. HELIX 1 is comprised of 3x rifle squads and 1x HQ element
ARSENIC 1 platoon is comprised of 2x rifle sections, 1x MG team, 1x HQ section, and 3x warrior IFVs.
<br/>
<br/>
c. Supporting fires:<br/>
M6 60mm squad mortars located in all 3 warriors available to all squads.
<br/>
d. Attachments/Detachments:<br/>
N/A
<br/>
<br/>
e. Assets:<br/>
-3x FV150 Warrior<br/>
-6x Mortar ammo boxs (in ACE Cargo)<br/>
-3x M6 60mm squad mortar (in vehicle inventory)<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
ARSENIC 1 is to ASSAULT and CLEAR the town of Galati.
ENDTAB;

NEWTAB("IV. Sustainment:")
i) SOP Variations<br/>
Dress: None<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
ii) Logistic Support<br/>
Replen Plan: None<br/> // Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
iii) Medical<br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
Morphine: 1 per Man.<br/>
ENDTAB;

// Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
i) Chain of Command:<br/>
No Change.<br/>
<br/>
ii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st Platoon, HQ Section - Channel 1<br/>
1st Platoon, 1st Section Rifles - Channel 2<br/>
1st Platoon, 2nd Section Rifles - Channel 3<br/>
1st Platoon, 3rd Section MG  - Channel 4<br/>
1st Platoon, Inter-Vehicle Crew - Channel 5<br/>

ENDTAB;

}; //End of west case



case east: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Russian MSV have established a foothold in the town of Galati. Mechanized ARSENIC company has been tasked with clearing out the town. 
<br/><br/>
a. Area of Interest:<br/>
//Give the broader picture of the current conflict's sitation. Enemy occupation outside of and including the platoon's AO.
North Western Altis.
<br/><br/>
b. Area of Operations:<br/>
// Describe the terrain and weather conditions: Mountainy, Countryside, open, dense woods, light/heavy fog, rain, clear skies, etc.
Rolling Hills with wide open terrain features. Sparse vegitation. Dense urban streets.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
//Name of the enemy force(s) here. Ex. Armed Forces of the Rusisan Federation (MSV)
Mechanized British Armed Forces.
<br/><br/>
Equipment:<br/>
Modern British equipment with IFVs.
<br/>
Strength:<br/>
// An approximation of enemy strength
1x Mechanized Infantry Platoon.
<br/>
Location:<br/>
East of Galati.
<br/>
<br/>
MLCOA:<br/>
The BAF will likely perform a rapid assault from the east of Galati.
<br/>
<br/>
MDCOA:<br/>
The unpredictability of the British may be too great for even the most learned of Russian field commanders.
<br/>
<br/>
Defensive Fires:<br/>
N/A
<br/>
Airthreat:<br/>
N/A
<br/>
Morale:<br/>
HIGH
<br/>
CBRN Threat:<br/>
N/A
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>Reinforcements may be requisitioned from the command GAZ. (Scroll wheel)
<br/>
<br/>Fortifications can be positioned during planning phase.
ENDTAB;

NEWTAB("II. Mission:")
SECURE and HOLD the town of Galati.
ENDTAB;

}; //End of east case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>ARSENIC Victory is achieved when Galati has no combat effective units.
<br/>
<br/>MSV Victory is achieved when ARESENIC sustain heavy casualties or the time limit is reached. // put win condition here
<br/>
<br/>Once the mission starts, the MSV Commander will no longer be able to position fortifications or units. All unit movement will then be done via waypoints.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission requires a zeus commander. If none was slotted, ya don fucked up. go back and reslot.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE