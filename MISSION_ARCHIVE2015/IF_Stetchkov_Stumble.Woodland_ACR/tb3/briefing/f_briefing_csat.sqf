// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: CSAT

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
OpFor
<br/>
Mission by Hoizen
<br/><br/>
Special Thanks:<br/>
-countless hours spent trying to get DAC artillery to work
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
<br/> Channel 01, 31.0 - 1 Platoon, 1-1 BMD Section
<br/> Channel 02, 32.0 - 1 Platoon, 1-2 BMD Section
<br/> Channel 03, 33.0 - 1 Platoon, 1-3 Weapons Team
<br/> Channel 05, 35.0 - 1 Platoon, HQ Element
<br/>
<br/>Long Range:
<br/> Channel 01, 51.0 - Platoon Command Net
<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Advance on the artillery positions to the NW and eliminate the 3x BM-21 Grads 
<br/><br/>
MOVEMENT PLAN
<br/>
Move by BMD-4Ms to stay mobile and avoid Grad fire.
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
2x BMD-4<br/>
2x GAZ 233<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Destroy the 3 BM-21 Grads.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Ultranationalist Ukrainian fighters have begun shelling Novorossiya positions. Russian VDV will move by BMDs to 
eliminate the Ultranationalist grads.
<br/><br/>
ENEMY FORCES
<br/>
70-90 Ultranationalist fighters with small arms and little or no protective gear. Possible technicals and BTR APCs. Possible heavy armor.
<br/><br/>
FRIENDLY FORCES
<br/>
N/A
"]];

// ====================================================================================
