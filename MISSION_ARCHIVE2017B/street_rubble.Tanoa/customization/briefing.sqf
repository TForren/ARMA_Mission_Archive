#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
A constant fight for control continues through Georgetown. Advanced US forces have been cut off from their FOB with a lone US Army M1A2 TUSK II. The US must push through the urban rubble to relink with the Georgetown FOB.
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Possible civilian presence but is unliking.

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Georgetown.

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
War-torn captial city. Destruction of most buildings with blocked roads from wrecked vehicles and building rubble (marked in black crosses). Fog and smoke. Overcast sky.

<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Anti US Nationalist Militia
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Soviet-era small arms. Low-grade body armor. No vehicle armor expected.
<br/>
<font color='#FFA500'>Strength:</font><br/>
Unknown.
<br/>
<font color='#FFA500'>Location:</font><br/>
Georgetown.
<br/>
<br/>
<font color='#FFA500'>MLCOA:</font><br/>
Militia forces will likely react to US movement in town with consistant assaults. 
<br/>
<br/>
<font color='#FFA500'>MDCOA:</font><br/>
Militia forces will realize the M1A2 is alone and will send all possible manpower to take the oppertunity to destroy an M1A2.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
N/A
<br/>
<font color='#FFA500'>Airthreat:</font><br/>
N/A
<br/>
<font color='#FFA500'>Morale:</font><br/>
MEDIUM
<br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
N/A
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:</font><br/>
Relink 1PLT and the M1A2 to the FOB
<br/><br/>
<font color='#FFA500'>b. Composition:</font><br/>
1 PLT is comprised of 2x rifle squads and 1x HQ element.
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:</font><br/>
N/A
<br/>
<font color='#FFA500'>d. Attachments/Detachments:</font><br/>
1x M1A2
<br/>
<br/>
<font color='#FFA500'>e. Assets:</font><br/>
1x M1A2<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
1 PLT must ESCORT the M1A2 to safety. The M1A2 must survive.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>b. Scheme of Manoeuvre</font><br/>
1 PLT will move by foot securing 360 around the M1A2.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort</font><br/>
ESCORT the M1A2 to safety.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions</font><br/>
<font color='#70db70'>i) Timings:</font><br/>
1 PLT must step off from ORP NLT T+5 minutes. It is likely the enemy force already knows of the US movement.

<br/>
<br/>
<font color='#70db70'>ii) Control Measures:</font><br/>// these are usually set by company. Example: Left boundary, house located grid 12346789, right boundary, small gathering of trees grid 123456789.
US forces must stay on the designated path. Leaving the path may result in friendly fire by other troops operating in the AO.<br/>
<br/>
<font color='#70db70'>iii) Rules of Engagement:</font><br/>
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
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
		<br/>		Long Range: - AN/PRC148
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
		<br/> 	GRIZ	- 1 M1A2 TUSK II
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


case east: {
	
NEWTAB("I. Situation:")
<br/>
A constant fight for control continues through Georgetown. Advanced US forces have been cut off from their FOB with a lone US Army M1A2 TUSK II. The US must push through the urban rubble to relink with the Georgetown FOB.
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Possible civilian presence but is unliking.

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Georgetown.

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
War-torn captial city. Destruction of most buildings with blocked roads from wrecked vehicles and building rubble (marked in black crosses). Fog and smoke. Overcast sky.

<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
US Forces
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Modern US arms and armor. Heavy vehicle armor.
<br/>
<font color='#FFA500'>Strength:</font><br/>
2x Squads and 1x M1A2 Tank.
<br/>
<font color='#FFA500'>Location:</font><br/>
Georgetown.
<br/>
<br/>
<font color='#FFA500'>MLCOA:</font><br/>
US Forces will attempt to secure the roads as they escort the vehicle to the FOB.
<br/>
<br/>
<font color='#FFA500'>MDCOA:</font><br/>
US Forces may dangerously rush to the FOB without caution leaving Nationalist troops dazed.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
N/A
<br/>
<font color='#FFA500'>Airthreat:</font><br/>
N/A
<br/>
<font color='#FFA500'>Morale:</font><br/>
MEDIUM
<br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
N/A
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
Start on the middle infantry marker.
<br/>
<br/>
Nationalist Troops are all across the city and are fighting on all fronts. They will likely join us in the assault on the M1A2.
<br/>
<br/>
<font color='#FFA500'>Assets:</font><br/>
1x UAZ (Dshkm) with extra supplies<br/>
ENDTAB;

NEWTAB("II. Mission:")
Destroy the M1A2.
ENDTAB;

};
}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 50 minutes. // change the XX to what you set the time limit to
<br/>
<br/>//Any special mission notes, example - USMC must secure and hold the train for at least 5 minutes before the explosive crates are spawned on the USS Thorne.
<br/>
<br/>US Victory is achieved when the M1A2 arrives at the FOB.// put win condition here
<br/>Nationalist Victory is achieved when the M1A2 is destroyed. //put failure conditions here, example - Russian forces secure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
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