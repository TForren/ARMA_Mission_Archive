#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Iraq Army Forces have setup an artillery position South West of their Northern Airfield. The effective distance of the d-30s is too great to ignore and must be destroyed.
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
No civilians remaining in the AO.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Mountains and Roads around the area of Gospandi.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Mountains with gentle slopes. Open ground with no rock or tree cover. Deep defilade.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Iraq Army
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
AKs, RPG-7s, PKM, light/medium armor.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
~40 personnel at the D-30 artillery position.<br/>
-1x Mechanized Company at the Iraqi Northern Airfield.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Gispandi
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Iraq Army Forces will likely call in lightly-equip quick responders to fight back against US Forces. It is unlikely that the QRF will be called until the intentions of the US are known and are sure that the US raid is not simply a diversion. 
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Iraq Army Forces may call in an overwelming QRF and overtake the situation.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:<br/></font>
BM-21 Grads at Northern Airfield
<br/>
<br/>
<font color='#FFA500'>Airthreat:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>Morale:<br/></font>
HIGH
<br/>
<br/>
<font color='#FFA500'>CBRN Threat:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>Future intentions:<br/></font>
Unknown.
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Eliminate Iraqi artillery positions.
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
1st PLT is comprised of 2x Rifle squads, 1x Weapons squad, and 1x HQ
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
US:<br/>//Side
-2x Ammo Crates with explosives.
-1x dragon crate with 5x tubes and 2x daysights.
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>RAID</font> and <font color='#FFA500'>DESTROY</font> the Iraqi D-30 position and <font color='#FFA500'>EXTRACT</font> to avoid overwelming QRFs.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation<br/></font>
Destroy the Iraqi D-30s.
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre<br/></font>
By Air
<br/>
<br/>
<font color='#FFA500'>c. Main Effort<br/></font>
Prevent the establishment of a full artillery position.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions<br/></font>
<br/>
<font color='#70db70'>i) Timings:<br/></font>
As per PLT LDR's Discretion.
<br/>
<br/>
<font color='#70db70'>ii) Control Measures:<br/></font>
As per PLT LDR's Discretion.
<br/>
<br/>
<font color='#70db70'>iii) Rules of Engagement<br/></font>
//Put RoE rules here
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
<font color='#FFA500'>i) SOP Variations<br/></font>
Dress: None<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
<font color='#FFA500'>ii) Logistic Support<br/></font>
Replen Plan: None<br/> // Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
<font color='#FFA500'>iii) Medical<br/></font>
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
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Long Range: - AN/PRC77
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel <font color='#70db70'>1</font>, 36.625 
		<br/> 		TAD Net (AIR)	  	- Channel <font color='#70db70'>2</font>, 37.625 
	/*	<br/> 		2 Plt Tac Net   	- Channel 2, 37.775
		<br/> 		3 Plt Tac Net   	- Channel 3, 40.275	[OffMap]
		<br/> 		4 Plt Tac Net 		- Channel 4, 42.675 
		<br/> 		Alpha Co. Net		- Channel 5, 47.35
		<br/> 		Co. Mortars Net 	- Channel 6, 051.85
		<br/> 		TAD Net (Air) 		- Channel 7, 054.5
		<br/>*/
		<br/>
		<br/><font color='#FFA500'>c. Codewords</font>
		<br/>	nil
		<br/>
		<br/><font color='#FFA500'>d. Special Signals</font>
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
	/*	<br/>
		<br/>  	2'1 	- 1 Squad*
		<br/>  	2'2 	- 2 Squad*
		<br/>  	2'3 	- 3 Squad*
		<br/> 	2'6 	- 1 Plt Commander*
		<br/>  	2'7 	- 1 Plt PSG*
		<br/>
		<br/>  	3'1 	- 1 Squad
		<br/>  	3'2 	- 2 Squad
		<br/>  	3'3 	- 3 Squad
		<br/> 	3'6 	- 1 Plt Commander
		<br/>  	3'7 	- 1 Plt PSG
		<br/>
		<br/>  	4'1 		- Assault Section
		<br/>  		4'1A 	- Assault Section, Alpha Squad
		<br/>  		4'1B 	- Assault Section, Bravo Squad
		<br/>  		4'1C 	- Assault Section, Charlie Squad
		<br/>  	4'2 		- Machine Gun Section
		<br/>  		4'2A 	- Machine Gun Section, Alpha Squad
		<br/>  		4'2B 	- Machine Gun Section, Bravo Squad
		<br/>  		4'2C 	- Machine Gun Section, Charlie Squad
		<br/>  	4'3 		- LWCMS Mortar Section
		<br/>
		<br/> */
		<br/>	
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>	Challenge: Iron/Waffle
		<br/>
		<br/>	Alternate: Number combo = 6
		<br/>
		<br/>	Running: Fist
ENDTAB;


}; //End of west case

};

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>US Victory is achieved when all mortars are destroyed and all US Forces are extracted.
<br/>
<br/>Russian Victory is achieved when US sustain heavy casualties.
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