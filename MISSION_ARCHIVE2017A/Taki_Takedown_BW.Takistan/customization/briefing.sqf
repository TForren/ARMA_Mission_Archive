#include "core\briefingCore.sqf" //DO NOT REMOVE
switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from itme/Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
Takistani Army Colonel Muhammad R. Aziz has begun his campaign against US occupation of Takistan. Staging from the Northern Rasman Airfield, Aziz will be coordinating his troops to push the Taki frontlines down to the US Airfield. 
<br/>
<br/>

<font color='#FFA500'>a. Civilian:</font><br/>
//Is there civilians in the area or have they been driven away
No Civilians in the AO.

<br/><br/>
<font color='#FFA500'>b. Area of Interest:</font><br/>
Northern Takistan between Faruz Abad and the Rasman Airfield.

<br/><br/>
<font color='#FFA500'>c. Area of Operations:</font><br/>
Steep mountains. Sporadic tree cover along the MSRs.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Takistani Army
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Soviet-Era Russian arms and armor. 
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
3x Mechanized/Motorized Platoon<br/>
1x T-55 Platoon
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Rasman Airfield
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Takistani military forces will likely move to capture the three marked objectives with a steady stream of units.
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Takistani military forces might commit all their resources at once and overwhelm US Forces.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:<br/></font>
BM-21 Grad MLRS.
<br/>
<br/>
<font color='#FFA500'>Airthreat:<br/></font>
MI-8TVs, MI-24s, and SU-25s.
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
Drive out US Forces.
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<font color='#FFA500'>a. Disposition:<br/></font>
JaegerTruppe PLT is staged at Feruz Abad with OOM:<br/>
<br/>
1'1 - FLW 100 Eagle IV<br/>
1'1'V - Puma<br/>
1'0 - Eagle IV<br/>
1'2 - FLW 100 Eagle IV<br/>
1'2'V - Puma<br/>
<br/>
STRIKER 1 and 2 are stationed at the southern airfield.
<br/>
<br/>
<font color='#FFA500'>b. Higher Units Mission:<br/></font>
Maintain the current frontline.
<br/><br/>
<font color='#FFA500'>c. Composition:<br/></font>
We are a reduced JaegerTruppe Platoon.
<br/>
<br/>
<font color='#FFA500'>d. Supporting fires:<br/></font>
2x UH Tiger(Universal Role)<br/>
<br/>
<br/>
<font color='#FFA500'>e. Attachments/Detachments:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>f. Assets:<br/></font>
x2 Puma IFV<br/>
x2 FLW 100 Eagle IV<br/>
x1 Eagle IV<br/>
x2 Ammo crates<br/>
x2 Stinger crates<br/>
x1 radio crate<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
SWEEP MSR Jet for any encroaching Takistani Forces. With each OBJ secured, move further north until OBJ Nuke. 
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation</font><br/>
JaegerTruppe PLT with supporting CAS will prevent Takistani Forces from gaining any territory.
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre</font><br/>
As per PLT LDR's Direction.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort</font><br/>
As per PLT LDR's Direction.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units</font><br/>
As per PLT LDR's Direction.
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions</font><br/>
<font color='#70db70'>i) Timings:</font><br/>
Platoon should set off to gain foothold ASAP or as per PLT LDR's directions.
<br/>
<br/>
<font color='#70db70'>ii) Control Measures:</font><br/>// these are usually set by company. Example: Left boundary, house located grid 12346789, right boundary, small gathering of trees grid 123456789.
As per PLT LDR's Discretion.<br/>
<br/>
<font color='#70db70'>iii) Rules of Engagement</font><br/>
//Put RoE rules here
Engage all hostile targets.
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
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
<font color='#FFA500'>iii) Medical</font><br/>
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
		<br/>		Platoon Sergeant, 1st Squad Leader, 2nd Squad Leader
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Short Range: - SEM525L
		<br/>
		<br/> 		1 Plt, 1 Squad 	- Channel 1
		<br/> 		1 Plt, 2 Squad 	- Channel 2
		<br/> 		1 Plt, HQ 		- Channel 4
		<br/>
		<br/>		Long Range: - AN/PRC148
		<br/>
		<br/> 		1 Plt Tac Net 	- Channel 1
		<br/> 		1 Plt Vic Net 	- Channel 2
		<br/>
		<br/>		Long Range: - AN/PRC117f
		<br/>
		<br/> 		TAD Net (Air)  	- Channel 3

		<br/>
		<br/><font color='#FFA500'>c. Codewords</font>
		<br/>
		<br/>	nil
		<br/>
		<br/><font color='#FFA500'>d. Special Signals</font>
		<br/>
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
		<br/>   1'1'V	- 1 Squad Puma
		<br/>  	1'2 	- 2 Squad
		<br/>	1'2'V	- 2 Squad Puma
		<br/> 	1'0 	- 1 Plt Commander
		<br/>
		<br/>
		<br/>	 Callsign | unit
		<br/>	STRIKER 1 - Tiger
		<br/>	STRIKER 2 - Tiger
		<br/>
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>
		<br/>	Primary: Spider/Castle
		<br/>
		<br/>	Alternate: Number combo = 5
		<br/>
		<br/>	Running: Cookie Jar
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Defeat occurs when BLUFOR sustain heavy casualties (>65%)
<br/>
<br/>This is an experimental mission using HAL. If it goes well, awesome, if not, now we know.
<br/>
ENDTAB;	


NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
//This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
Mission currently must be ended by admin for victory with server variable missionWon = true;
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE