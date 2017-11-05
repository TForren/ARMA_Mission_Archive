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

_cre = player createDiaryRecord ["diary", ["NOTES","
<br/>
BLUFOR
<br/>
Hoizen
<br/><br/>
Spectators will control AI.
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
<br/> Channel 02, 32.0 - 1 Platoon, 1 Weapons Team 
<br/> Channel 05, 35.0 - 1 Platoon, HQ Element
<br/>
<br/>Long Range:
<br/> Channel 01, 51.0 - Company Command Net
<br/>
"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
2x HMMWV (M2)<br/> 
1x MRAP (M2)<br/> 
1x MRAP (unarmed)<br/> 
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Remove the IED from the Feruz Abad market square, restore peace to the Bastam mosque, and destroy the insurgent weapons cache.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Nothing to tell. Get shit done.
<br/><br/>
ENEMY FORCES
<br/>
small pockets of insurgents around the three objectives with plenty on standby waiting to move in from nearby insurgent camps. 
<br/><br/>
FRIENDLY FORCES
<br/>
N/A
"]];

// ====================================================================================