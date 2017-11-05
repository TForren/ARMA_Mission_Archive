#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
A UN truck loaded with general munitions has been ambushed and captured by local FATA Militia. With UN supplies already low, it is critical that the UN regain ownership of the supplies. US SOF teams will be deployed to recapture the truck.
<br/>
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
Civilian population is dense and intel on the truck's whereabouts is sparse. US Forces will need to inquire with the local populace for intel. Some civilians will know where he is, some might have an idea, and others might just get angry at you for asking. Aliabad civilians have a heavily mixed opinion of US Forces.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
The Federally Administered Tribal Areas are heavily populated with citizens with militia littered about.

<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Rolling hills with scattered rocks and vegetation. Densly packed urban environments.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
FATA Militia
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Soviet-era small arms with a mix of Czechoslovakian and Belgium rifles, old Russian RPG-7, and soft armor technicals.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
~12 Militia. 
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
UNKNOWN.
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
The Militia will likely try to hide the UN truck somewhere until the heat is off them.
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
The Militia may acquire heavier equipment from their weapons caches in the area and potentially out-gun the US Forces.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>Airthreat:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>Morale:<br/></font>
MEDIUM
<br/>
<br/>
<font color='#FFA500'>CBRN Threat:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>Future intentions:<br/></font>
Unknown
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
US SOF Teams 
<br/>
<font color='#FFA500'>a. Disposition<br/></font>
US SOF Platoon [<marker name='US'>LC068069</marker>].
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
SOF Platoon is comprised of 4x TF Teams and 1x HQ element.
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
-4x MH-6M transport littlebirds.
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
US:<br/>//Side
-4x MH-6M<br/>
-2x M2 HMMWV<br/>
-1x Mk19 HMMWV<br/>
-1x SOV HMMWV<br/>
-1x MRAP<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#70db70'>LOCATE</font> and <font color='#70db70'>SECURE</font> UN Ammo Truck.
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
		<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Plt, 1 SOF  	- Channel <font color='#70db70'>1</font>, 2400.6
		<br/> 		1 Plt, 2 SOF 	- Channel <font color='#70db70'>2</font>, 2401.6
		<br/> 		1 Plt, 3 SOF 	- Channel <font color='#70db70'>3</font>, 2401.6
		<br/> 		1 Plt, 4 SOF 	- Channel <font color='#70db70'>4</font>, 2401.6
		<br/> 		1 Plt, HQ 		- Channel <font color='#70db70'>6</font>, 2403.6
		<br/>
		<br/>
		<br/>		Long Range: - AN/PRC148
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel <font color='#70db70'>1</font>, 36.625 
		<br/>
		<br/>		Long Range: - AN/PRC117F
		<br/>
		<br/> 		1 Air Net   	- Channel  <font color='#70db70'>2</font>, 37.775
		<br/>
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
		<br/>  	1'1 	- 1 SOF
		<br/>  	1'2 	- 2 SOF
		<br/>  	1'3 	- 3 SOF
		<br/>  	1'4 	- 4 SOF
		<br/> 	1'6 	- 1 Plt Commander
		<br/>  	1'7 	- 1 Plt PSG
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>	Challenge: Iron/Waffle
		<br/>
		<br/>	Alternate: Number combo = 6
		<br/>
		<br/>	Running: Fist
ENDTAB;


}; //End of west case


case east: {
NEWTAB("I. Situation:")
We have successfully ambushed and captured a UN Ammo Truck. It is filled with wonder.
<br/><br/>
We must keep the Americans away from the truck for as long as we can and at all costs.
<br/>We have a series of hidden weapons caches throughout the FATA region with better weapons and possibly technicals should we pass one.
ENDTAB;


NEWTAB("A. Enemy Forces:")
American Soldiers.
<br/>
<br/>
Equipment:<br/>
Modern American military small arms, armor, and equipment. Helicopters expected.
<br/>
<br/>
Strength:<br/>
~25 soldiers.
<br/>
<br/>
Location:<br/>
US Base.
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<br/>
a. Assets:<br/>
-5x weapons caches across the area.
<br/>
ENDTAB;

NEWTAB("II. Objective:")
Keep the Americans away from the truck for as long as possible.
ENDTAB;

};

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Opfor Victory is achieved the only units around the truck are Blufor. 
<br/>
<br/>Opfor victory is achieved when Blufor reaches 65% casualties, time limit, or too many civilian casualties.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE