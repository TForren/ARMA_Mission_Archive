		#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
African Boko Harem strength has increased with their latest recruitment drives and propaganda. With Numbo under Boko Harem control, nearby Islamic Extremists have taken up arms against local UN forces. With the UN overwhelmed by Boko Harem heavy armor, US Army 1-18 IN D Company will deploy M1A2s with supporting RECCEE element GHOST to push the Boko Harem back into Numbo.
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
Non-combatant civilian population has been driven off by Boko Harem and supporters.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Gharunta and the surrounding area. Taliban forces have been reported to patrol the nearby areas to act as scouts for technical strike teams. 

<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
The Northern approach to Numbo is moderately vegetated with densly packed towns. Moderately sloped hills with occasional sharp peaks offering solid defilade.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Boko Harem
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Soviet-era small arms. AK47s, SVDs, RPG-7s, Technicals.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
T-55 armor company with supporting platoon-sized foot/mechanized groups.<br/>
Islamic Extremist militias expected among the buildings of nearby vilages.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Fields and wooded areas North of Numbo.
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Boko Harem forces will likely dig in to repel the US Assault.
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Boko Harem forces may deploy crack tank hunters to land kill shots on the flanks of M1A2s.
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
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Drive Boko Haram Forces back to the city of Numbo.
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
D Company is comprised of 2x M1A2 Platoons.
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
2x RECCE Elements Callsign GHOST
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
US:<br/>//Side
8x M1A2<br/>
2x M1117<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>SEEK</font> out and <font color='#FFA500'>DESTROY</font> all Boko Harem forces that have pushed North of their Numbo hovel.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation<br/></font>
D Comapny will force Boko Haram forces back into Numbo.
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre<br/></font>
Around the MSR headed South towards Numbo.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort<br/></font>
Push back the Boko Harem.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units<br/></font>
GHOST Elements are to head out before the main force to seek and destroy any anti-tank equipment. 
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions<br/></font>
<br/>
<font color='#70db70'>i) Timings:<br/></font>
As per PLT LDR's Discretion.
<br/>
<br/>
<font color='#70db70'>ii) Control Measures:<br/></font>
As per PLT LDR's Discretion.
<br/>
<br/>
<font color='#70db70'>iii) Rules of Engagement<br/></font>
//Put RoE rules here
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
<font color='#FFA500'>i) SOP Variations<br/></font>
Dress: None<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
<font color='#FFA500'>ii) Logistic Support<br/></font>
Replen Plan: None<br/> // Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
<font color='#FFA500'>iii) Medical<br/></font>
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
		<br/>		1 PC, 1 PSG, 2 PC, 2 PSG, GHOST A, GHOST B
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Plt, A SCT 	- Channel <font color='#70db70'>1</font>, BLK 1
		<br/> 		1 Plt, B SCT 	- Channel <font color='#70db70'>2</font>, BLK 1
		<br/> 		2 Plt, A SCT 	- Channel <font color='#70db70'>1</font>, BLK 2
		<br/> 		2 Plt, B SCT 	- Channel <font color='#70db70'>2</font>, BLK 2
		<br/>
		<br/> 		GHOST, A SCT	- Channel <font color='#70db70'>1</font>, BLK 3
		<br/> 		GHOST, B SCT	- Channel <font color='#70db70'>2</font>, BLK 3
		<br/>
		<br/>
		<br/>		Long Range: - AN/PRC148
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel <font color='#70db70'>1</font> 
		<br/> 		2 Plt Tac Net   	- Channel <font color='#70db70'>2</font>
		<br/> 		GHOST Tac Net   	- Channel <font color='#70db70'>3</font>
		<br/>
		<br/>
		<br/>		Long Range: - AN/PRC117F
		<br/>
		<br/> 		D Company Net   	- Channel <font color='#70db70'>3</font> 
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
		<br/>  	1'1 	- 1 M1A2 (PC)
		<br/>  	1'2 	- 2 M1A2
		<br/>  	1'3 	- 3 M1A2
		<br/>  	1'4 	- 4 M1A2 (PSG)	
		<br/>
		<br/>  	2'1 	- 1 M1A2 (PC)
		<br/>  	2'2 	- 2 M1A2
		<br/>  	2'3 	- 3 M1A2
		<br/>  	2'4 	- 4 M1A2 (PSG)
		<br/>	
		<br/>  	GHOST A - 1 RECCEE
		<br/>  	GHOST B - 2 RECCEE
		<br/>	
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
	
NEWTAB("Mission:")
Repel the American armor platoons.
ENDTAB;
	
NEWTAB("Tactical Notes:")
The abrams can be destroyed by hitting the side armor with the spg-9. With many of the Boko Harem forces being no more intelligent than a deflated sack, it is recommended that they are used to tar pit the BLUFOR and then deal damage using the motorcycle SPG-9 teams.
ENDTAB;
	
NEWTAB("Technical Notes:")
Commander uses High Command to control AI units. (default ctrl+space or right app key).
ENDTAB;

}; //End of east case
}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes. // change the XX to what you set the time limit to
<br/>
<br/>US Victory is achieved when the majority of Boko Harem forces are eliminated.
<br/>
<br/>Boko Harem victory is achieved when the US attack is repelled or time limit is reached.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission requires an Opfor commander at minimum.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE