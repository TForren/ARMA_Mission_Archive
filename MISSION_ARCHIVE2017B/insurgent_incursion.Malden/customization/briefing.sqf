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

Greek insurgency cells have developed across Malden. To react, The Greek military has acquired 2x KA-52s to be used as counter-insurgency gunships. Leaked intel reveals that one Ka-52 is temporarily grounded due to a malfunction on Moray Island while the other is stationed in the NE Malden airport about 8km west of Moray.
<br/>
<br/>
Through the cover of darkness and rain, Greek insurgents have made it to the beachs or Moray and are preparing to raid the airfield to destroy the Ka-52 while it's grounded.
<br/>
Unfortunately, the fishing boat ran aground and has destroyed its rotors and cannot be used.
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
3 months after the insurgency took off, the Greek Military evacuated Moray Island of all civilians to militarize the airport with Hellenic Ground Reserve Forces.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Moray Island and the former Pegassus Air Co. Airfield.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Storm rain and wind. Dark Early morning with heavy overcast. Rain expected to lighten up but will not be going away anytime soon. Sharp cliff rocks along the southern parts of Moray. Fortified coastal positions all along the island paremeter. Tiered roads and plateaus leading up to the airfield.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Hellenic Ground Reserve Forces.
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
FN FALs, MG3s, M16A2s, M72s. Modern Body Armor. No Night Vision Capability.
<br/><br/>
<font color='#FFA500'>Strength:</font><br/>
~60 Reserve personnel across the entire island. Patrols expected among the pathways and civilian/military buildings are likely garrisoned.
<br/><br/>
Airborne and Hellenic Naval Forces 8km west will likely be called in should the Ka-52 on Moray be threatend by the insurgent presence. 
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
Moray
<br/><br/>
<font color='#FFA500'>MLCOA:</font><br/>
Hellenic Reserve Forces have been stationed on the island for months and are unlikely to expect contact. However, the adrenaline of an engagement to break the boredom may be a welcomed surprise. 
<br/>
<font color='#FFA500'>MDCOA:</font><br/>
Hellenic Reserve Forces may be under routine inspection and could be abnormally ready to defend and eager to call in reinforcements quickly.
<br/><br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
No support expected.
<br/><br/>
<font color='#FFA500'>Airthreat:</font><br/>
Reinforcing airborne infantry.
<br/><br/>
<font color='#FFA500'>Morale:</font><br/>
HIGH. The bored and eager reservists have waited for an engagement for months.
<br/><br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
None.
<br/><br/>
<font color='#FFA500'>Future intentions:</font><br/>
Return the Moray Ka-52 to the skies.
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Composition:</font><br/>
Insurgent Raider Group is comprised of 4 raid teams and 1x HQ team.
<br/>
<br/>
<font color='#FFA500'>b. Assets:</font>
<br/>2x ammo/explosives crates (2x explosives. 1x clacker)
<br/>Wirecutters in ammo crate
<br/>weapon flashlights in ammo crate.
ENDTAB;

NEWTAB("II. Mission:")
RAID the Island of Moray and DESTROY the Ka-52. EXTRACT by stolen boats before reinforcements arrive.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
Insurgent Raiders will either fight or sneak their way into the hanger to plant explosive charges on the Ka-52 followed by the total extraction of raider personnel.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
Should the situation permit, each raider team has the go-ahead to work entirely autonomously to destroy the Ka-52 at all costs. 
<br/>
<br/>
<font color='#70db70'>ii) Control Measures:</font><br/>// these are usually set by company. Example: Left boundary, house located grid 12346789, right boundary, small gathering of trees grid 123456789.
As per Raid HQ's Discretion.<br/>
<br/>
ENDTAB;

 // Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
<br/>a. Command
// change this around to fit your mission. * indicates your unit
		<br/>
		<br/>
		<br/>	1. Succession of Command:
		<br/>
		<br/>		HQ Team, Red, Blue, Gold, Yellow
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		Raid coordination - Channel 1, 2400.6

		<br/>
		<br/><font color='#FFA500'>c. Codewords</font>
		<br/>
		<br/>	'Fedex Delivered' - KA-52 is rigged to explode.
		<br/>
		<br/><font color='#FFA500'>d. Special Signals</font>
		<br/>
		<br/>	Waving like a idiot - Don't shoot me
		<br/>
		<br/><font color='#FFA500'>e. Call signs</font>
		<br/>	Callsign | unit
		<br/>	HQ			RAIDER HQ
		<br/>  	Red			RAIDER TEAM 1
		<br/>  	Blue		RAIDER TEAM 2
		<br/>  	Gold		RAIDER TEAM 3
		<br/>  	Yellow		RAIDER TEAM 4
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>
		<br/>	Primary: Free/Malden
		<br/>
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Explosives in the crates.
<br/>
<br/>Major Victory is achieved when the KA-52 is destroyed and all raiders extract from the Island. // put win condition here
<br/>Victory is achieved when the KA-52 is destroyed but raiders have not extracted for what ever reason (including death).
<br/>Defeat occurs when raiders are wiped out (95%)
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
	<br/>
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Extract KA-52 destroyed</execute>  
	<br/><execute expression='victoryMessage2 call FNC_EndMissionRequest'>No extract KA-52 destroyed</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>No extract KA-52 not destroyed.</execute>
	ENDTAB;
};

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE