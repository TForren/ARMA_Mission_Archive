#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case east: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
The Greek military has held up great resistance against the Russian Federation take-over. One Greek military base in particular offers a perfect staging point for further options on the main island of Malden marked OBJ Kamen. Russian VDV forces will be sent in to clear and secure OBJ Kamen.
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
No civilian presence on the island.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Island of OBJ Kamen.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Clear skies. Dark Early morning. rolling defilade with moderate rock/tree cover. The military base sits on a high position and cannot be seen from most shorelines. 
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
Airborne Hellenic Forces 8km east will likely be called in once the reserve forces are aware of the Russian attack. 
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
LC0903
<br/><br/>
<font color='#FFA500'>MLCOA:</font><br/>
Hellenic Reserve Forces will likely hold their positions and call for reinforcements.
<br/>
<font color='#FFA500'>MDCOA:</font><br/>
Hellenic Reserve Forces may spot incoming Russian air and call reinforcements before any VDV have touched the ground.
<br/><br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
No support expected.
<br/><br/>
<font color='#FFA500'>Airthreat:</font><br/>
Reinforcing airborne infantry.
<br/><br/>
<font color='#FFA500'>Morale:</font><br/>
MEDIUM.
<br/><br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
None.
<br/><br/>
<font color='#FFA500'>Future intentions:</font><br/>
Maintain control over the critical island.
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Composition:</font><br/>
3x VDV Sections and 1x HQ
<br/>
<br/>
<font color='#FFA500'>b. Assets:</font>
<br/>3x Mi-8MTV-3
ENDTAB;

NEWTAB("II. Mission:")
ASSAULT and SECURE OBJ Kamen.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
VDV will move by MI-24D flying low profile to avoid detection until finally touching down to allow infantry to conduct a Infantry and Air combined assault on OBJ Kamen.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
N/A
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
		<br/>		Orel HQ, Orel 1, Orel 2 Orel 3
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>
		<br/>		1. Radio Frequencies
		<br/>
		<br/> 		TDB
		<br/>
		<br/><font color='#FFA500'>d. Special Signals</font>
		<br/>
		<br/>	Waving like a idiot - Don't shoot me
		<br/>
		<br/><font color='#FFA500'>e. Call signs</font>
		<br/>	Callsign | unit
		<br/>	Orel		Orel 91 HQ
		<br/>  	1			Orel 911
		<br/>  	2			Orel 912
		<br/>  	3		Orel 913
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
<br/>
<br/>Victory is achieved by VDV Securing and holding OBJ Kamen from counter attacks. // put win 
<br/>Defeat occurs when VDV are wiped out (85%)
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
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>OBJ Kamen Secured</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Failure Casualties.</execute>
	ENDTAB;
};

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE