#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
2035, The Greek economy has deteriorated to next to nothing. In an earlier attempt to save the country, the Greek Government switched back to the drachma, further worsening the situation. Now Greek civilians are using stacks of drachma as furniture. 

Greek insurgency cells have developed across Malden and, due to it being a port city, the insurgency is most prominent in Le Port. Most of the weapons fueling the insurgency have come through this port city and recent insurgency movement suggests their intent is to take control of Le Trinite. Le Trinite is currently contested between the Greek Armed Forces and the insurgency.

<br/>
<br/>

<font color='#FFA500'>a. Civilian and Police:</font><br/>
The insurgency has bullied the civilian populace into neither taking up arms or shutting themselves inside. Civilians out in the open is unlikely but calladoral damage must be avoided.   
The police reported the location of the weapons cache to US forces before completely pulling out of the insurgency-held town. 
<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Port City Le Porte, Monte Hill. 
<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
// Describe the terrain and weather conditions: Mountainous, Countryside, open, dense woods, light/heavy fog, rain, clear skies, etc.
Rainy early morning no sun and low moon light. The overcast will lower the effectiveness of NVs but is expected to clear up soon. Le Porte sits ontop of a shallow plateau with low tree cover scattered anywhere clear of buildings. no more than 50m of open ground in one area. evenly packed city houses with complete walled yards.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Greek Insurgency Forces (Freedom and Independence Army)
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
AKMs, AK-74s, AK-47s, PKMs, RPG-7s. Irregular uniforms mixed civilian clothing with Greek military surplus/looted uniforms. No NV capability.
<br/><br/>
<font color='#FFA500'>Strength:</font><br/>
Suggested 1x platoon-sized force guarding, patrolling, and garrisoning Le Porte. 
<br/><br/>
A failed Greek Military amphibious assault on Le Porte has made the insurgents paranoid of the water and will likely have fortifications setup to watch the coast (Although it did destroy the lighthouse).
<br/>Similarly, the insurgents also have boat patrols guarding the eastern coasts.
<br/><br/>
SAT images confirm Baie du Port harbor is overwatched by heavy MGs and SPG-9 recoilness rifles. This is likely the port they use for their weapons shipment and should be assumed off limits for the raid.
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
Le Port
<br/><br/>
<font color='#FFA500'>MLCOA:</font><br/>
Greek Insurgent Forces will likely have setup barricades and fortifications around the coastline and among the streets to maintain control over the strategically important city.
Organized communication among cells is unlikely so reinforcements are not expected.
<br/><br/>
Without military discipline, it is likely that not every beach fortification is manned and at the ready to defend.
<br/>
Insurgents are likely untrained and will most likely be quite verbose.
<br/><br/>
<font color='#FFA500'>MDCOA:</font><br/>
Greek Insurgent Forces may have heavily bolstered their coastal defences and MARSOC raiders may suffer casualties before hitting the beach.
<br/><br/>
Greek Insurgent Forces may use the night cover to ambush MARSOC raiders in the heart of the city and inflict heavy casualties by surrounding MARSOC.
<br/><br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
No support expected.
<br/><br/>
<font color='#FFA500'>Airthreat:</font><br/>
Shockingly, skies are still somehow controlled by Greek Military.
<br/><br/>
<font color='#FFA500'>Morale:</font><br/>
MEDIUM. The Insurgent fighters are seasoned against Greek Military and a MARSOC night raid may instill great shock and surprise.
<br/><br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
Unlikely.
<br/><br/>
<font color='#FFA500'>Future intentions:</font><br/>
To distribute the stockpiled weapons throughout Malden making it impossible for US or Greek Forces to destroy all of the weapons at once.
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:</font><br/>
Sufficate the Insurgency of weapons and munitions.
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
RAID the city of Le Port and DESTROY the entire weapons cache to prevent its distribution across Malden.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
MARSOC RAIDER Troop will perform any gear modifications at the <marker name='MARSOC'>staging island</marker>, move via CRRC to raid Le Port, destroy the weapons cache with satchels, and extract.
<br/>
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre</font><br/>
MARSOC RAIDER Troop will move via CRRC and conduct a beach raid on the southern end of the coast avoiding the insurgent boat patrols.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort</font><br/>
MARSOC RAIDER Troop's main effort is to destroy the entire weapons cache while its all in one place.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions</font><br/>
<font color='#70db70'>i) Timings:</font><br/>
Step off from ORP NLT than 0300
<br/>
<br/>
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
		<br/> 		1 Troop, 4 Element  	- Channel 4, 2403.6
		<br/> 		1 Troop, HQ Element 	- Channel 6, 2405.6
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
		<br/>	Primary: Camper/Rake
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
<br/>Victory is achieved when the cache is destroyed and all raiders extract from the city. // put win condition here
<br/>Defeat occurs when MARSOC suffer heavy casualties (75%)
<br/>
<br/>
<br/>Plan on map. Brief in-game. 10-minute setup timer.
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE