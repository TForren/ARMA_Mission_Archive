#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case east: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
1982 Soviet-Afghan War. <br/>
Sunni Mujahideen have taken up a defensive posture in the village of Katita. Soviet BMP-1 Mechaninzed Infantry Platoon Gecko 91 
has been given the orders to clear out the village of all Mujahideen fighters.<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
Civilians have been driven away.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Village of Katita
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Open Terrain. Farm Fields. Sporadic compounds and buildings. Long running low stone walls.<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Sunni Mujahideen.
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
AK47s, SVDs, RPG-7s.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
~55-75 Fighters.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Katita and the farm fields north of Katita.
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Mujahideen will likely have static emplacements in Katita and will use terrain defilade to get rpgs close enough to engage friendly BMPs.
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Mujahideen fighters may bog down Gecko 91 and force the to become prime mortar targets.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:<br/></font>
2x 2B14 Podnos 82mm mortar<br/>
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

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Secure Katita
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
Gecko 91 PLT is comprised of 3x Rifle sections
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
3x BMP-1<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>SECURE</font> the village of Katita.
ENDTAB;


NEWTAB("III. Tactical Notes:")
Mujahideen are expected to only have HE 81mm mortar shells. It is unlikey that BMPs will be eliminated by mortars. However, infantry out in the open 
will be torn apart by shrapnel. Infantry movement should be conducted via BMP interior and only disembarked while garrisoned in a compound.
<br/><br/>
Only heavy casualties can be expected from open-ground foot movement.
<br/><br/>
BMPs can be used as hard cover but infantry must stay on the opposite side of the cannon to let the gunner fire freely.
<br/><br/>
Spending too much time at one location will give more time for enemy mortars to get accurate hits.
<br/><br/>
Getting too close to enemy infantry may result in destruction of the BMPs via rpg-7.
ENDTAB;


NEWTAB("IV. Sustainment:")
<font color='#FFA500'>i) Logistic Support<br/></font>
Replen Plan: None<br/> // Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
Ammunition: Spare ammunition for infantry can be found in the BMP-1 cargo.<br/>
<br/>
<font color='#FFA500'>i) Medical<br/></font>
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
		<br/>		<marker name='hq'>Gecko 9 Co. HQ</marker>
		<br/>
		<br/>	2. Key Personnel and CP during movement, at ORP, on OBJ:
		<br/>
		<br/>		TBD
		<br/>
		<br/>	3. Succession of Command:
		<br/>
		<br/>		1st Section Leader, 2nd Section Leader, 3rd Section Leader
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Long Range: - AN/PRC103
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel <font color='#70db70'>1</font>, 36.625 
	/*	<br/> 		2 Plt Tac Net   	- Channel 2, 37.775
		<br/> 		3 Plt Tac Net   	- Channel 3, 40.275	[OffMap]
		<br/> 		4 Plt Tac Net 		- Channel 4, 42.675 
		<br/> 		Alpha Co. Net		- Channel 5, 47.35
		<br/> 		Co. Mortars Net 	- Channel 6, 051.85
		<br/> 		TAD Net (Air) 		- Channel 7, 054.5
		<br/>*/
		<br/>
		<br/>
		<br/><font color='#FFA500'>e. Call signs</font>
		<br/>	Callsign | unit
		<br/>  	Gecko 611 	- 1 Section
		<br/>  	Gecko 612 	- 2 Section
		<br/>  	Gecko 613 	- 3 Section


ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Soviet victory is achieved when Katita is clear of enemies and there is a soviet presence in the village. 
<br/>
<br/>Mujahideen Victory is achieved when the Soviets suffer 85% casualties.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE