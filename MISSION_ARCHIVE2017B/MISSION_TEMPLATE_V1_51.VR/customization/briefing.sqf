#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
//Give a brief description of the current situation. Ex. what has happened that led up to this mission. Generally should give an idea of why this mission is happening.
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
//Is there civilians in the area or have they been driven away

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
//That area of interest/concern to the commander, including the area of influence, areas adjacent thereto, and extending into enemy territory to the objectives of current or planned operations. This area also includes areas occupied by enemy forces who could jeopardize the accomplishment of the mission. 

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
// Describe the terrain and weather conditions: Mountainous, Countryside, open, dense woods, light/heavy fog, rain, clear skies, etc.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
//Name of the enemy force(s) here. Ex. Armed Forces of the Russian Federation (MSV)
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
//List equipment that the enemy most likely uses
<br/>
<font color='#FFA500'>Strength:</font><br/>
// An approximation of enemy strength
<br/>
<font color='#FFA500'>Location:</font><br/>
//Location of enemies
<br/>
<br/>
<font color='#FFA500'>MLCOA:</font><br/>
//Most Likely Course Of Action for the enemy, this is what the enemy is going to do most of the time, example - .
// On contact, EN will initially attempt to return fire. After determining the situation untenable, the EN will attempt to fix and attrition with massed direct fires and reinforce from adjacent elements.
<br/>
<br/>
<font color='#FFA500'>MDCOA:</font><br/>
//Most Dangerous Course Of Action, this is usually not necessary, but generally is an action that will cause the most damage to your operational intent that is within EN capability.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
//Enemy Artillery is listed here, otherwise put Unknown or N/A, NOT FOR STATIC NON-ARTILLERY EMPLACEMENTS.
<br/>
<font color='#FFA500'>Airthreat:</font><br/>
//Any enemy planes operating in the area, if none put N/A
<br/>
<font color='#FFA500'>Morale:</font><br/>
// A rating of the enemy morale (Low,High,etc)
<br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
//Does the enemy a pose a Chemical, biological, radiological and nuclear threat, list it here. Example - The Enemy pose no CBRN threat.
<br/>
<br/>
<font color='#FFA500'>Future intentions:</font><br/>
//What are the enemies goal, example - To restore the train to working order and continue the relocation of the experimental T-80s.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:</font><br/>
// Describe the intent of higher, can go up to battalion level eg. 1UP intent is to take airfield, 2UP intent is create a forward landing zone for follow on forces.
<br/><br/>
<font color='#FFA500'>b. Composition:</font><br/>
//Describe the makeup of the friendly forces. Example: 1x Light Rifle Company, which is comprised of 3 platoons with 3 rifle squads and a PLT HQ in each.
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:</font><br/>
//Friendly Artillery is listed here, this might be used for describing preplanned firemissions that friendly artillery has. for example: BAT artillery will suppress  AG3010603 with HE firemissions. 
<br/>
<font color='#FFA500'>d. Attachments/Detachments:</font><br/>
//If any unique attachments, list what they're for, example - 2x UH-1Y Venoms for logistics and CAS.
<br/>
<br/>
<font color='#FFA500'>e. Assets:</font><br/>
//US:<br/>//Faction
//List any vehicles the the friendly side has
<br/>
ENDTAB;

NEWTAB("II. Mission:")
//What the mission is
//A concise statement that includes the Who, What, Where, When, and Why of the operation to be conducted. This is generally a single sentence and there should be no question as to what needs to be done. Capitalization of key words helps the reader focus on the important aspects of the mission.
//Ex. HELIX 1 is to SECURE the town of Tottah and DESTROY any enemy assets.
//Ex2. We are SE2. ASAP, 2 Plt destroys the EN IVO [025,074] IOT prevent the EN from engaging with Company A.  
//Ex2 cont. O/S, Hold and prepare for follow-on mission.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
// The concept of operation describes the  fight from the line of departure to the limit of advance, while succinctly defining what each subordinate unit will accomplish. It should be a well-written paragraph that enables subordinates to visualize how, when, and where their unit will contribute to mission accomplishment. 
//Example:
//USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
//transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.
<br/>
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre</font><br/>
//How the unit will move, usually left up-to the PLT LDR to decide
//Example:
//USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
//Further movement will be as per PLT LDR's Discretion
<br/>
<br/>
<font color='#FFA500'>c. Main Effort</font><br/>
//Who the main effort is with, example: 1 platoon will be the main effort during the assault, with 2 platoon will support with 3 platoon in reserve.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
//Usually companies tasking to their platoons. Example: 1 platoon will provide a blocking force at grid 123456 in order to allow 2 platoon to assault and destroy enemy elements
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions</font><br/>
<font color='#70db70'>i) Timings:</font><br/>
//Timing for phases during the mission, can also be timing for expected enemy contact in defence mission
//Example -  Step off from ORP NLT than 1815, Expected Enemy Contact:  16 1730 JUN 91

<br/>
<br/>
<font color='#70db70'>ii) Control Measures:</font><br/>// these are usually set by company. Example: Left boundary, house located grid 12346789, right boundary, small gathering of trees grid 123456789.
As per PLT LDR's Discretion.<br/>
<br/>
<font color='#70db70'>iii) Rules of Engagement:</font><br/>
//Put RoE rules here
//Example - All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
<font color='#FFA500'>i) SOP Variations</font><br/>
Dress: None<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
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
Morphine: 1 per Man.<br/>// most of the time this is controlled by doctors at battalion scale. morphine/epi is never applied by regular riflemen.
ENDTAB;

 // Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
<br/>a. Command
// change this around to fit your mission. * indicates your unit
		<br/>
		<br/>
		<br/>	1. Higher Unit's Command Post: 
		<br/>
		<br/>		<marker name='hq'>Alpha Co. HQ</marker>
		<br/>
		<br/>	2. Key Personnel and CP during movement, at ORP, on OBJ:
		<br/>
		<br/>		TBD
		<br/>
		<br/>	3. Succession of Command:
		<br/>
		<br/>		Platoon Sergeant, 1st Squad Leader, 2nd Squad Leader, 3rd Squad Leader
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Plt, 1 Squad 	- Channel 1, 2400.6
		<br/> 		1 Plt, 2 Squad 	- Channel 2, 2401.6
		<br/> 		1 Plt, 3 Squad 	- Channel 3, 2402.6
		<br/> 		1 Plt, HQ 		- Channel 4, 2403.6
		<br/>
		<br/>
		<br/>		Long Range: - AN/PRC152
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel 1, 36.625 
		<br/>
		<br/><font color='#FFA500'>c. Codewords</font>
		<br/>
		<br/>	nil
		<br/>
		<br/><font color='#FFA500'>d. Special Signals</font>
		<br/>
		<br/>	Waving like a idiot - Don't shoot me
		<br/>
		<br/>	Blue Chemlight - Friendly Casualty
		<br/>	Green Chemlight - Cleared Building
		<br/>	Red Chemlight - Landing Zone
		<br/>
		<br/>	Green Smoke - Friendlies
		<br/>	Yellow Smoke - Mass Casualties
		<br/>	Red Smoke - Landing Zone
		<br/>	Purple Smoke - N/A
		<br/>
		<br/><font color='#FFA500'>e. Call signs</font>
		<br/>	Callsign | unit
		<br/>  	1'1 	- 1 Squad
		<br/>  	1'2 	- 2 Squad
		<br/>  	1'3 	- 3 Squad
		<br/> 	1'6 	- 1 Plt Commander
		<br/>  	1'7 	- 1 Plt PSG
		<br/> 	1'6R 	- 1 Plt RTO
		<br/>
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>
		<br/>	Primary: Spider/Castle
		<br/>
		<br/>	Alternate: Number combo = 9
		<br/>
		<br/>	Running: Cookie Jar
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is XX minutes. // change the XX to what you set the time limit to
<br/>
<br/>//Any special mission notes, example - USMC must secure and hold the train for at least 5 minutes before the explosive crates are spawned on the USS Thorne.
<br/>
<br/>Victory is achieved when // put win condition here
<br/>Defeat occurs when //put failure conditions here, example - Russian forces secure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
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
	//Extra checks can be added to endConditions.sqf - booleans (true/false) and numbers are able to be parsed
	//<br/><execute expression='systemChat str testVar'>Test Boolean Handling</execute>
	<br/>
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Call Bluefor Victory</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call Bluefor Failure</execute>
	<br/>
	//Any amount of endConditions can be added, just add the message to settings.sqf
	//<br/><execute expression='customMessage call FNC_EndMissionRequest'>Call Bluefor Failure</execute>
	ENDTAB;
};


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE