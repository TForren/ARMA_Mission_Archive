#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
A Tanoa cartel known as the Sones The Jungal (STJ) have taken an aggressive stance against the local population by locking down the La Rochelle Aerodrome airfield with stingers from the occupied hotel resort on Ravi-ta Island. 

Under the cover of darkness and fog, MARSOC operatives have been sent to eliminate the AA positions and the leader of the STJ branch.
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
All civilians have been forced off the island by the STJ 
<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Hotel Resort on Ravi-ta Island.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
// Describe the terrain and weather conditions: Mountainous, Countryside, open, dense woods, light/heavy fog, rain, clear skies, etc.
Dark morning with dense low fog. Slightly cloudy skies.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Sones The Jungal (STJ) Cartel Members.
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
AKMs, AK-74s, AK-47s, PKMs, RPG-7s. Irregular uniforms mixed civilian clothing with Greek military surplus/looted uniforms. No NV capability.
<br/><br/>
<font color='#FFA500'>Strength:</font><br/>
Small groups at AA with patrols among the roads. Dense garrison around the HVT at the hotel. Overwelming reinforcements possible from the eastern side of the island.
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
Ravi-ta Island.
<br/><br/>
<font color='#FFA500'>MLCOA:</font><br/>
Cartel members will likely fight to defend the stingers and the HVT. 
<br/>
Insurgents are likely untrained and will most likely be quite verbose.
<br/><br/>
<font color='#FFA500'>MDCOA:</font><br/>
The HVT may immediatley call for reinforcements and overwelm the MARSOC operatives.
<br/><br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
No support expected.
<br/><br/>
<font color='#FFA500'>Airthreat:</font><br/>
None.
<br/><br/>
<font color='#FFA500'>Morale:</font><br/>
MEDIUM.
<br/><br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
None.
<br/><br/>
<font color='#FFA500'>Future intentions:</font><br/>
To rule over the local government by controlling the airspace.
<br/>

ENDTAB;

NEWTAB("--HVT:")
<br/>
<font color='#FFA500'>Discription:</font><br/>
The HVT is a defected Helantic Forces Officer using his training to run a high position in the STJ.
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
The HVT will either be located in one of the two buildings: <marker name='hv1'>Location 1</marker> <marker name='hv2'>Location 2</marker>
<br/><br/>
<img image='hvt.jpg' width='512' height='512'/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:</font><br/>
Neutralize AA positions and Eliminate the HVT.
<br/><br/>
<font color='#FFA500'>b. Composition:</font><br/>
MARSOC Raiders Troop is comprised of 4x raider elements and 1x HQ element
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:</font><br/>
N/A
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:</font><br/>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Assets:</font><br/>
4x Combat Rubber Raiding Craft w/ paddles (CRRC)
<br/>2x night operations/explosives crates
<br/>
ENDTAB;

NEWTAB("II. Mission:")
RAID the island to DESTORY stinger positions and ELIMINATE the HVT.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
MARSOC RAIDER Troop will move under the cover of night and fog to destroy the stinger positions, eliminate the HVT, and extract.
<br/><br/>
<font color='#FFA500'>b. Coordinating Instructions</font><br/>
<font color='#70db70'>i) Timings:</font><br/>
Step off from ORP NLT than 0602
<br/><br/>
<font color='#70db70'>ii) Control Measures:</font><br/>// these are usually set by company. Example: Left boundary, house located grid 12346789, right boundary, small gathering of trees grid 123456789.
As per Troop LDR's Discretion.<br/>
<br/>
<font color='#70db70'>iii) Rules of Engagement</font><br/>
//Put RoE rules here
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
<font color='#FFA500'>i) SOP Variations</font><br/>
Dress: None<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
Equipment: Explosive satchels and clackers. Chemlights and strobes.<br/>
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
		<br/>		Operations SGT should coordinate explosives distribution at ORP. All element leads operate independantly at OBJ.
		<br/>
		<br/>	3. Succession of Command:
		<br/>
		<br/>		HQ Team Lead, HQ Team Chief, Operations SGT, Asst. Operations SGT, Element 1 Team Lead, Element 2 Team Lead, Element 3 Team Lead, Element 4 Team Lead
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Troop, 1 Element 	- Channel 1, 2400.6
		<br/> 		1 Troop, 2 Element 	- Channel 2, 2401.6
		<br/> 		1 Troop, 3 Element 	- Channel 3, 2402.6
		<br/> 		1 Troop, 4 Element  - Channel 4, 2403.6
		<br/> 		1 Troop, HQ Element - Channel 6, 2405.6
		<br/>
		<br/>
		<br/>		Long Range: - AN/PRC152 + AN/PRC117f
		<br/>
		<br/> 		1 Troop Tac Net   	- Channel 1, 36.625 
		<br/>
		<br/><font color='#FFA500'>c. Codewords</font>
		<br/>
		<br/>	nil
		<br/>
		<br/><font color='#FFA500'>d. Special Signals</font>
		<br/>
		<br/>	Waving like a idiot - Don't shoot me
		<br/>
		<br/><font color='#FFA500'>e. Call signs</font>
		<br/>	Callsign | unit
		<br/>  	1'1 	- RAIDER 1
		<br/>  	1'2 	- RAIDER 2
		<br/>  	1'3 	- RAIDER 3
		<br/>  	1'4 	- RAIDER 4
		<br/> 	1'6 	- RAIDER 6
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>
		<br/>	Primary: Camper/Killer
		<br/>
		<br/>	Alternate: Number combo = 5
		<br/>
		<br/>	Running: Scooby Snacks
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 50 minutes. // change the XX to what you set the time limit to
<br/>
<br/>SHIFT+K will killswitch the boat engine. SHIFT+WASD paddles.
<br/>
<br/>
<br/>Victory is achieved when both AA positions and the HVT are eliminated. // put win condition here
<br/>Defeat occurs when MARSOC suffer heavy casualties (75%)
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
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>All destroyed and extracted</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call Bluefor Failure</execute>
	ENDTAB;
};


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE