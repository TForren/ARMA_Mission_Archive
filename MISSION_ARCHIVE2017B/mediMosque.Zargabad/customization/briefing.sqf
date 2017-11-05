#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
The local Zargabad population has suffered greatly at the hands of collateral damage. UN Forces have established humanitarian aid in the Zargabad mosque. However, Zargabad Militia wants to push the UN out as well and is pushing against UN peacekeeping forces. US Forces are been requested to reinforce the UN with much needed medical supplies and man power. 
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Civilians present in Zargabad and especially in the mosque. 

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Heart of Zargabad. 

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
War-torn captial city. Destruction of most buildings with blocked roads from wrecked vehicles and building rubble (marked in black crosses). Fog and smoke. Overcast sky.

<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Takistani Militi
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Soviet-era small arms. No armor. light armored technicals expected. 
<br/>
<font color='#FFA500'>Strength:</font><br/>
Scattered groups across the city attracted by gunfire.
<br/>
<font color='#FFA500'>Location:</font><br/>
Zargabad.
<br/>
<br/>
<font color='#FFA500'>MLCOA:</font><br/>
Militia forces will likely take up positions within destroyed buildings to fire down into the tops of vehicle turrets. 
<br/>
<br/>
<font color='#FFA500'>MDCOA:</font><br/>
heavy fighting may draw further militia forces to a single location and overwhelm the US forces.
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
Hearts and Minds
<br/><br/>
<font color='#FFA500'>b. Composition:</font><br/>
1 PLT is comprised of 3x rifle squads and 1x HQ element.
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:</font><br/>
N/A
<br/>
<font color='#FFA500'>d. Attachments/Detachments:</font><br/>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Assets:</font><br/>
2x M1230 Urban MRAP (M2)<br/>
1x M1230A1 Medical Support MRAP <br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
1 PLT must navigate the war-torn urban environment to deliver the medical MRAP to the mosque.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>b. Scheme of Manoeuvre</font><br/>
1 PLT will move by MRAP and foot to the Zargabad Mosque.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort</font><br/>
Keep the MRAP safe and deliver it to the mosque.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions</font><br/>
<font color='#70db70'>i) Timings:</font><br/>
1 PLT must step off from ORP NLT T+5 minutes as the UN are actively under assault.

<br/>
<br/>
<font color='#70db70'>ii) Control Measures:</font><br/>// these are usually set by company. Example: Left boundary, house located grid 12346789, right boundary, small gathering of trees grid 123456789.
North boundry 0425 South boundry 0405. East LOA 0430.<br/>
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
<br/>Time Limit is 50 minutes. // change the XX to what you set the time limit to
<br/>
<br/>//Any special mission notes, example - USMC must secure and hold the train for at least 5 minutes before the explosive crates are spawned on the USS Thorne.
<br/>
<br/>Victory is achieved when US Forces deliver the medical MRAP to the mosque.// put win condition here
<br/>Defeat occurs when the medical MRAP is destroyed or US forces take too many casualties. //put failure conditions here, example - Russian forces secure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
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