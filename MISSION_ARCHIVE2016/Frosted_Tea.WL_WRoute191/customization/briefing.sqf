#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
A separatist heavy convoy with armor and supplies is traveling South along MSR Cobble. Along the way, seperatist forces have occupied the small town of Probien. BAF Platoon ARSENIC 1 will exploit the encroaching blizzard that will knock out seperatist communications to clear Probien before the convoy passes through. As the convoy will be expecting Probien to be occupied by friendlies, the BAF will use this to ambush and destroy the convoy.
<br/><br/>
a. Area of Interest:<br/>
//Give the broader picture of the current conflict's sitation. Enemy occupation outside of and including the platoon's AO.
North East Schwemlitz. 
<br/><br/>
b. Area of Operations:<br/>
Bumpy and sudden hills with open terrain features. Dense vegitation and forest. sparse country roads.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
//Name of the enemy force(s) here. Ex. Armed Forces of the Rusisan Federation (MSV)
Schwemlitz separatists
<br/><br/>
Equipment:<br/>
Soviet era equipment. Equipment within the Probien garrison will be average with at most some technicals and soft armor. Convoy confirmed MBTs and IFVs.
<br/><br/>
Strength:<br/>
// An approximation of enemy strength
2x Squad worth of infantry in Probien.<br/>
6x vehicle convoy with infantry.
<br/><br/>
Location:<br/>
Probien and North of Probien.
<br/>
<br/>
MLCOA:<br/>
The Separatist garrison will likely counter attack spotted BAF.
<br/>
<br/>
MDCOA:<br/>
The Separatist garrison may dig in hard and wait for the convoy to act as impromptu reinforcements.
<br/>
<br/>
Defensive Fires:<br/>
N/A
<br/><br/>
Airthreat:<br/>
N/A
<br/><br/>
Morale:<br/>
MEDIUM
<br/><br/>
CBRN Threat:<br/>
N/A
<br/><br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Composition:<br/>
//Describe the makeup of the friendly forces. ex. HELIX 1 is comprised of 3x rifle squads and 1x HQ element
ARSENIC 1 platoon is comprised of 2x rifle sections, 1x MG team, 1x HQ section, and 3x warrior IFVs.
<br/>
<br/>
b. Supporting fires:<br/>
M6 60mm squad mortars located in all 3 warriors available to all squads.
<br/>
<br/>
c. Attachments/Detachments:<br/>
N/A
<br/>
<br/>
d. Assets:<br/>
-3x FV150 Warrior<br/>
-1x Landrover<br/>
-6x Mortar ammo boxs (in ACE Cargo)<br/>
-3x M6 60mm squad mortar (in vehicle inventory)<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
ARSENIC 1 is to ASSAULT and CLEAR the town of Probien under the shroud of the blizzard.<br/>
ARSENIC 1 is to then AMBUSH the heavy convoy coming from the North.<br/><br/>
Smoke plumes created from destroyed vehicles may give early warning to the convoy and put them on alert.<br/>
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

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>ARSENIC Victory is achieved when all vehicles in the convoy are destroyed.
<br/>
<br/>Defeat occurs when BAF sustain 75% casualties.
<br/>
<br/>Convoy is scheduled to move 30 minutes after mission start.
<br/>
<br/>As it is cold as fuck, you will shiver sometimes outside of vehicles.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not intended for game mastering or hoizen mobiles.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE