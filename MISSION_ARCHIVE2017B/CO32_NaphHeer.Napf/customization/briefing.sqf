#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case independent: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
<br/>The Baltic Island of Napf, formerly a Russian territory until the collapse of the Soviet Union, has been a thorny point in recent politics. Finally, the Russian Government tired of negotiations and have decided to force the issue.
<br/>
<br/>The Napfheer, the army of Napf, has little airpower or heavy equipment to resist the eastern assault, but they must delay until the international community can decide a course of action.
<br/>
<br/>The Napfheer thus fights to delay inevitable defeat, hoping for outside aid to come soon.
<br/>
//Explain what happened before the mission.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Russian Army
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Russian equipment. Includes modern APCs such as BTR-80s, as well as a possibility of air/marine deployable armor assets. //List equipment that the enemy most likely uses
<br/>
<br/>
<font color='#FFA500'>Strength:</font><br/>
Roughly two platoons of mechanized infantry with chance of armor support. Additional scattered platoon of dismounted infantry. // An approximation of enemy strength
<br/>
<br/>
<font color='#FFA500'>Location:</font><br/>
The enemy is attacking from multiple directions, originating from the position they took at Lenzburg. Enemy is predicted to initiate a multi-pronged assault //Location of enemies
<br/>
<br/>
<font color='#FFA500'>MLCOA:</font><br/>
The enemy will attack our positions, counting on fire and air superiority to carry the day.//Most Likely Course Of Action for the enemy, this is what the enemy is going to do most of the time, example - The VDV company will move to re-secure the derailed train through heavy terrain.
<br/>
<br/>
<font color='#FFA500'>MDCOA:</font><br/>
As the Napfheer has no heavy anti air defense, care must be taken not to fall victim to air strikes.//Most Dangerous Course Of Action, this is the worst case scenario the enemy can do to us, Example - The VDV company will deploy armoured IFVs and overwhelm the derailed train potentially taking down USMC helicopters in the AO.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
N/A//Enemy Artillery is listed here, otherwise put Unknown or N/A
<br/>
<font color='#FFA500'>Airthreat:</font><br/>
Chance of ground-support rotary wing aircraft support//Any enemy planes operating in the area, if none put N/A
<br/>
<font color='#FFA500'>Morale:</font><br/>
High// A rating of the enemy morale (Low,High,etc)
<br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
N/A//Does the enemy a pose a Chemical, biological, radiological and nuclear threat, list it here. Example - The Enemy pose no CBRN threat.
<br/>
<br/>
<font color='#FFA500'>Future intentions:</font><br/>
To destroy Napfheer ability to resist and occupy the Napf landmass.//What are the enemies goal, example - To restore the train to working order and continue the relocation of the experimental T-80s.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<font color='#FFA500'>a. Disposition:</font><br/>
Our task force is located at a defensive position at a small industrial camp west of the village of Truebsal and north of the town of Trueb.//Where do you start at, example - USMC Platoon stationed on the USS Thorne[<marker name='start'>065175</marker>]
<br/>
<br/>
<font color='#FFA500'>b. Higher Units Mission:</font><br/>
DELAY the enemy assault.// If part of a larger unit operation list the goal here, otherwise put N/A
<br/>
<br/>
<font color='#FFA500'>c. Composition:</font><br/>
Napfheer infantry platoon, with support from a motorized anti-tank guided missile section. 1st Platoon, though it has been reduced by almost half, is defending our eastern flank and will delay enemy attacks from their direction.//The object for the deploying force, example - USMC aboard the USS Throne are to secure and destroy the experimental T-80s.
<br/>
<br/>
<font color='#FFA500'>d. Supporting fires:</font><br/>
None//Friendly Artillery is listed here, otherwise put None
<br/>
<font color='#FFA500'>e. Attachments/Detachments:</font><br/>
None//If any unique attachments, list what they're for, example - 2x UH-1Y Venoms for logistics and CAS.
<br/>
<br/>
<font color='#FFA500'>f. Assets:</font><br/>
NH:<br/>
Two Land Rover Milan Missile Carriers<br/>
Two Ural Transports w/ Supplies<br/>
Stinger Missiles in resupply Urals<br/>
Civilian Truck stuffed with E-Tools<br/>
//Vehicles that the Friendly side has to use, example - 2x UH-1Y Venom with 2x M134 door guns and 2x rocket pods.
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>DELAY</font> the enemy assault and <font color='#FFA500'>RETREAT</font> to Trueb once enemy force becomes overwhelming or too many casualties are taken.
//What the mission is
//Example:
//Secure the area around the derailed train followed by the destruction of all the experimental T-80s.<br/>
//All USMC forces must extract from the AO once the objective is complete.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
Our force will entrench and recieve the enemy attack, hoping to either defeat the enemy attack, or inflict as many casualties as possible before retreating to the company HQ at Trueb, where heavier defenses are being prepared to delay further enemy action.//What the operation will entail.
<br/>//Example:
//USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
//transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.
<font color='#FFA500'>b. Scheme of Manoeuvre</font><br/>
Up to Platoon Commander.
//How the unit will move, usually left up-to the PLT LDR to decide
//Example:
//USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
//Further movement will be as per PLT LDR's Discretion
<br/>
<font color='#FFA500'>c. Main Effort</font><br/>
//Main focus of the mission, should be short, example - Destroy the experimental T-80s.
Resist the enemy assault for as long as possible.
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
//Unless needed to assign special tasks, leave as example: As per PLT LDR's Discretion.
As per PLT LDR's Discretion
<br/>
<font color='#FFA500'>e. Coordinating Instructions</font><br/>
<font color='#70db70'>i) Timings:</font><br/>
//When the mission should start
//Example - USMC Forces will launch the operation at 1600hrs. Further time of Movement will be as per PLT LDR's Discretion.
<br/>
Mission will begin at 1745 hours. It is predicted that the enemy will attack five minutes from then.
<br/>
<font color='#70db70'>ii) Control Measures:</font><br/>
As per PLT LDR's Discretion.
<br/>
<font color='#70db70'>iii) Rules of Engagement:</font><br/>
If it is a Russian, shoot it.//Put RoE rules here
//Example - All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
<font color='#FFA500'>i) SOP Variations</font><br/>
Dress: NH Infantry wears flecktarn uniforms. NH Scouts wear autumn pattern gorkha suits and different helmets than the infantry.<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
<font color='#FFA500'>ii) Logistic Support</font><br/>
Replen Plan: None<br/> // Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
<font color='#FFA500'>iii) Medical</font><br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
<br/>
ENDTAB;

// Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
<font color='#FFA500'>i) Chain of Command:</font><br/>
No Change.<br/>
<br/>
<font color='#FFA500'>ii) Frequencies:</font><br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/><br/>
1st Squad- SR 1<br/>
2nd Squad- SR 2<br/>
3rd Squad- SR 3<br/>
Milan Section- SR 4<br/>
HQ Squad- SR 8<br/>
<br/>
Vehicle Assets share their radio channels with their attached squads.
<br/><br/>
<font color='#FFA500'>Callsigns: </font>
<br/> HQ- 1'0 Actual
<br/>1st Platoon Infantry Squads- Squad 1-3
<br/>Tank Destroyers- Victor 1 and 2
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes. // change the XX to what you set the time limit to
<br/>
<br/>//Any special mission notes, example - USMC must secure and hold the train for at least 5 minutes before the explosive crates are spawned on the USS Thorne.
<br/>
<br/>Victory is achieved when enemy is no longer attacking in sufficient force to plausible capture player positions, or when NH forces successfully delay and retreat with acceptable casualties.// put win condition here
<br/>Defeat occurs when the NH forces suffer 75% casualties.//put failure conditions here, example - Russian forces rescure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
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