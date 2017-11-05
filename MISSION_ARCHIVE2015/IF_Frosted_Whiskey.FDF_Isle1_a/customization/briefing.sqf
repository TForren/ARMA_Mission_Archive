#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Russian MSV have begun spreading influence across the area of Podagosrk. In an attempt to disrupt the Russian Forces, 101st airborne paratroopers will drop in the Northern Hills
to capture a foothold for the arrival of the main US forces to dig in and put a stop the Russian advance.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Modern Russian Federation weaponry including AKM, PKM Machine Guns and RPGs.<br/>
The enemy will be wearing Russian Federation Uniform with appropriate chest and head armor.<br/>
<br/>
Strength:<br/>
Approximately 40 to 50 armed men.<br/>
<br/>
Location:<br/>
The enemy are occupying the hotel compound at OBJ Krunchy[<marker name='Secure'>096095</marker>] and will have at minimum 5-7 patrol teams scattered across the AO.<br/>
<br/>
MLCOA:<br/>
The enemy are likely to defend their existing positions and counter attack OBJ Krunchy[<marker name='Secure'>096095</marker>] when taken by the 101st Airborne.<br/>
<br/>
MDCOA:<br/>
The enemy may have patrols in or close to DZ Frozen[<marker name='DZ'>086083</marker>] when 101st 1PLT lands, possibly resulting in the early loss of friendly forces.<br/>
<br/>
Defensive Fires:<br/>
Unknown.<br/>
<br/>
Airthreat:<br/>
Unknown.<br/>
<br/>
Morale:<br/>
High<br/>
<br/>
CBRN Threat:<br/>
The Enemy pose no CBRN threat.<br/>
<br/>
Future intentions:<br/>
To further spread across the area unhindered.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
101st 1PLT will paradrop at DZ Frozen[<marker name='DZ'>086083</marker>] North West of the Objective.<br/>
<br/>
b. Higher Units Mission:<br/>
Company has been tasked to SECURE OBJ KRUNCHY[<marker name='Secure'>096095</marker>] South of the Podagorsk Hills.<br/>
<br/>
c. Composition:<br/>
1PLT is Comprised of 2x Rifle Squads and 1x WPNS Squad.<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
None. <br/>
<br/>
f. Assets:
<br/>N/A
ENDTAB;

NEWTAB("II. Mission:")
1PLT is to SECURE OBJ KRUNCHY[<marker name='Secure'>096095</marker>] South of the Podagorsk Hills. NLT 0855.<br/>
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
1PLT is to SECURE OBJ Krunchy South of the Podagorsk Hills NLT 0855hrs, securing a preliminary foothold to hinder the Russian Advance<br/>
<br/>
b. Scheme of Manoeuvre<br/>
1PLT will touch down at DZ Frozen[<marker name='DZ'>086083</marker>] and launch the operation from a TBD rally point to the North West of the objective. From there 1PLT will move to SECURE its Objective as per PLT LDR's Discretion.<br/>
<br/>
c. Main Effort<br/>
1PLT's Main Effort will be to SECURE OBJ Krunchy and any Russian Forces attending to resecure the area in their control.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1PLT will launch the operation at 0755. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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


Command Location: Company is Located at Podagorsk<br/>
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
1th Platoon, 3rd Squad Weapons - Channel 3<br/>
1st Platoon, HQ Squad - Channel 4<br/>
<br/>

ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes.
<br/>
<br/>Victory is achieved by securing the marked compound and holding it against any counter attacks until the compound is marked as SECURE.<br/>
<br/>Defeat occurs when 40% of your force is combat ineffective or the timelimit is reached.<br/>
<br/>
<br/>When parachuting, DO NOT Land in trees or land too hard. You WILL die.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();