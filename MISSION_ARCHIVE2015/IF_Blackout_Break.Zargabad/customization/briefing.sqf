#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Hughvan Willard, a VIP being escorted by Private Military Contractor Ion, has been ambushed by local sand people along the main road of Central Zargabad.
<br/><br/>
Ion's TEAM SHIELD has fortified a building[<marker name='VIP'>038040</marker>] to protect the VIP but is surrounded by hostile contact. 
<br/><br/>
BLUFOR Rescue Team 9 is enroute from the Southern roads leading into Zargabad to extract the VIP and any surviving PMC members.
<br/>
<br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Soviet era weaponry including AK-47, PKM Machine Guns and RPGs.<br/>
The enemy will be wearing both military and civilian clothing. Expect irregular uniform and equipment.<br/>
<br/>
Strength:<br/>
UNKNOWN.<br/>
<br/>
Location:<br/>
Exact locations unknown. Assume hostile contact in ever part of Zargabad.<br/>
<br/>
MLCOA:<br/>
The enemy will continue to attack the VIP building[<marker name='VIP'>038040</marker>] until the VIP is dead.<br/>
<br/>
MDCOA:<br/>
The enemy will deploy suicide attacks if they are unable to eliminate the VIP through conventional means.<br/>
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
To eliminate the VIP.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
Ion TEAM SHIELD fortified in VIP building[<marker name='VIP'>038040</marker>]<br/>
US RESCUE TEAM 9[<marker name='US'>047004</marker>].<br/>
Zargabad Police Force at Zargabad Police Station[<marker name='police'>040040</marker>]<br/>
<br/>
b. Higher Units Mission:<br/>
N/A
<br/><br/>
c. Composition:<br/>
US RESCUE TEAM 9 is comprised of 3x 4-man fireteams with a squad leader and attached squad medic.<br/><br/>
Ion TEAM SHIELD is comprised of 5x contractors.<br/><br/>
Zargabad Police Force is comprised of 3 dudes that found AKs.<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
Attached Squad Medic.
<br/>
f. Assets:<br/>
US:<br/>
1x MRAP(M2)<br/>
3x HMMWV<br/>
ENDTAB;

NEWTAB("II. Mission:")
TEAM SHIELD is to defend the VIP until US RESCUE TEAM 9 extracts the VIP South of Zargabad.<br/>
Zargabad Police Force is to assist the survival of the VIP and extract with the BLUFOR.<br/>
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
Ion TEAMSHIELD will defend the VIP for as long as the US Rescue Team needs to arrive on scene. TEAM SHIELD should assess the area and relocate the VIP if needed.<br/>
<br/>
US RESCUE TEAM 9 will break through enemy contact in Zargabad to extract the VIP and all surviving Ion contractors South of Zargabad to their original staging point.<br/>
<br/>
b. Scheme of Manoeuvre<br/>
US RESCUE TEAM 9 will move via HMMWV and/or MRAP along the Southern roads leading into Zargabad.
Further movement will be as per PLT LDR's Discretion<br/>
<br/>
c. Main Effort<br/>
Rescue the VIP.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1PLT will launch the operation at 1930hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
Ion TEAM SHIELD - Channel 1<br/>
1st US RESCUE TEAM 9 - Channel 2<br/>
<br/>

ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes.
<br/>
<br/>Victory is achieved by extracting the VIP and all BLUFOR South out of Zargabad (including Police. Shits too dangerous to stay)<br/>
<br/>Defeat occurs when the VIP is killed or time limit is reached.<br/>
<br/>
<br/>The VIP is out of shape and weak. He cannot sprint long distances without getting extremely exhausted.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();