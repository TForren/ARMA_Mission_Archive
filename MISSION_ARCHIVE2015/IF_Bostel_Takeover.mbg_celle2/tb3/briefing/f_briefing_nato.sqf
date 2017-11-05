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
Made by Hoizen.
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
<br/>Short Range:
<br/> Channel 01, 31.0 - 1 Platoon, 1 Rifle Section
<br/> Channel 02, 32.0 - 1 Platoon, 2 Rifle Section
<br/> Channel 05, 35.0 - 1 Platoon, HQ Element
<br/>
<br/>Long Range:
<br/>Channel 01, 41.0 - Platoon Net
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Move along the MSR to eliminate all Ukraine insurgents dug in Fallingbostel and repel any counter attack from the North.
<br/><br/>
MOVEMENT PLAN
<br/>
Move via BTR-70s North following the MSR to Fallingbostel.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A
"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
2x BTR-70
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Capture and hold the town of Fallingbostel.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Ukrainian insurgents have occupied and fortified Fallingbostel. With insurgent reinforcements coming from the NW/NE, the insurgents morale is high.
Ukraine National Guard are tasked with uprooting the insurgents from Fallingbostel.
<br/><br/>
ENEMY FORCES
<br/>
60-80x infantry equip with soviet era to modern Russian small arms and gear. soft armor and APCs are to be expected. Possible heavy armor and IFVs either in the AO or on their way.
<br/><br/>
FRIENDLY FORCES
<br/>
N/A
"]];

// ====================================================================================