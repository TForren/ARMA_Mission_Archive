#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
//Give a brief description of the current situation. Ex. what has happened that led up to this mission.
<br/><br/>
a. Area of Interest:<br/>
//Give the broader picture of the current conflict's sitation. Enemy occupation outside of and including the platoon's AO.
<br/><br/>
b. Area of Operations:<br/>
// Describe the terrain and weather conditions: Mountainy, Countryside, open, dense woods, light/heavy fog, rain, clear skies, etc.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
//Name of the enemy force(s) here. Ex. Armed Forces of the Rusisan Federation (MSV)
<br/><br/>
Equipment:<br/>
//List equipment that the enemy most likely uses
<br/>
Strength:<br/>
// An approximation of enemy strength
<br/>
Location:<br/>
//Location of enemies
<br/>
<br/>
MLCOA:<br/>
//Most Likely Course Of Action for the enemy, this is what the enemy is going to do most of the time, example - The VDV company will move to re-secure the derailed train through heavy terrain.
<br/>
<br/>
MDCOA:<br/>
//Most Dangerous Course Of Action, this is the worst case scenario the enemy can do to us, Example - The VDV company will deploy armoured IFVs and overwhelm the derailed train potentially taking down USMC helicopters in the AO.
<br/>
<br/>
Defensive Fires:<br/>
//Enemy Artillery is listed here, otherwise put Unknown or N/A
<br/>
Airthreat:<br/>
//Any enemy planes operating in the area, if none put N/A
<br/>
Morale:<br/>
// A rating of the enemy morale (Low,High,etc)
<br/>
CBRN Threat:<br/>
//Does the enemy a pose a Chemical, biological, radiological and nuclear threat, list it here. Example - The Enemy pose no CBRN threat.
<br/>
<br/>
Future intentions:<br/>
//What are the enemies goal, example - To restore the train to working order and continue the relocation of the experimental T-80s.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
a. Higher HQ Mission and Intent:<br/>
// Describe the objective of the entire company 
<br/><br/>
b. Composition:<br/>
//Describe the makeup of the friendly forces. ex. HELIX 1 is comprised of 3x rifle squads and 1x HQ element
<br/>
<br/>
c. Supporting fires:<br/>
//Friendly Artillery is listed here, otherwise put None
<br/>
d. Attachments/Detachments:<br/>
//If any unique attachments, list what they're for, example - 2x UH-1Y Venoms for logistics and CAS.
<br/>
<br/>
e. Assets:<br/>
US:<br/>
//Vehicles that the Friendly side has to use, example - 2x UH-1Y Venom with 2x M134 door guns and 2x rocket pods.
<br/>
ENDTAB;

NEWTAB("II. Mission:")
//What the mission is
//A concise statement that includes the Who, What, Where, When, and Why of the operation to be conducted. This is generally a single sentence and there should be no question as to what needs to be done. Capitalization of key words helps the reader focus on the important aspects of the mission.
//Ex. HELIX 1 is to SECURE the town of Tottah and DESTROY any enemy assets.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
//What the operation will entail
//Example:
//USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
//transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.
<br/>
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
//How the unit will move, usually left up-to the PLT LDR to decide
//Example:
//USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
//Further movement will be as per PLT LDR's Discretion
<br/>
<br/>
c. Main Effort<br/>
//Main focus of the mission, should be short, example - Destroy the experimental T-80s.
<br/>
<br/>
d. Tasks to Subordinate Units<br/>
//Unless needed to assign special tasks, leave as example: As per PLT LDR's Discretion.
<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
//When the mission should start
//Example - USMC Forces will launch the operation at 1600hrs. Further time of Movement will be as per PLT LDR's Discretion.
<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
//Put RoE rules here
//Example - All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
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
1st Platoon, 1st Squad Rifles - Channel 1<br/>
1st Platoon, 2nd Squad Rifles - Channel 2<br/>
1st Platoon, 3rd Squad Weapons - Channel 3<br/>
1st Platoon, HQ Squad - Channel 4<br/>
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is XX minutes. // change the XX to what you set the time limit to
<br/>
<br/>//Any special mission notes, example - USMC must secure and hold the train for at least 5 minutes before the explosive crates are spawned on the USS Thorne.
<br/>
<br/>Victory is achieved when // put win condition here
<br/>Defeat occurs when //put failure conditions here, example - Russian forces rescure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE