#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case independent: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
<br/>Command of Company E, 2nd Battalion, 506th Parachute Infantry Regiment of the 101st Airborne Division had temporarily fallen to Executive Officer, 1st Lt. Richard Winters. After linking up with his parent unit at the hamlet of Le Grand Chemin on the morning of 6 June 1944, Winters was ordered up front away from his company. With minimal instructions of 'There's fire along that hedgerow there. Take care of it,' and no briefing, Winters found himself given the task of destroying a German artillery battery.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Semi-clear Skies. Midday. Sectioned open ground between hedgerows and bocage.
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
Flak 88 gun crew and security forces of unknown strength.
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
[LC021977]
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:</font><br/>
To eliminate enemy artillery positions.
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
ASSAULT and CLEAR the German artillery line at LC021977.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
US Forces will move along the concealment of the bocage to assault and clear the flak 88 artillery line. 
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
Ammunition: N/A.<br/>
<br/>
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
		<br/> 		1 PLT, TAC NET 	- Channel 1, 2400.6
		<br/>
		<br/><font color='#FFA500'>c. Codewords</font>
		<br/>
		<br/>	nil
		<br/>
		<br/><font color='#FFA500'>d. Special Signals</font>
		<br/>
		<br/>	Waving like a idiot - Don't shoot me
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

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Mission ended by admin via end conditions tab.
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
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Call US Victory</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call US Failure</execute>
	ENDTAB;
};


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE