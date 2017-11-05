#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
A local insurgent group known as 'The Liberation Finger of Sahrani' have recently aquired Iranian weapons and munitions crates that have been off loaded onto the Northern Shores of Sahrani. The Royal Army Corp of Sahrani(RACS) have
since secured the insurgent off loading site[<marker name='incident'>111169</marker>] but were unable to secure all the known munitions crates. NATO UAVs have confirmed insurgent activity in and around the mountains of NW Sahrani[<marker name='area'>0806</marker>] including
logistics vehicles driving off road.<br/>
<br/>
<br/>UAV IMAGE: SAHRANI INSURGENT SPEED BOAT
<br/>TIME: 0900HRS
<br/>
<img image='incident.jpg'/>
<br/>
<img image='incident2.jpg'/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Soviet era weaponry including AK-47, PKM Machine Guns and RPGs.<br/>
The enemy will be wearing both military and civilian clothing. Expect irregular uniform and equipment.<br/>
<br/>
Strength:<br/>
Approximately 40 to 50 confirmed armed men. Due to dense vegetation, expect more.<br/>
<br/>
Location:<br/>
The enemy are patrolling in and around the NW mountains[<marker name='area'>0806</marker>] attempting to secure the recently aqcuired munitions crates.<br/>
<br/>
MLCOA:<br/>
The enemy are likely to defend their camps and munitons crates and will likely attempt to fire upon low flying helicopters.<br/>
<br/>
MDCOA:<br/>
The enemy may overwelm the helicopters with forest-covered gunfire and have more man power than we can confirm at this time.<br/>
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
To utilize and further distribute muntions to the entire insurgency.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
9IFID 1PLT at FOB Pheonix[<marker name='plt'>112168</marker>]<br/>
Mission critical RACS attached to 9IFID 1PLT along side FOB pheonix[<marker name='plt'>112168</marker>].<br/>
Non-mission critical RACS Sentries are positioned at the Area of Incident[<marker name='incident'>111169</marker>] and the RACS checkpoint[<marker name='checkpoint'>114165</marker>] blocking off any civilian traffic.<br/>
<br/>
b. Higher Units Mission:<br/>
Company has been tasked to DESTROY 2x Iranian munitions crates currently in insurgent possession somewhere in the NW Sahrani Mountains[<marker name='area'>0806</marker>]<br/>
<br/>
c. Composition:<br/>
1PLT is Comprised of 1x US Rifle Squad and 1x PLT HQ Element.<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
1x RACS Rifle Squad attached to 1PLT.<br/>
1x US UAV Operator attached to 1PLT HQ Element.<br/>
<br/>
f. Assets:<br/>
US:<br/>
2x MH-9 Littelbirds<br/>
RACS:<br/>
2x unarmed landrover<br/>
1x Landrover(M2)<br/>
ENDTAB;

NEWTAB("II. Mission:")
1PLT is to DESTROY 2x Iranian Munitions Crates in the NW Sahrani Mountains[<marker name='area'>0806</marker>] NLT 1630hrs.<br/>
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
1PLT is to DESTROY 2x Iranian Munitions Crates NLT 0855hrs, denying the munitions to the Sahrani Insurgents.<br/>
<br/>
b. Scheme of Manoeuvre<br/>
9IFID 1PLT will stage and launch at FOB Pheonix[<marker name='plt'>112168</marker>] via MH-9 Littlebirds.<br/>
Mission critical RACS attached to 9IFID 1PLT will stage and launch along side FOB pheonix[<marker name='plt'>112168</marker>] via landrovers.<br/>
Further movement will be as per PLT LDR's Discretion<br/>
<br/>
c. Main Effort<br/>
1PLT's Main Effort will be to DESTROY 2x Iranian Munitions Crates.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1PLT will launch the operation at 1530hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
Med Packs: Platoon medpack carried by Platoon medic.<br/>
Morphine: 1 per Man.<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")


Command Location: Company is Located at Southern Sahrani Airfield.<br/>
<br/>
i) Chain of Command:<br/>
No Change.<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st Platoon, 1st Squad Rifles - Channel 1<br/>
1st Platoon, 2nd Squad Rifles - Channel 2<br/>
1st Platoon, HQ Squad - Channel 3<br/>
<br/>

ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes.
<br/>
<br/>Victory is achieved by Destroying both insurgent munitions crates.<br/>
<br/>Defeat occurs when 60% of your force is combat ineffective or the timelimit is reached.<br/>
<br/>
<br/>Remember to aquire explosives from the crates at the start. Otherwise, you can mag dump to destroy the crates. 
<br/>
<br/>Crates are found with insurgent camp sites. They may or may not have campfires burning. Look for camp-like objects.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();