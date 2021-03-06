#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Russian MSV Forces have begun setting up hasty mortar positions dangerously close to US airfields. One of which is located in Dorres [LC050047]. USMC will conduct a raid on the position to destroy the mortar position and get out before QRFs arrive.
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
No civilians remaining in the AO.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Dorres, and the hills/woods surrounding. MSV will likely have patrols and sentries scattered around the nearby woods.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Steep hills with deep defilade. dense wooded areas with full pine trees.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Russian Federation MSV
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
Modern Russian Federation small arms. AKs, RPG-7s, PKP, light/medium armor.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
~40 personnel in Dorres.<br/>
-1x Mechanized platoon with armor attachments QRF
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Dorres with a QRF 4km East.
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Russian MSV will likely call in lightly-equip quick responders to fight back against US Forces. It is unlikely that the QRF will be called until the intentions of the US are known and are sure that the US raid is not simply a diversion. 
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Russian MSV may call in an overwelming QRF and overtake the situation.
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
HIGH
<br/>
<br/>
<font color='#FFA500'>CBRN Threat:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>Future intentions:<br/></font>
Unknown.
<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Eliminate MSV artillery positions.
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
1st PLT is comprised of 2x Rifle squads, 1x Weapons squad, and 1x HQ with JTAC
<br/>
<br/>
<font color='#FFA500'>c. Supporting fires:<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>d. Attachments/Detachments:<br/></font>
-3x UH-1Y Venom
<br/>
<br/>
<font color='#FFA500'>e. Assets:<br/></font>
US:<br/>//Side
-Night Operations/Explosives inside.
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<font color='#FFA500'>RAID</font> and <font color='#FFA500'>DESTROY</font> the MSV mortar position and <font color='#FFA500'>EXTRACT</font> to avoid overwelming QRFs.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation<br/></font>
Destroy the MSV mortars.
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre<br/></font>
By Air
<br/>
<br/>
<font color='#FFA500'>c. Main Effort<br/></font>
Prevent the establishment of a full artillery position.
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
<br/>		<marker name='hq'>Alpha Co. HQ</marker>
<br/>
<br/>	2. Key Personnel and CP during movement, at ORP, on OBJ:
<br/>
<br/>		Operations SGT should coordinate explosives distribution at ORP. All element leads operate independantly at OBJ.
<br/>
<br/>	3. Succession of Command:
<br/>
<br/>		HQ Team Lead, HQ Team Chief, Operations SGT, Asst. Operations SGT, Element 1 Team Lead, Element 2 Team Lead, Element 3 Team Lead, Element 4 Team Lead
<br/>
<br/><font color='#FFA500'>b. Signals</font>
<br/>
<br/>		1. Radio Frequencies
<br/>
<br/>		Short Range: - AN/PRC343
<br/>
<br/> 		1 Plt, 1 Element 	- Channel 1, 2400.6
<br/> 		1 Plt, 2 Element 	- Channel 2, 2401.6
<br/> 		1 Plt, 3 Element 	- Channel 3, 2402.6
<br/> 		1 Plt, HQ Element 	- Channel 6, 2405.6
<br/>
<br/>
<br/>		Long Range: - AN/PRC152 + AN/PRC117f
<br/>
<br/> 		1 Plt Tac Net   	- Channel 1, 36.625 
<br/>
<br/><font color='#FFA500'>c. Codewords</font>
<br/>
<br/>	nil
<br/>
<br/><font color='#FFA500'>d. Special Signals</font>
<br/>
<br/>	Waving like a idiot - Don't shoot me
<br/>
<br/><font color='#FFA500'>e. Call signs</font>
<br/>	Callsign | unit
<br/>  	1'1 	- RAIDER 1
<br/>  	1'2 	- RAIDER 2
<br/>  	1'3 	- RAIDER 3
<br/> 	1'6 	- RAIDER 6
<br/>	
<br/>	BARON-1	- UH-1Y 1
<br/>	BARON-2	- UH-1Y 2
<br/>	BARON-3	- UH-1Y 3
<br/>	
<br/><font color='#FFA500'>f. Passwords</font>
<br/>
<br/>	Primary: Camper/Rake
<br/>
<br/>	Alternate: Number combo = 5
<br/>
<br/>	Running: Scooby Snacks
ENDTAB;

}; //End of west case


NEWTAB("Tactical Notes:")
<br/>It is incredibly hard to see the ground with NVs. Consider fast roping (helo ace interact) for insertion and trusting the raiders to designate a clear LZ with smoke and a chemlight when extracting.
<br/>
<br/>
<br/>If the QRF is in the area and extraction is not complete, consider foot slogging it further away to be picked up elsewhere. Knowing there is a nearby carrier, the QRF is heavily AA.
ENDTAB;


};

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>US Victory is achieved when all mortars are destroyed and all US Forces are extracted.
<br/>
<br/>Russian Victory is achieved when US sustain heavy casualties.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE