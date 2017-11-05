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
Mission by Hoizen:
<br/>
Special thanks:
<br/>
HAHAHA Have fun.
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
<br/> Channel 01, 31.0 - 1 Platoon, Section 1-1 BMP Infantry
<br/> Channel 02, 32.0 - 1 Platoon, Section 1-2 BMP Infantry 
<br/> Channel 05, 35.0 - 1 Platoon, HQ Element
<br/>
<br/>Long Range:
<br/> Channel 01, 51.0 -  Vehicle Command Net
<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Break through the Novorossiya front lines. We'll figure the rest out from there. 
<br/><br/>
MOVEMENT PLAN
<br/>
Follow the completely safe road going through the area.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A
<br/><br/>
SPECIAL TASKS
<br/>
Keep both BMPs alive.
"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
2x BMP-2D<br/>
1x UAZ<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Breakthrough the Novorossia lines by bringing at least 1x BMP-2D to the finish marker.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Ukraine Armed Forces Command have decided that a suicidal death push through the front lines of the Novorossiya is the best course of action.
<br/><br/>
ENEMY FORCES
<br/>
80-90 Novorossiya fighters armed with small arms and enough AT to be threatening. Possible Novorossiya BTRs and potential BMPs in the area. Enemy forces may also have mortar support.
<br/><br/>
FRIENDLY FORCES
<br/>
None. Just you.
"]];

// ====================================================================================