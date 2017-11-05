#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
ChDKZ Guerrillas have been infesting the area of Novy Lug ambushing CDF supply convoys moving between the two Northern airfields. 
<br/>
<br/>CDF forces are to locate and neutralize the Guerrilla camps in the designated area to lessen the Guerrilla activity. 

ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Soviet Russian weaponry including AK47s, PKP Machine Guns, RPGs, and static Machine Guns.<br/>
The enemy will be wearing irregular uniform with a mix of both Military and Civilian clothing.<br/>
<br/>
Strength:<br/>
55-70x foot soldiers with 4-6 unknown vehicles. Expect Technicals.
<br/>
<br/>
Location:<br/>
ChDKZ Guerrilla fighters in and around the given area.
<br/>
<br/>
MLCOA:<br/>
The ChDKZ fighters will defend their camps and will attempt to confuse the CDF forces by spreading their forces across the AO.<br/>
<br/>
MDCOA:<br/>
The ChDKZ will deploy technicals and static weapons to fire upon the Mi-8 which will serverely limit the CDFs ability to locate the camps.<br/>
<br/>
Defensive Fires:<br/>
N/A.<br/>
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
To continue distrubting logistics between the two airfields.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
CDF Rifle Platoon stationed on the NW Airfield[<marker name='start2'>044047</marker>]<br/>
<br/>
b. Higher Units Mission:<br/>
N/A
<br/><br/>
c. Composition:<br/>
CDF Forces are to restore supply routes between the airfields.
<br/>
<br/>
d. Supporting fires:<br/>
None. <br/>
<br/>
e. Attachments/Detachments:<br/>
1x Mi-8 for logistics and CAS.
<br/>
<br/>
f. Assets:<br/>
1x Mi-8<br/>
	Cargo:Standard Infantry resupply<br/>
ENDTAB;

NEWTAB("II. Mission:")
Locate and neutralize at least one of the Guerrilla camps in the area if not both is time permits. 
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
CDF Forces will launch the operation from the NW Airfield[<marker name='start2'>044047</marker>] to locate and destroy ChDKZ camps in the given area.
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
CDF ground troops will move either by KAMAZ logistics trucks or mi-8 helicopter transport. 
<br/>
<br/>
c. Main Effort<br/>
Destroy ChDKZ camps.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
CDF Forces will launch the operation at 0415. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
<br/>
<br/>ii) Signal
<br/>
<br/>a. Frequencies
<br/>
<br/>Short Range (PRC343):
<br/> Channel 01, 1 Platoon, 1 CDF Infantry Squad
<br/> Channel 02, 1 Platoon, 2 CDF Infantry Squad
<br/> Channel 03, 1 Platoon, 3 CDF Infantry Squad
<br/> Channel 04, BLADERUNNER-1 Crew
<br/> Channel 05, 1 Platoon, HQ Element
<br/>Long Range (prc152):
<br/> Channel 01, Platoon Command Net
<br/> Channel 02, Air Comms Net (RTO and BLADERUNNER-1)
<br/>
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>Mission Victory is acheived when at least one of the ChDKZ camps is destroyed and all CDF Forces return to the airfield.
<br/>Mission is considered failed if more than 80% of the CDF Forces are KIA.
<br/>
<br/>Explosives needed for blowing up the camps can be found in the KAMAZ trucks, UAZ, and Mi-8

ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();