#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case Independent: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Ukraine Conflict. Ukraine Army and Novorossiya forces fight to gain a foothold in what little is left of the local town. 
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
No civilians remaining.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Ruined town with rubble, debris, and half destroyed walls littering the area.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Novorossiya Forces
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Pre-Modern Russian weapons and armor. Possible BTR-70s
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
1x Platoon of infantry.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Marked Novoroyssia Start.
<br/>
<br/>
<font color='#FFA500'>Future intentions:<br/></font>
Establish a foothold in the ruined town.
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>b. Composition:<br/></font>
3x infantry squads and 1x platoon HQ. 
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
1x BTR-70
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
US:<br/>//Side
1x BTR-70
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>DESTROY</font> Novorossiya Forces in the area.<br/>
ENDTAB;

 // Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
<br/>a. Command
// change this around to fit your mission. * indicates your unit
		<br/>
		<br/>
		<br/>	1. Higher Unit's Command Post: 
		<br/>
		<br/>		N/A
		<br/>
		<br/>	2. Key Personnel and CP during movement, at ORP, on OBJ:
		<br/>
		<br/>		TBD
		<br/>
		<br/>	3. Succession of Command:
		<br/>
		<br/>		Platoon Commander, 1 Squad Lead, 2 Squad Lead, 3 Squad Lead, 1 2IC, 2 2IC, 3 2IC
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>		1. Radio Frequencies
		<br/>
	/*	<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Plt, 1 Team  	- Channel <font color='#70db70'>1</font>, 2400.6
		<br/> 		1 Plt, 2 Team 	- Channel <font color='#70db70'>2</font>, 2401.6
		<br/> 		1 Plt, 3 Team 	- Channel <font color='#70db70'>3</font>, 2402.6
		<br/>
		<br/>*/
		<br/>		Long Range: - AN/PRC148
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel <font color='#70db70'>1</font>, 36.625 
		<br/>
		<br/>
		<br/><font color='#FFA500'>e. Call signs</font>
		<br/>	Callsign | unit
		<br/>  	611 	- 1 Squad
		<br/>  	611V 	- 1 Squad BTR
		<br/>  	612 	- 2 Squad
		<br/>  	613 	- 3 Squad
		<br/>  	HQ 		- 1 PLT HQ
		<br/>	
ENDTAB;


}; //End of west case

case east: {

NEWTAB("I. Situation:")
<br/>
Ukraine Conflict. Ukraine Army and Novorossiya forces fight to gain a foothold in what little is left of the local town. 
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
No civilians remaining.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Ruined town with rubble, debris, and half destroyed walls littering the area.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Ukraine Army
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Pre-Modern Russian weapons and armor. Possible BTR-70s
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
1x Platoon of infantry.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Marked Ukraine Army Start.
<br/>
<br/>
<font color='#FFA500'>Future intentions:<br/></font>
Establish a foothold in the ruined town.
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>b. Composition:<br/></font>
3x infantry squads and 1x platoon HQ. 
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
1x BTR-70
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
US:<br/>//Side
1x BTR-70
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>DESTROY</font> Ukraine Government Forces in the area.<br/>
ENDTAB;

 // Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
<br/>a. Command
// change this around to fit your mission. * indicates your unit
		<br/>
		<br/>
		<br/>	1. Higher Unit's Command Post: 
		<br/>
		<br/>		N/A
		<br/>
		<br/>	2. Key Personnel and CP during movement, at ORP, on OBJ:
		<br/>
		<br/>		TBD
		<br/>
		<br/>	3. Succession of Command:
		<br/>
		<br/>		Platoon Commander, 1 Squad Lead, 2 Squad Lead, 3 Squad Lead, 1 2IC, 2 2IC, 3 2IC
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>		1. Radio Frequencies
		<br/>
	/*	<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Plt, 1 Team  	- Channel <font color='#70db70'>1</font>, 2400.6
		<br/> 		1 Plt, 2 Team 	- Channel <font color='#70db70'>2</font>, 2401.6
		<br/> 		1 Plt, 3 Team 	- Channel <font color='#70db70'>3</font>, 2402.6
		<br/>
		<br/>*/
		<br/>		Long Range: - AN/PRC148
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel <font color='#70db70'>1</font>, 36.625 
		<br/>
		<br/>
		<br/><font color='#FFA500'>e. Call signs</font>
		<br/>	Callsign | unit
		<br/>  	911 	- 1 Squad
		<br/>  	911V 	- 1 Squad BTR
		<br/>  	912 	- 2 Squad
		<br/>  	913 	- 3 Squad
		<br/>  	HQ 		- 1 PLT HQ
		<br/>	
ENDTAB;


}; //End of east case
}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 50 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Victory is achieved when the other team suffers 80% casualties
<br/>
<br/>Mortars are falling all around and can land in town. Anyone leaving the town will be easier to spot by mortar FOs and IFF is disregarded.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE