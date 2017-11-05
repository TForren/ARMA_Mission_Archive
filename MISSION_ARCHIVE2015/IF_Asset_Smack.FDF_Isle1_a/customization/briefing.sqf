#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
A Russian logistics train transporting experimental improved T-80 MBTs has run into joint issues and has been partially derailed at the Protvino station[<marker name='train'>102114</marker>]. With only a handful of
Russian security personnel currently stationed in Protvino[<marker name='prot'>100117</marker>], the USMC based on the USS Thorne[<marker name='start'>065175</marker>] will attempt a daring strike to destroy the experimental T-80s. The main Russian VDV
company stationed in the area is currently on its way from the West[<marker name='vdv'>1001090</marker>] to reinforce the town of Protvino[<marker name='prot'>100117</marker>] ETA 15 minutes from start of operation (1600hrs).
<br/><br/>
Due to the amount of explosives required to destroy all experimental T-80s, the USMC forces will move to secure the logistics train while USS Thorne Personnel prep and load the explosives into a sling-able supply crate for the USMC Pilots to pick up.
The explosives crate should be ready for helo pickup by the time the train is secured.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Modern Russian weaponry including AKMs, PKM Machine Guns, RPGs, and MANPADS.<br/>
The enemy will be wearing Russian Federation Uniform and standard body protection equipment.<br/>
<br/>
Strength:<br/>
VDV Company:<br/> 
55-70x foot soldiers with 4-6 unknown vehicles. Expect BTRs and potential armor. <br/>
<br/>
Russian Protvino Security Personnel:<br/>
10-15x foot soldiers with potential light armor vehicles.<br/>
<br/>
Location:<br/>
VDV Company located West of Protvino by 2km. Protvino security personnel in Protvino.
<br/>
<br/>
MLCOA:<br/>
The VDV company will move to resecure the derailed train[<marker name='train'>102114</marker>] through heavy t.<br/>
<br/>
MDCOA:<br/>
The VDV company will deploy armored IFVs and overwhelm the derailed train[<marker name='train'>102114</marker>] potentially taking down USMC helicopters in the AO.<br/>
<br/>
Defensive Fires:<br/>
Unknown.<br/>
<br/>
Airthreat:<br/>
N/A.<br/>
<br/>
Morale:<br/>
High<br/>
<br/>
CBRN Threat:<br/>
The Enemy pose no CBRN threat.<br/>
<br/>
Future intentions:<br/>
To restore the train to working order and continue the relocation of the experimental T-80s.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
USMC Platoon stationed on the USS Thorne[<marker name='start'>065175</marker>]<br/>
<br/>
b. Higher Units Mission:<br/>
N/A
<br/><br/>
c. Composition:<br/>
USMC aboard the USS Throne are to secure and destroy the experimental T-80s.
<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
2x UH-1Y Venoms for logistics and CAS.
<br/>
<br/>
f. Assets:<br/>
US:<br/>
1x UH-1Y Venom with 2x M134 door guns and 2x rocket pods.<br/>
	Cargo:Standard Infantry resupply<br/>
ENDTAB;

NEWTAB("II. Mission:")
Secure the area around the derailed train followed by the destruction of all the experimental T-80s.<br/>
All USMC forces must extract from the AO once the objective is complete.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
USMC Forces will rapidly launch from the USS Thorne to secure the area surrounding the derailed train before the VDV Company arrives. Upon securing the area, USMC Pilots callsign VADER-1 and VADER-2 will
transport the crate of explosives needed for the destruction of the experimental T-80s to the area. Should the VDV arrive during the operation, USMC ground forces will need to defend the area until the objective is complete.<br/>
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
USMC Forces will launch from the USS Thorne VIA UH-1Y Helicopters.
Further movement will be as per PLT LDR's Discretion<br/>
<br/>
c. Main Effort<br/>
Destroy the experimental T-80s.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
USMC Forces will launch the operation at 1600hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
i) SOP Variations<br/>
Dress: None<br/>
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
ii) Logistic Support<br/>
Replen Plan: None<br/>
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
iii) Medical<br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
Morphine: 1 per Man.<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")

i) Chain of Command:<br/>
No Change.<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
1st JTAC/CAS Net - Channel 2<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
USMC Rifle Squad 1 - Channel 1<br/>
USMC VADER-1 Crew - Channel 2<br/>
USMC VADER-2 Crew - Channel 3<br/>
USMC 1st Platoon HQ - Channel 4<br/>
<br/>

ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 70 minutes.
<br/>
<br/>USMC must secure and hold the train for at least 5 minutes before the explosive crates are spawned on the USS Thorne.
<br/>
<br/>Victory is acheived when all experimental T-80s are destroyed and all USMC forces have extracted from the AO.<br/>
<br/>Defeat occurs when Russian forces rescure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();