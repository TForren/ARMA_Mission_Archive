#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
The Russians have arrived! The slavic invaders have managed to seize the capital of Georgetown within hours of their invasion. To suppress any local resistance, they have begun propaganda operations throughout the city to pacify the local population by blasting their anthem on loudspeakers. Although extremely ineffective, this has caused unnecessary noise pollution and disturbed our sleep. We must stop this stupidity and make sleep great again!
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Due to mandatory curfew within the premises of Georgetown, civilian presence is low. The Russian Forces are rumored to have authorized a “shoot first, ask questions later” rule of engagement.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Georgetown, capital of Tanoa.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Rain and wind. The Weather Channel has projected the rain to worsen within the next hour.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Russian Armed Forces.
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Modern AKs, PKMs and IFVs.
<br/><br/>
<font color='#FFA500'>Strength:</font><br/>
X1 Motorized Infantry Platoon within the city of Georgetown conducting COIN operations.<br/>
X1 Mechanized Infantry Platoon in reserve to the south of Georgetown. Likely to be a QRF element.
<br/><br/>
<font color='#FFA500'>MLCOA:</font><br/>
Russian forces will reinforce with reserve elements outside Georgetown to respond to insurgent threats.
<br/><br/>
<font color='#FFA500'>MDCOA:</font><br/>
Any form of resistance will be countered with sheer Russian brutality. Russian Naval Forces may respond with overwhelming firepower resulting in catastrophic losses for us
<br/><br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
Unknown.
<br/><br/>
<font color='#FFA500'>Airthreat:</font><br/>
Unknown.
<br/><br/>
<font color='#FFA500'>Morale:</font><br/>
High.
<br/><br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
None.
<br/><br/>
<font color='#FFA500'>Future intentions:</font><br/>
To convert Georgetown into a Naval Base for the Russian Pacific Fleet.
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
DESTROY the THREE propaganda GAZ trucks, and EXTRACT via the Escape Train.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
Insurgent Raiders will conduct a quick, simultaneous attack on the trucks and evacuate before the Russians are able to respond effectively. They will take no prisoners.
<br/>
<br/>
<font color='#FFA500'>b. Tasks to Subordinate Units</font><br/>
As per Raid HQ's Discretion.
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
		<br/>		HQ Team, Red, Blue, Gold, Green
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
		<br/>	N/A
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
		<br/>  	Green		RAIDER TEAM 4
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>
		<br/>	Primary: Sleep/Tight
		<br/>
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Victory is achieved when the trucks are destroyed and raiders have escaped.
<br/>
<br/>Minor victory is achieved when the trucks are destroyed but raiders are eliminated.
<br/>
<br/>Failure occurs if the trucks are not destroyed and the raiders are eliminated.
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
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Escaped and trucks destroyed</execute>  
	<br/>
	<br/><execute expression='victoryMessage2 call FNC_EndMissionRequest'>No escape but trucks destroyed</execute>  
	<br/>
	<br/><execute expression='stalemate call FNC_EndMissionRequest'>Escaped but active trucks</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>No escape active trucks</execute>
	ENDTAB;
};

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE