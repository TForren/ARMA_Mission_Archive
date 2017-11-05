#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
<br/>
As usual, intel as confirmed the location of an insurgent weapons cache near the local Bazaar in Kunduz, Afghanistan.
<br/>
The objective of the operating forces is simply to destroy the cache to deny further distribution of small arms to local insurgent groups.

ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Soviet-era small arms which includes AK-47s, PKM Machine Guns and RPGs.<br/>
The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
<br/>
Strength:<br/>
Approximately 60 to 80 armed men.<br/>
<br/>
Location:<br/>
The enemy are held up civilian structures in and around the target compound and are expected to have outreaching patrols.<br/>
<br/>
MLCOA:<br/>
The enemy are likely to defend their existing positions and call in reinforcements if vailable.<br/>
<br/>
MDCOA:<br/>
The enemy will attempt to use technicals to surprise friendly forces with overwhelming heavy machinegun fire.<br/>
<br/>
Defensive Fires:<br/>
Unknown.<br/>
<br/>
Airthreat:<br/>
None.<br/>
<br/>
Morale:<br/>
High<br/>
<br/>
CBRN Threat:<br/>
The Enemy pose no CBRN threat.<br/>
<br/>
Future intentions:<br/>
To continue to distribute small arms to current and joining members of the insurgents in Kunduz.<br/>
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
1PLT will launch from FOB IRONSIDE[<marker name='HQ'>LC049014</marker>].<br/>
<br/>
b. Higher Units Mission:<br/>
Company has been tasked to DESTROY Insurgent weapons cache near the local Bazaar.<br/>
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
<br/>2x MRAP (M2)
<br/>2x HMMWV (M2)
<br/>1x HMMWV (Mk19)
<br/>3x HMMWV (unarmed)
ENDTAB;

NEWTAB("II. Mission:")
1PLT is to DESTROY insurgent weapons cache [<marker name='Cache'>LC021002</marker>] near the local Bazaar NLT 1950hrs.<br/>

ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
1PLT is to DESTROY Insurgent weapons cache West of the Kunduz River NLT 1950hrs, denying small arms to the enemy.<br/>
<br/>
b. Scheme of Manoeuvre<br/>
1PLT will stage and launch the operation from FOB IRONSIDE. From there 1PLT will move to DESTROY its Objectives as per PLT LDR's Discretion.<br/>
<br/>
c. Main Effort<br/>
1PLT's Main Effort will be to DESTROY the weapons cache and any insurgent activity in the area.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1PLT will launch the operation at 1845hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
Location: Battalion Medical Facility is Located in Kunduz City.<br/>
CASEVAC: By foot.<br/>
Plan: Set up a Casualty Collection Point and Extract Casualties to this Point.<br/>
Stretchers: None<br/>
Med Packs: Platoon medpack carried by Platoon medic.<br/>
Morphine: 1 per Man.<br/>

ENDTAB;

NEWTAB("V. Command & Signal:")
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
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Victory is achieved by destroying the cache and extracting over the bridge.<br/>
<br/>Defeat occurs when 45% of your force is combat ineffective or the timelimit is reached.<br/>
<br/>
<br/>This mission uses ACE Basic Medical System.
<br/>
<br/>Explosives will need to be picked up by assigned players from the explosives crates.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();