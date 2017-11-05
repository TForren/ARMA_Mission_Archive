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
<br/>Music by BIStudio
"]];

// ====================================================================================

// NOTES: Mission Notes
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Mission Notes","
<br/>Time Limit is 90 minutes.
<br/>
<br/>Victory is achieved by retreating at least 1x BMPs over the land bridge.<br/>
<br/>Defeat occurs when 75% of your force is combat ineffective or the timelimit is reached.<br/>
<br/>
<br/>If one of the BMPs is disabled, it must be denied to the enemy before mission compelte.
<br/>

"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_mis = player createDiaryRecord ["diary", ["V. Command & Signal","


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
1st Platoon, 1st Rifle Section - Channel 1<br/>
1st Platoon, 2nd Rifle Section- Channel 2<br/>
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
Location: Battalion Medical Facility is Located in Podagorsk Airfield.<br/>
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
1PLT is to Retreat to the Ukraine Army Airfled NLT time of death.<br/>
<br/>
b. Scheme of Manoeuvre<br/>
1PLT will stage and launch the operation from a seized fuel station NE of the airfield. From there 1PLT will move to BREAK THROUGH to its Objectives as per PLT LDR's Discretion.<br/>
<br/>
c. Main Effort<br/>
1PLT's Main Effort will be to BREAK THROUGH back to safety at the Podagorsk Airfield.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1PLT will launch the operation at 1610hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Coalition Forces are allowed to engage anything that are not friendly Ukraine Army Forces.<br/>
<br/>	

"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["II. Mission","
<br/>
1PLT is to BREAK THROUGH to safety over the land bridge [<marker name='Finish'>LC086149</marker>] South West of Kovrov NLT 1730hrs.<br/>
"]];

// ====================================================================================

// NOTES: Friendly Forces
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["B. Friendly Forces","
a. Disposition:<br/>
1PLT will launch from a seized Fuel Station [<marker name='HQ'>LC126141</marker>] North of the Objective.<br/>
<br/>
Ukraine Airfield Guard will be present at the South end of the land bridge.
<br/>
b. Higher Units Mission:<br/>
Company has been tasked to DESTROY ISIS Mortars east of the Kunduz River.<br/>
<br/>
c. Composition:<br/>
1PLT is Comprised of 2x Mechanized Infantry Sections.<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
None. <br/>
<br/>
f. Assets:
<br/>2x BMP-2D
"]];
// ====================================================================================

// NOTES: Enemy Forces
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["A. Enemy Forces","
Equipment:<br/>
Modern Russian small arms which includes AK-47s, PKM Machine Guns and RPGs.<br/>
The enemy are likely to be dressed not dissimilar to Russian Federation Uniform.<br/>
<br/>
Strength:<br/>
Approximately 60 to 80 armed men.<br/>
<br/>
Location:<br/>
The enemy are patrolling in and around Kovrov and have been stretching down South to cover the area.<br/>
<br/>
MLCOA:<br/>
The enemy are likely to spread out across the area South East of Kovrov.<br/>
<br/>
MDCOA:<br/>
The enemy will swarm the Ukrainian BMPs with overwhelming RPG fire and mortar support.<br/>
<br/>
Defensive Fires:<br/>
Mortars Located in Zirnitra are expected to be used when Ukraine Forces are spotted.<br/>
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
To continue to control more land to cut off the island from the Ukraine Army Airfled.<br/>
<br/>

"]];
// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["I. Situation","
<br/>
Firefights between Novorossiyan forces and the Ukraine Army have broken out across the are for the past few months. Just recently, the Russian Federation supported Rebeled have successfully 
executed a major push into Ukraine Army territory and have cut off a number of Ukraine Garrisons from their only supply route to the Airfield.
<br/>
<br/>
The objective of the operating Ukraine forces is to break through the rebels' positions and retreat back to the airfield.

"]];

// ====================================================================================