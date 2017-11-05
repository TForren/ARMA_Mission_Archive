#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case independent: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/> The Republic of Tanoa has been undermined by drug cartels, whom constantly battle against the Republican Guard for territory over the island. The President-For-Life has had increasingly little faith in his troops, and has contracted mercenaries to aid them,
<br/> 
<br/> The Sterling Security Company has signed on for a one year contract, in which they are required to significantly reduce the influence of the most prominent Cartel group, Los Jaguares, over the President's subjects.
<br/> 
<br/> 
//Explain what happened before the mission.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
A variety of small arms of all shapes and sizes, but generally consisting of Kalashnikov pattern rifles. Heavy equipment and body armor, as well as proper uniforms, tend to not be in wide supply. Armed Technicals are known to be used by the Cartels.//List equipment that the enemy most likely uses
<br/>
<br/>
Strength:<br/>
Approximately fifty to sixy fighters, including a QRF that uses civilian transport vehicles.// An approximation of enemy strength
<br/>
<br/>
Location:<br/>
The enemy is located in and around their forward base, at a Lumberyard. They also maintain patrols in the jungle surrounding it. //Location of enemies
<br/>
<br/>
MLCOA:<br/>
The enemy will defend against attacks on their position, counting on the arrival of reinforcements to hold against any assault.//Most Likely Course Of Action for the enemy, this is what the enemy is going to do most of the time, example - The VDV company will move to re-secure the derailed train through heavy terrain.
<br/>
<br/>
MDCOA:<br/>
If we are surrounded by patrols responding to a threat upon the base, we may take avoidable casualties.//Most Dangerous Course Of Action, this is the worst case scenario the enemy can do to us, Example - The VDV company will deploy armoured IFVs and overwhelm the derailed train potentially taking down USMC helicopters in the AO.
<br/>
<br/>
Defensive Fires:<br/>
N/A//Enemy Artillery is listed here, otherwise put Unknown or N/A
<br/>
Airthreat:<br/>
N/A//Any enemy planes operating in the area, if none put N/A
<br/>
Morale:<br/>
High// A rating of the enemy morale (Low,High,etc)
<br/>
CBRN Threat:<br/>
N/A//Does the enemy a pose a Chemical, biological, radiological and nuclear threat, list it here. Example - The Enemy pose no CBRN threat.
<br/>
<br/>
Future intentions:<br/>
To continue taking over Republican Territory.//What are the enemies goal, example - To restore the train to working order and continue the relocation of the experimental T-80s.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
The First Platoon of the Sterling Security Company is waiting to move out at Sterling FOB, to the south of Enemy Lines.//Where do you start at, example - USMC Platoon stationed on the USS Thorne[<marker name='start'>065175</marker>]
<br/>
<br/>
b. Higher Units Mission:<br/>
To push back and weaken the power of Los Jaguares on Tanoa. // If part of a larger unit operation list the goal here, otherwise put N/A
<br/>
<br/>
c. Composition:<br/>
One motorized Royal Sahrani Marine Corps Platoon, with support from elements of 2nd platoon.//The object for the deploying force, example - USMC aboard the USS Throne are to secure and destroy the experimental T-80s.
<br/>
<br/>
d. Supporting fires:<br/>
Initial naval artillery bombardment from the frigate RSN Paraiso//Friendly Artillery is listed here, otherwise put None
<br/>
e. Attachments/Detachments:<br/>
None//If any unique attachments, list what they're for, example - 2x UH-1Y Venoms for logistics and CAS.
<br/>
<br/>
f. Assets:<br/>
SSC:<br/>
Two Armed Land Rovers<br/>
Two Ural Transport Trucks<br/>
Two Jeeps<br/>
Ammunition and Medical Supplies carried in Urals. Land Rovers contain a single pump-action shotgun each.<br/>

//Vehicles that the Friendly side has to use, example - 2x UH-1Y Venom with 2x M134 door guns and 2x rocket pods.
<br/>
ENDTAB;

NEWTAB("II. Mission:")
Capture the Lumber Yard, and hold against any counterattacks.
//What the mission is
//Example:
//Secure the area around the derailed train followed by the destruction of all the experimental T-80s.<br/>
//All USMC forces must extract from the AO once the objective is complete.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
The Platoon will make its way up to the Lumber Yard, engaging and destroying any enemies encountered there or one the way.//What the operation will entail.
<br/>//Example:
//USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
//transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.
<br/>
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
Up to Platoon Commander.
//How the unit will move, usually left up-to the PLT LDR to decide
//Example:
//USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
//Further movement will be as per PLT LDR's Discretion
<br/>
c. Main Effort<br/>
//Main focus of the mission, should be short, example - Destroy the experimental T-80s.
<br/>
Capture and hold the Lumber Yard.
<br/>
d. Tasks to Subordinate Units<br/>
//Unless needed to assign special tasks, leave as example: As per PLT LDR's Discretion.
<br/>
As per PLT LDR's Discretion
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
//When the mission should start
//Example - USMC Forces will launch the operation at 1600hrs. Further time of Movement will be as per PLT LDR's Discretion.
<br/>
Mission will begin at 1600 hours. 
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
Any armed hostiles are to be neutralized. While unarmed contacts are not to be engaged, be on guard for those who may be concealing explosives or similar thrown weaponry.//Put RoE rules here
//Example - All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
i) SOP Variations<br/>
Dress: Since the Sterling Security Company has no standard uniform, be aware of the similarities in the dress of your comrades.<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
ii) Logistic Support<br/>
Replen Plan: None<br/> // Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
Ammunition: Each man carries his own ammunition.<br/>
IPE: Ayy Lmao.<br/>
<br/>
iii) Medical<br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
<br/>
ENDTAB;

// Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
i) Chain of Command:<br/>
No Change.<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st Squad- SR 1
2nd Squad- SR 2
3rd Squad- SR 3
HQ Squad- SR 4
<br/>
Vehicle Assets share their radio channels with their attached squads.
<br/>
Callsigns: <br/>
HQ- Silver Spoon
1st Platoon Infantry Squads)- Fortunate One, Two, Three, Four
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes. // change the XX to what you set the time limit to
<br/>
<br/>//Any special mission notes, example - USMC must secure and hold the train for at least 5 minutes before the explosive crates are spawned on the USS Thorne.
<br/>
<br/>Victory is achieved when 90% of enemy units have been destroyed.// put win condition here
<br/>Defeat occurs when the SSC forces suffer 80% casualties.//put failure conditions here, example - Russian forces rescure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

//Used to call the end mission.
_adminState = call BIS_fnc_admin;
_uid = getPlayerUID player;

if (_adminState != 0 || _uid == "76561198013584551" || _uid == "76561197988578942") then {
	NEWTAB("Mission Calling") 
	<br/>This is used to call mission endings, please be careful since if you press it once it will end the mission.
	<br/>
	<br/>Helper checks are: //Server vars
	<br/><execute expression='systemChat str westCasualty'>Check Bluefor Casualty Percentage</execute>
	<br/><execute expression='systemChat str eastCasualty'>Check Opfor Casualty Percentage</execute>
	<br/><execute expression='systemChat str testVar'>Test Boolean Handling</execute>
	<br/>
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Call Bluefor Victory</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call Bluefor Failure</execute>
	ENDTAB;
};

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE