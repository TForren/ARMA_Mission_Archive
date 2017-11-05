#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
CSAT Forces have begun occupying Southern areas of Tanoa. The increase of military activity has made drug trafficking difficult for local crime lords. One such crime syndicate has begun forming insurgency cells to harass and raid occupational CSAT HVTs. This time, the insurgency is targeting a CSAT assets at the Saint-George airstrip.
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Civilian presence expected in Lijnhaven. 
<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Saint-George Airstrip and the southern jungles.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Light rain with medium fog. Multi-story urban town. Dense, hilly jungles with extremely low visibility will allow insurgents to escape.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
CSAT Occupational Forces.
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
QBZ-95 Rifles, QBU-88 DMRs, 40mm GLs, Helmets with Minor/No Body Armor.
<br/><br/>
<font color='#FFA500'>Strength:</font><br/>
15-20 AA security and maintenance personnel in Harcourt.<br/>
Assumed overwhelming amount of reinforcements from nearby CSAT positions.
<br/><br/>
<font color='#FFA500'>Location:</font><br/>
Saint-George Airstrip, Lijnhaven.
<br/><br/>
<font color='#FFA500'>MLCOA:</font><br/>
airfield CSAT are likely stationed in defensive post but otherwise no patrols or expectation of contact.<br/>
Reinforcements from the North and South will likely be on scene to support the airfield 10-15 into engagement.
<br/>
The CSAT are unaware of the tunnel system. If CSAT happen to be near the escape site, you may be able to lure them away.
<br/><br/>
<font color='#FFA500'>MDCOA:</font><br/>
CSAT forces may be attentive to insurgency movement and may call in overwhelming reinforcements immediately; forcing the insurgents to speed up the raid to near-impossible time.
<br/><br/>
<font color='#FFA500'>Defensive Fires:</font><br/>
No support expected.
<br/><br/>
<font color='#FFA500'>Airthreat:</font><br/>
Possible rotary wing air patrol.
<br/><br/>
<font color='#FFA500'>Morale:</font><br/>
HIGH. High training with good marksmanship.
<br/><br/>
<font color='#FFA500'>CBRN Threat:</font><br/>
None.
<br/><br/>
<font color='#FFA500'>Future intentions:</font><br/>
N/A
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
ENDTAB;

NEWTAB("II. Mission:")
RAID the CSAT airfield and DESTROY CSAT air assets. ESCAPE CSAT reinforcements via underground tunnel system or by trawler.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
Insurgent Raiders will move by sea craft close enough to move by foot and set explosives on the air assets. They will then escape CSAT reinforcements via tunnel system or by trawler.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
Should the situation permit, each raider team has the go-ahead to work entirely autonomously find their way to the tunnel entrance.
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
		<br/>
		<br/><font color='#FFA500'>c. Special Signals</font>
		<br/>
		<br/>	Waving like a idiot - Don't shoot me
		<br/>
		<br/><font color='#FFA500'>d. Call signs</font>
		<br/>	Callsign | unit
		<br/>	HQ			RAIDER HQ
		<br/>  	Red			RAIDER TEAM 1
		<br/>  	Blue		RAIDER TEAM 2
		<br/>  	Gold		RAIDER TEAM 3
		<br/>  	Yellow		RAIDER TEAM 4
		<br/>	
		<br/><font color='#FFA500'>e. Passwords</font>
		<br/>
		<br/>	Primary: forest/diamond
		<br/>
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Victory is achieved when the air assets are destroyed and raiders have escaped.
<br/>
<br/>Minor victory is achieved when the air assets are destroyed but raiders are eliminated.
<br/>
<br/>Failure occurs if the air assets are not destroyed and the raiders are eliminated.
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
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Escaped and air destroyed</execute>  
	<br/>
	<br/><execute expression='victoryMessage2 call FNC_EndMissionRequest'>No escape but air destroyed</execute>  
	<br/>
	<br/><execute expression='stalemate call FNC_EndMissionRequest'>Escaped but active air</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>No escape active air</execute>
	ENDTAB;
};


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE