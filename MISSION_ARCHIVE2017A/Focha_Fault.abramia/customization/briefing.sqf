#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Russian VDV Forces have established a foothold on the South Western island. Specifically, the town of Focha. In preparation for a USMC assault on the island, MARSOC operatives will weaken the enemy through infiltration and sabotage.
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
All civilians have been evacuated from the island by the VDV.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Focha and its South Western island.

<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
2x2km island with a large mountain peak. Steep hills and roads winding around mountains with patches of vegetation.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Russian Federation VDV
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Modern Russian Federation arms and armor. 
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
UNKNOWN
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Focha and the island coasts.
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
VDV patrols will likely defend key defenses on the island.
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
VDV patrols may counter attack MARSOC operatives if they realize it is not a full scale assault.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>Airthreat:<br/></font>
MI-8TVs confirmed operating in the AO.
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
Unknown
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Drive the VDV off the Focha Island.
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
MARSOC platoon is comprised of up to 4x infiltration teams and 1x operations coordinator element.
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
1x UAV operator
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
US:<br/>//Side
2x Darter Quad Drone<br/>
5x Zodiac<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>DESTROY</font> the three ZSU-23s and the armored assets in the warehouse.<br/>
premature egress possible.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation<br/></font>
MARSOC teams will move via zodiac to sabotage VDV key positions on the island.
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre<br/></font>
Zodiac boats
<br/>
<br/>
<font color='#FFA500'>c. Main Effort<br/></font>
Prime the island for USMC assault.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units<br/></font>
UAV operator is to relay enemy position information to operatives operating on the island. 
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
		<br/>		Operations Coordinator, Team Lead 1, Team Lead 2, Team Lead 3, Team Lead 4, UAV Operator.
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Plt, 1 Team  	- Channel <font color='#70db70'>1</font>, 2400.6
		<br/> 		1 Plt, 2 Team 	- Channel <font color='#70db70'>2</font>, 2401.6
		<br/> 		1 Plt, 3 Team 	- Channel <font color='#70db70'>3</font>, 2402.6
		<br/> 		1 Plt, 4 Team 	- Channel <font color='#70db70'>4</font>, 2403.6
		<br/> 		1 Plt, 5 Team 	- Channel <font color='#70db70'>5</font>, 2404.6
		<br/> 		1 Plt, HQ 		- Channel <font color='#70db70'>6</font>, 2405.6
		<br/>
		<br/>
		<br/>		Long Range: - AN/PRC148
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
		<br/>  	1'1 	- 1 Team
		<br/>  	1'2 	- 2 Team
		<br/>  	1'3 	- 3 Team
		<br/>  	1'4 	- 4 Team
		<br/>  	1'5 	- 5 Team
		<br/>  	1'6 	- 1 PLT HQ
		<br/>  	1'6U 	- UAV Operator
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
DEFEND the weapons cache. it can be moved.
ENDTAB;

}; //End of east case
}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 90 minutes. // change the XX to what you set the time limit to
<br/>
<br/>MARSOC Victory is achieved when a respectable amount of damage was done to the key VDV assets.
<br/>
<br/>VDV Victory is achieved when MARSOC sustain heavy casualties.
<br/>
<br/>Mission is ended with scroll wheel option on the SOC.
<br/>
<br/>Gear can be one-way exchanged for scuba gear at the UNIFORMS crate.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE