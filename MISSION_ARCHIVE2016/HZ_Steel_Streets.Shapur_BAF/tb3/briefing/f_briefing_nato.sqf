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
Mission By Hoizen
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
<br/> Channel 01, 31.0 - 1 Platoon 1, Tank 1
<br/> Channel 02, 32.0 - 1 Platoon 1, Tank 2
<br/> Channel 03, 33.0 - 1 Platoon 1, Tank 3
<br/> Channel 04, 34.0 - 1 Platoon 1, Tank 4
<br/> Channel 05, 35.0 - 1 Platoon 1, Tank 5
<br/>
<br/>Long Range:
<br/> Channel 01, 51.0 - Command Net
<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Eliminate or Disable all Russian vehicles in the area of Shapur.
<br/><br/>
MOVEMENT PLAN
<br/>
Sweet South.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A
<br/><br/>
SPECIAL TASKS
<br/>
N/A
"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
5x Leopard 2A6M
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Destroy or Disable all Russian armor in the area.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Tanks.
<br/><br/>
ENEMY FORCES
<br/>
5x T-80Us
<br/><br/>
FRIENDLY FORCES
<br/>
5x Leopard 2A6M
"]];

// ====================================================================================