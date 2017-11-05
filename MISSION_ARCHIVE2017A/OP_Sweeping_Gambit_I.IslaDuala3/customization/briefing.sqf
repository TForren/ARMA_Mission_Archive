#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
The illegal sale of khat and weapons being smuggled through Isla Duala has funded local insurgent groups for the past 2 years. Prominent group of weapons smugglers have become so well funded that they present the threat of a well-off militia.
<br/><br/>
3 British Commando Brigade ARSENIC Company will spearhead an island-wide sweep to eliminate large groups of weapons and drug smugglers in a 3-part operation. 
<br/><br/>
The first of which will see ARSENIC 1 sweep the small island and the town of Vestinga for a known smuggler presence, ARSENIC 2 will sweep the Gerenuk Desert for hidden encampments, caches, and assets, and ARSENIC 3 will sweep a known khat smuggler operation in Obmeya.
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
Civilians have been driven away by the extremely dense activity in Vestinga. Civilians are only present outside of ARSENIC 1's AO (Simbala, Katakabi, Aeroporto Airport)
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Vestinga and the majority of the small island.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Dense vegetation with large hillside boulders. Tree cover densely packed blocking most line of sight from hilltops.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Khat/Weapons Smugglers, Hired Guns, Mercenaries, Pirates.
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Soviet-era small arms. AK47s, SVDs, RPG-7s, Technicals. Possible heavy armor.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
~70 personnel.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Vestinga
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Without any previous engagements, enemy forces is unlikely to expect BAF and thus will only have light patrols looking more for rogue looters. The majority of contact will likely be inside or among the Vestinga encampment.
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Enemy forces may underestimate the BAF strength and perform dangerous commits of resources thus overwhelming ARSENIC 1.
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
Naively High
<br/>
<br/>
<font color='#FFA500'>CBRN Threat:<br/></font>
None
<br/>
<br/>
<font color='#FFA500'>Future intentions:<br/></font>
Continue growing their smuggler empire.
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Secure the weapons shipment in Canto.
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
ARSENIC 1st PLT is comprised of 2x Rifle sections  and 1x HQ
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:<br/></font>
60mm mortars
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
4x Jackal HMG<br/>
1x Landrover (HQ)<br/>
1x Coyote HMG (PSG)<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>SWEEP</font> the Vestinga island and <font color='#FFA500'>ELIMINATE</font> all armed contact repelling any reinforcements that may come from the other side of the island.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation<br/></font>
ARSENIC 1 sweep the small island and the town of Vestinga for a known smuggler presence<br/>
ARSENIC 2 will sweep the Gerenuk Desert for hidden encampments caches, and assets<br/>
ARSENIC 3 will sweep a known khat smuggler operation in Obmeya.<br/>
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre<br/></font>
Motorized.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort<br/></font>
Eliminate all armed contact on the island.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units<br/></font>
N/A
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
		<br/>		<marker name='hq'>ARSENIC Co. HQ</marker>
		<br/>
		<br/>	2. Key Personnel and CP during movement, at ORP, on OBJ:
		<br/>
		<br/>		TBD
		<br/>
		<br/>	3. Succession of Command:
		<br/>
		<br/>		Platoon Sergeant, 1st Section Leader, 2nd Section Leader, 3rd Section Leader
		<br/>
		<br/><font color='#FFA500'>b. Signals</font>
		<br/>		1. Radio Frequencies
		<br/>
		<br/>		Short Range: - AN/PRC343
		<br/>
		<br/> 		1 Plt, 1 Section 	- Channel <font color='#70db70'>1</font>, 2400.6
		<br/> 		1 Plt, 2 Section 	- Channel <font color='#70db70'>2</font>, 2401.6
		<br/> 		1 Plt, 3 Section 	- Channel <font color='#70db70'>3</font>, 2402.6
		<br/> 		1 Plt, HQ 			- Channel <font color='#70db70'>4</font>, 2403.6
		<br/> 		1 Plt, PSG 			- Channel <font color='#70db70'>5</font>, 2404.6
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
		<br/>  	1'1 	- 1 Section
		<br/>  	1'2 	- 2 Section
		<br/>  	1'3 	- 3 Section
		<br/> 	1'0'A 	- 1 Plt Commander
		<br/>  	1'0'B 	- 1 Plt PSG
		<br/>  	1'0'Z 	- 1 Plt Signaller
	/*	<br/>
		<br/>  	2'1 	- 1 Squad*
		<br/>  	2'2 	- 2 Squad*
		<br/>  	2'3 	- 3 Squad*
		<br/> 	2'6 	- 1 Plt Commander*
		<br/>  	2'7 	- 1 Plt PSG*
		<br/>
		<br/>  	3'1 	- 1 Squad
		<br/>  	3'2 	- 2 Squad
		<br/>  	3'3 	- 3 Squad
		<br/> 	3'6 	- 1 Plt Commander
		<br/>  	3'7 	- 1 Plt PSG
		<br/>
		<br/>  	4'1 		- Assault Section
		<br/>  		4'1A 	- Assault Section, Alpha Squad
		<br/>  		4'1B 	- Assault Section, Bravo Squad
		<br/>  		4'1C 	- Assault Section, Charlie Squad
		<br/>  	4'2 		- Machine Gun Section
		<br/>  		4'2A 	- Machine Gun Section, Alpha Squad
		<br/>  		4'2B 	- Machine Gun Section, Bravo Squad
		<br/>  		4'2C 	- Machine Gun Section, Charlie Squad
		<br/>  	4'3 		- LWCMS Mortar Section
		<br/>
		<br/>
		<br/>	Callsign | unit
		<br/>	Assassin 1 - 1st Plt
		<br/>	Assassin 2 - 2nd Plt*
		<br/>	Assassin 3 - 3rd Plt
		<br/>	Assassin 4 - 4th Plt
		<br/>	Assassin 5 - Company XO
		<br/> 	Assassin 6 - Company CO
		<br/> 	Assassin 7 - Company SGT Major
		<br/> */
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>	Challenge: Iron/Waffle
		<br/>
		<br/>	Alternate: Number combo = 6
		<br/>
		<br/>	Running: Fist
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>BAF victory is achieved when the contact on the island is broken and neutralized. 
<br/>
<br/>Smuggler Victory is achieved when BAF Forces suffer 65% casualties.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE