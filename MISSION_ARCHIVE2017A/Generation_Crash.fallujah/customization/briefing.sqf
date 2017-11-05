#include "core\briefingCore.sqf" //DO NOT REMOVE


switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

if (player in [p1,p2]) then {
	
	NEWTAB("I. Situation:")
	<br/>
	US Army UH-60 has been shot down over Fallujah. The pilots have survived and are surrounded by anti-US civilians and armed militia. Mayday was put out on long range before the crash but all radio equipment was destroyed.
	<br/><br/>
	<font color='#FFA500'>a. Civilian:<br/></font>
	Civilian population has a low opinion of US Forces and will likely form mobs to attack the pilots and US vehicles. Civilian casualties 
	may result in more civilians taking up arms against US Forces.
	<br/><br/>
	<font color='#FFA500'>b. Area of Interest:<br/></font>
	Fallujah
	<br/><br/>
	<font color='#FFA500'>c. Area of Operations:<br/></font>
	Dense urban. Long LDAs.
	<br/><br/>
	ENDTAB;
	
	NEWTAB("II. Mission:")
	<font color='#FFA500'>SURVIVE</font> and await <font color='#FFA500'>RESCUE</font>.
	ENDTAB;

} else {
	
NEWTAB("I. Situation:")
<br/>
US Army UH-60 has been shot down over Fallujah. The pilots have survived and are surrounded by anti-US civilians and armed militia. Mayday was put out on long range before the crash but all radio equipment was destroyed.
<br/><br/>
<font color='#FFA500'>a. Civilian:<br/></font>
Civilian population has a low opinion of US Forces and will likely form mobs to attack the pilots and US vehicles. Civilian casualties 
may result in more civilians taking up arms against US Forces.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Fallujah
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Dense urban. Long LDAs.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Al-Qaeda
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Soviet-era small arms. AK47s, SVDs, RPG-7s, Technicals, possible suicide bombers.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
UNKNOWN
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
UNKNOWN
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Al-Qaeda fighters will likely move to kill or capture the pilots.
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Al-Qaeda fighters may ambush the the rescue convoy and deal heavy casualties.
<br/>
<br/>
<font color='#FFA500'>Defensive Fires:<br/></font>
UKNOWN
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

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Extract the downed pilots.
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
1st PLT is comprised of 2x Rifle sections and 1x HQ
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
4x HMMWV(M2)<br/>
1x MRAP(M2)<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>LOCATE</font>, <font color='#FFA500'>RESCUE</font>, and <font color='#FFA500'>EXTRACT</font> the downed pilots.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation<br/></font>
1st PLT will moveby convoy to the crash site and extract the downed pilots.
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre<br/></font>
HMMWV convoy by road.
<br/>
<br/>
<font color='#FFA500'>c. Main Effort<br/></font>
Rescue the downed pilots.
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
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.<br/>
engaging unarmed contacts will likely result in further resistence to US Forces.
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
		<br/>		<marker name='hq'>US Co. HQ</marker>
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
		<br/> 		1 Plt, 1 Squad 	- Channel <font color='#70db70'>1</font>, 2400.6
		<br/> 		1 Plt, 2 Squad 	- Channel <font color='#70db70'>2</font>, 2401.6
		<br/> 		1 Plt, HQ 		- Channel <font color='#70db70'>4</font>, 2403.6
		<br/> 		1 Plt, PSG 		- Channel <font color='#70db70'>5</font>, 2404.6
		<br/>
		<br/>
		<br/>		Long Range: - AN/PRC148/PRC152
		<br/>
		<br/> 		1 Plt Tac Net   	- Channel <font color='#70db70'>1</font>, 36.625
 		<br/>
 		<br/>
		<br/>		Long Range: - AN/PRC117F
		<br/>
		<br/> 		1 Plt Vic Net	  	- Channel <font color='#70db70'>2</font>, 37.775 
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
		<br/>  	1'1 	- 1 Squad
		<br/>  	1'2 	- 2 Squad
		<br/> 	1'6 	- 1 Plt Commander
		<br/>	
		<br/><font color='#FFA500'>f. Passwords</font>
		<br/>	Challenge: Iron/Waffle
		<br/>
		<br/>	Alternate: Number combo = 6
		<br/>
		<br/>	Running: Fist
ENDTAB;



NEWTAB("Tactical Notes:")
Drivers of hmmwvs will grab the PRC152 from the vehicle inventory and mount it to VRC110 rack. This will allow vehicles to hear platoon comms.
<br/><br/>
the pre-mounted 117F in vehicle rack VRC103 is to be switched to channel 2 for vehicle-only comms.
ENDTAB;

};

}; //End of west case

case east: {
	

NEWTAB("I. Situation:")
<br/>
US Army UH-60 has been shot down over Fallujah. The pilots have survived and are surrounded by anti-US civilians and armed militia.
<br/><br/>
<font color='#FFA500'>a. Civilian:<br/></font>
Civilian population has a low opinion of US Forces and will likely form mobs to attack the pilots and US vehicles. Civilian casualties 
may result in more civilians taking up arms against US Forces.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Fallujah
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Dense urban. Long LDAs.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
US Army
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
M4s, armed HMMWVs, AT4s, M249s.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
1 Motorized Platoon.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
South East Gas Station. LOC083930


ENDTAB;

NEWTAB("B. Friendly Forces:")
Infantry:<br/>
3x Militia Groups w/ RPGs<br/>
2x Militia Groups <br/>
1x Support Team<br/>
1x AT Team (RPG-7s) <br/>
3x Angry Mobs <br/>
<br/>
Vehicles:<br/>
1x BTR-60 <br/>
2x Technical (M2) <br/>
1x Technical (DSHKM) <br/>
1x Technical (SPG-9) <br/>
ENDTAB;	

NEWTAB("II. Mission:")
Inflict heavy US casualties.<br/>
If the pilots are killed without first inflicting casualties on the rescue platoon, the mission is considered a failure for OPFOR as the oppertunity has been squandered. The pilots should be left alive at least until the resue platoon is deep in Fallujah.
ENDTAB;


NEWTAB("--Angry Mobs:")
Angry Mobs are independent (green) units.<br/>
They are not armed, but will throw cans, rocks, and empty bottles at BLUFOR. So long as the majority of the mob is still alive, they will be passively yelling various things at BLUFOR.
<br/><br/>
Should members of the mob be killed by BLUFOR, the zeus commander will recieve Al-Qaeda Reinforcements as distraught civilians take up arms. The reinforcements may be a technical, group of fighters, or a suicide bomber.
<br/><br/>
It is in the best interest of the zeus commander to get angry mob members killed by BLUFOR as it worsens the civilian opinion of BLUFOR. Thus, putting fighters among the mobs and getting the mobs in the way of the BLUFOR are valid stategies.
ENDTAB;

NEWTAB("--Suicide Bombers:")
Suicide Bombers are randomly granted to the zeus commander as civilians casualties occur. <br/>
They are denoted as civilians(purple) but will yell and explode when near BLUFOR.
<br/><br/>
To use a suicide bomber, simply move them as close to BLUFOR as possible. the rest will happen on its own.

ENDTAB;

}; //End of east case
}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Mission will end if both pilots are killed and all BLUFOR have left Fallujah (or were all killed).
<br/>
<br/>If the pilots are killed without heavy BLUFOR casualties, the mission is considered a failure for both sides.
<br/>
<br/>OPFOR Victory is achieved by inflicting heavy casualties on BLUFOR.
<br/>
<br/>BLUFOR Victory is achieved by extracting the pilots.
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission requires a zeus commander to control the OPFOR. If there is no Zeus Commander, then this mission will be very boring.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE