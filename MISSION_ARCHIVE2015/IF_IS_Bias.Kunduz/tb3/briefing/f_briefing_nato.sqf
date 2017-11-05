// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// TASKS
// The code below creates tasks. A (commented-out) sample task is included.

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Mission by Hoizen.
<br/>Music by Daler Mehndi.
"]];

// ====================================================================================

// NOTES: Mission Notes
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Mission Notes","
<br/>Time Limit is 90 minutes.
<br/>
<br/>Victory is achieved by destroying the mortars and returning to the starting area.<br/>
<br/>Defeat occurs when 50% of your force is combat ineffective or the timelimit is reached.<br/>
<br/>
<br/>Explosives will need to be picked up by players from the explosives crates.
<br/>

"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_mis = player createDiaryRecord ["diary", ["V. Command & Signal","


Command Location: Company is Located at Kunduz<br/>
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

"]];

// ====================================================================================

// NOTES: Sustainment
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["IV. Sustainment","
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

"]];
// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["III. Execution","

a. Concept of the Operation<br/>
1PLT is to DESTROY ISIS Mortars East of the Kunduz River NLT 1850hrs, bringing an end to the shelling of ANA positions.<br/>
<br/>
b. Scheme of Manoeuvre<br/>
1PLT will stage and launch the operation from a seized compound to the North of the objective. From there 1PLT will move to DESTROY its Objectives as per PLT LDR's Discretion.<br/>
<br/>
c. Main Effort<br/>
1PLT's Main Effort will be to DESTROY the mortars and any insurgent activity in the area.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1PLT will launch the operation at 1735hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.<br/>
<br/>	

"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["II. Mission","
<br/>
1PLT is to DESTROY ISIS mortars [<marker name='ISIS'>LC035030</marker>] East of the Kunduz River NLT 1850hrs.<br/>
"]];

// ====================================================================================

// NOTES: Friendly Forces
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["B. Friendly Forces","
a. Disposition:<br/>
1PLT will launch from a seized compound [<marker name='HQ'>LC035044</marker>] North of the Objective.<br/>
<br/>
b. Higher Units Mission:<br/>
Company has been tasked to DESTROY ISIS Mortars east of the Kunduz River.<br/>
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
"]];
// ====================================================================================

// NOTES: Enemy Forces
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["A. Enemy Forces","
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
The enemy will attempt to use technicals and possible heavy armor to deal heavy damage to 1PLT.<br/>
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
To continue to shell ANA positions with mortar fire.<br/>
<br/>

"]];
// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["I. Situation","
<br/>
IS Forces have been shelling nearby ANA checkpoints and fortified positions from across the river in Kunduz. ANA forces have requested the assistance of the US Military for this task.
<br/>
The objective of the operating forces is to destroy the mortars to cease further shelling of ANA positions and to destroy enemy assets.

"]];

// ====================================================================================