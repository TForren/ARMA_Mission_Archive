#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
A Triad airborne drug smuggling operation has gone awry. A palette of 200 pounds of cocaine disguised as IDAP humanitarian aid bags, nicknamed 'bronze bars' has been lost somewhere in the Red Spring surface mines earlier this morning. Rival cartel, The Los Cantanus, have also learned of this and have sent members to claim it from the Triad. Having heard from a double agent in the Los Cantanus, the Tanoa police have also learned of this and are preparing to send a team of police to secure the bronze bars. 
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Civilian workers likely in the mine.

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Red Spring Surface Mine

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Dark early morning. Sun will rise in 20 minutes. 
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Triad and Police
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Triad will likely have comparable weapons to us. The police will heavily out gear us.
<br/>
<br/>
Police are ~10 minutes away. Available time to secure the bronze bars and get out before police arrive is limited but possible. 
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>Assets:</font><br/>
1x Jeep wrangler to load the bronze bars and leave. 
<br/>
ENDTAB;

NEWTAB("II. Mission:")
SECURE the bronze bars (cocaine) via vehicle loading. If extraction is not possible, hold out against both the Triad and the police.
ENDTAB;

}; //End of west case

case east: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
A Triad airborne drug smuggling operation has gone awry. A palette of 200 pounds of cocaine disguised as IDAP humanitarian aid bags, nicknamed 'bronze bars' has been lost somewhere in the Red Spring surface mines earlier this morning. Rival mafia, The Los Cantanus, have also learned of this and have sent members to claim it from the Triad. Having heard from a double agent in the Los Cantanus, the Tanoa police have also learned of this and are preparing to send a team of police to secure the bronze bars. 
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Civilian workers likely in the mine.

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Red Spring Surface Mine

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Dark early morning. Sun will rise in 20 minutes. 
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Los Cantanusand Police
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Los Cantanus will likely have comparable weapons to us. The police will heavily out gear us.
<br/>
<br/>
Police are ~10 minutes away. Available time to secure the bronze bars and get out before police arrive is limited but possible. 
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>Assets:</font><br/>
1x offroad truck to load the bronze bars and leave. 
<br/>
ENDTAB;

NEWTAB("II. Mission:")
SECURE the bronze bars (cocaine) via vehicle loading. If extraction is not possible, hold out against both the Los Cantanus and the police.
ENDTAB;

}; //End of west case
case independent: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
A Triad airborne drug smuggling operation has gone awry. A palette of 200 pounds of cocaine disguised as IDAP humanitarian aid bags, nicknamed 'bronze bars' has been lost somewhere in the Red Spring surface mines earlier this morning. Rival mafia, The Los Cantanus, have also learned of this and have sent members to claim it from the Triad. Having heard from a double agent in the Los Cantanus, the Tanoa police have also learned of this and are preparing to send a team of police to secure the bronze bars. 
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
Civilian workers likely in the mine.

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Red Spring Surface Mine

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Dark early morning. Sun will rise in 20 minutes. 
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Los Cantanusand Triad
<br/><br/>
<font color='#FFA500'>Equipment:</font><br/>
Dated equipment with no armor. No NVGs.
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>Assets:</font><br/>
1x Mi-8 with mounted PKs. 
<br/>
ENDTAB;

NEWTAB("II. Mission:")
SECURE the bronze bars (cocaine) and ELIMINATE cartel members.
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes. // change the XX to what you set the time limit to
<br/>
<br/>The bronze bars palette is set to trigger a colored smoke after 10 minutes. 
<br/>
<br/>Victory is achieved by extracting the bronze bars away from all other involved parties. // put win condition here
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
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Call Los Cantanus Victory</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call Triad Victory</execute>
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call Police Victory</execute>
	ENDTAB;
};


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE