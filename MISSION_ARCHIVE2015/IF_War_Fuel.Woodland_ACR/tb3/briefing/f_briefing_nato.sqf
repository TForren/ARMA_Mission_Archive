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
BLUFOR
<br/>
Mission by Hoizen. 
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Command & Signal","
<br/>
<br/>2. Signal
<br/>
<br/>a. Frequencies
<br/>
<br/>Short Range (7800):
<br/> Channel 01, 31.0 - 1 Platoon, 1 Rifle Squad
<br/> Channel 02, 32.0 - 4 Platoon, Helicopter Crew
<br/> Channel 05, 35.0 - 1 Platoon, HQ Element
<br/>
<br/>Short Range (PRC152):
<br/> Channel 01, 41.0 - Platoon Net, Squad Leader Comms
<br/>
<br/>Long Range:
<br/> Channel 01, 51.0 - Company Command Net
<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Insert via Blackhawk fastrope into the wooded areas and recapture the rovers.
<br/><br/>
MOVEMENT PLAN
<br/>
Helicopter Insertion.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A
<br/><br/>
SPECIAL TASKS
<br/>
Capture Lopotev and Bardak
"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
1x UH-60M<br/>
1x Refuel Truck<br/>
1x Repair Truck<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Recapture one of the CDF landrover fuel trucks from the ChDKZ camps and destroy the other 
<br/>
OR:
<br/>
Recapture both CDF Landrovers from the ChDKZ. 
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
ChDKZ Insurgents have captured vital fuel trucks from the CDF. Since the CDF are now combat ineffective without their fuel, US Forces are being deployed to recapture the land rovers
for the CDF.
<br/><br/>
ENEMY FORCES
<br/>
Squad-sized groups of ChDKZ insurgents hanging around the insurgent camps. Pockets of patrols within 500m of the camps. Unarmed transports moving insurgents between the two camps.
<br/><br/>
FRIENDLY FORCES
<br/>
N/A
"]];

// ====================================================================================