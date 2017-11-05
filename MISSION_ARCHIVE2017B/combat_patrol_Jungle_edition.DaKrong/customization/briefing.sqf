#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Briefing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
A Tonoa insurgency cell called the Sones The Jungal (STJ) have been supplied by the Russian Federation to take up arms against occupational US Forces. Good intel revealed a meeting between Redpole Vadim Medvedev, an STJ lieutenant, and Egor Malyukov, an MSV Commander. MARSOC raiders will be deployed to kill or capture the two HVTs and extract before enemy QRFs arrive.
<br/>
<br/><font color='#FFA500'>a. Civilian:<br/></font>
No civilian presence expected in the AO.
<br/><br/>
<font color='#FFA500'>b. Area of Interest:<br/></font>
Hilltop/woods surrounding the marked meeting location.
<br/><br/>
<font color='#FFA500'>c. Area of Operations:<br/></font>
Dense woods. Non-jungle. Jungle begins North of 076. Bumpy, sloped inclines. low-brush with tall forest trees. Dense fog almost completely obscuring vision at low altitudes. Fog lightens up near the hill peak.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>Sones The Jungal Insurgents
<br/>Russian Federation MSV
<br/><br/>
<font color='#FFA500'>Equipment:<br/></font>
<br/>STJ: Pre-modern AKs, RPG-7s, PKMs, no/light body armor.
<br/>MSV: Modern Russian Federation small arms. AKs, RPG-7s, PKP, medium/heavy body armor.
<br/>
<br/>
<font color='#FFA500'>Strength:<br/></font>
<br/>STJ: ~40 Insurgents.
<br/>MSV: ~12 security personnel accompanying Egor during his meeting.
<br/>MSV QRF: 1x BTR-80A mounted infantry platoon.
<br/>
<br/>
<font color='#FFA500'>Location:<br/></font>
Marked loc <marker name='meetingloc'>[LC119074]</marker>
<br/>
<br/>
<font color='#FFA500'>MLCOA:<br/></font>
Patrols of both STJ and MSV expected. QRFs will likely be called if MSV personnel become aware of the serious threat. 
<br/>
<br/>
<font color='#FFA500'>MDCOA:<br/></font>
Russian MSV may consider any gunfire has a serious threat to Egor and will call in QRFs immediately.
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

ENDTAB;

NEWTAB("B. Friendly Forces:")
<font color='#FFA500'>a. Higher HQ Mission and Intent:<br/></font>
Capture both HVTs. Eliminate if necessary. 
<br/><br/>
<font color='#FFA500'>b. Composition:<br/></font>
1st troop is comprised of 3x raid elements, and 1x HQ with JTAC
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
<font color='#FFA500'>RAID</font> and <font color='#FFA500'>CAPTURE</font> the MSV HVT, STJ HVT, and <font color='#FFA500'>EXTRACT</font> to avoid QRFs.
ENDTAB;

NEWTAB("III. Execution:")

<font color='#FFA500'>a. Concept of the Operation<br/></font>
1st troop will move via UH-1Y Venom to Tanoa island to raid the meeting between the MSV and STJ with the intent to capture both HVTs.
<br/>
<br/>
<font color='#FFA500'>b. Scheme of Manoeuvre<br/></font>
By Air
<br/>
<br/>
<font color='#FFA500'>c. Main Effort<br/></font>
Damage the relations between the MSV and STJ.
<br/>
<br/>
<font color='#FFA500'>d. Tasks to Subordinate Units<br/></font>
N/A
<br/>
<br/>
<font color='#FFA500'>e. Coordinating Instructions<br/></font>
<br/>
<font color='#70db70'>i) Timings:<br/></font>
As per troop LDR's Discretion.
<br/>
<br/>
<font color='#70db70'>ii) Control Measures:<br/></font>
Consider the MSV QRF as a left bound.
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
<br/>		N/A
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
<br/> 		1 troop, 1 Element 	- Channel 1, 2400.6
<br/> 		1 troop, 2 Element 	- Channel 2, 2401.6
<br/> 		1 troop, 3 Element 	- Channel 3, 2402.6
<br/> 		1 troop, HQ Element - Channel 6, 2405.6
<br/>
<br/>
<br/>		Long Range: - AN/PRC152 + AN/PRC117f
<br/>
<br/> 		1 troop Tac Net   	- Channel 1, 36.625 
<br/>
<br/><font color='#FFA500'>c. Codewords</font>
<br/>
<br/>	nil
<br/>
<br/><font color='#FFA500'>d. Special Signals</font>
<br/>
<br/>	Waving like a idiot - Don't shoot me
<br/>
<br/>	Red Smoke - Enemy Targets (Primary UH-1Y enagement)
<br/>	Blue Smoke - Friendly Forces
<br/>	Yellow Smoke - Extraction LZ
<br/>
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
<br/>Consider fast rope due to fog.
<br/>
<br/>If the QRF is in the area and extraction is not complete, consider foot slogging it further away to be picked up elsewhere.
ENDTAB;


};

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>MARSOC victory is achieved with either the killing or capturing of both HVTs along with the extraction of all US Forces. 
<br/>
<br/>Capturing is defined as the HVTs being ziptied in one of the 3 helos or on the carrier.
<br/>
<br/>Russian Victory is achieved when US sustain heavy casualties.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE