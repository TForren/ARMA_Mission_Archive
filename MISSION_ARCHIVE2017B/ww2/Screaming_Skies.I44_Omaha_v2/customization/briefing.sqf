#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case independent: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
The primary objective at Omaha is to secure a beachhead of eight kilometres (5 miles) depth, between Port-en-Bessin and the Vire River, linking with the British landings at Gold to the east, and reaching the area of Isigny to the west to link up with VII Corps landing at Utah.
<br/><br/>
101st Airborne Division
<br/>
<br/>

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
In-land Normandy beach.

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Night. 1-hour from sunrise. Clear skies no rain expected.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Wehrmacht Heer
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Kar98Ks, MP44s, MP40s, MG42s, Panzerfausts, RPzB Panzerschrecks.
<br/><br/>
<font color='#FFA500'>Strength:</font><br/>
N/A
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
N/A
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:</font><br/>
To bring chaos to German order.
<br/><br/>
<font color='#FFA500'>b. Composition:</font><br/>
3x Rifle Squad
<br/>1x PLT HQ
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:</font><br/>
N/A
<br/><br/>
<font color='#FFA500'>d. Attachments/Detachments:</font><br/>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Assets:</font><br/>
N/A
<br/>
ENDTAB;

NEWTAB("II. Mission:")
Disrupt logistics, destroy AA positions, Eliminate German officers. No prisoners can be maintained.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
101st screaming eagle paratroopers will drop behind enemy lines to disrupt German organization.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort</font><br/>
Destroy AA positions, logistics trucks, 
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
		<br/>	Primary: Star/Texas
		<br/>
		<br/>	Alternate: Number combo = 5
		<br/>
		<br/>	Running: Cookie Jar
ENDTAB;


}; //End of west case


case west: { //If player is west he receives this briefing
NEWTAB("Notes:")
<br/>Note that you are NOT a game master. You are a commander and your medium is zeus. You are unrestricted as to compensate for arma's terrible AI. In a perfect world, you would have no access to spawning, teleporting, remote controlling, etc. However these are available to make up for the AI's inability to do anything by itself.
<br/>
<br/>If AI is running each other over (or just dying for bullshit reasons), you are free to respawn them. However you are NOT to spawn new units through the zeus interface. They must be purchased through the scripted requisition system.
<br/>
<br/>Teleportation should only be used when the AI is stuck and being dumb. Logistics is important and it is very obvious to the players when a unit is suddenly somewhere it wasn't before even if it's off screen.
<br/>
<br/>You are to NEVER kill a player via remote control. This simply turns the game into a TVT against an omnipotent being which is not the purpose of Zeus-as-Commander. (remember: You are not a game master. This is a military AO not a tabletop.)
<br/>
<br/>Artillery via zeus interface is never to be used.
<br/> 
ENDTAB;

NEWTAB("Requisition System:")
<br/>Units may only be spawned via the Requisition System.
<br/>
<br/>This is the table in front of you in-game with separate radios for each category.
<br/>
<br/>Use the scroll wheel to select which you wish to requisition. Each have their own price as well as a total limit. 
<br/>
<br/>Your units may spawn wildly off map or in the woods. You may freely teleport to position them at the start.
<br/>
ENDTAB;

NEWTAB("Requisition Points:")
<br/>Your requisition points are shown on the map by a dynamic marker that will update with the latest value.
<br/>
<br/>Each objective that is successfully completed by the US Forces will grant you more requisition points.
<br/>
<br/>At the beginning, you have very little to work with but as the mission progresses, you will be given more.
<br/>
ENDTAB;

NEWTAB("Prexisting Units:")
<br/>There are many German forces already on the map. Many of them can not be controlled (yet) as they are positioned in defensive posture. When these defensive personnel start taking casualties, their movement is re-enabled and you may give them orders.
<br/>
<br/>Otherwise, you do not start with direct-command units and you must requisition what you want at the start.
ENDTAB;

};

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
	<br/><execute expression='systemChat str westCasualty'>Check German Casualty Percentage</execute>
	<br/><execute expression='systemChat str indCasualty'>Check US Casualty Percentage</execute>
	<br/>
	
	<br/><execute expression='endMessage call FNC_EndMissionRequest'>End Mission</execute>  

	ENDTAB;
};


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE