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
BLUFOR
<br/>
Hoizen
<br/><br/>
Special Thanks<br/>
-Hours of suffering through DAC parameters<br/>
-I think it works<br/>
-I enjoy watching you slaughter each other<br/>
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
<br/> Channel 01, 31.0 - 1 Platoon, 1 mounted Infantry
<br/>
"]];

// ====================================================================================
// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Eliminate the Ukraine Army forces in the AO.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Ukraine Armed Forces are in the area mucking about. Ukraine Armed forces are deployed in the AO to eliminate them.
<br/><br/>
ENEMY FORCES
<br/>
1x mounted Ukraine Army Infantry squad
<br/><br/>
FRIENDLY FORCES
<br/>
N/A
"]];

// ====================================================================================