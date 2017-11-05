// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION:CSAT

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
Special Thanks:<br/>
-One of my dorm room-mates for naming the mission.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Capture the Cocaine can by returning it to the lantern at your start position. 
<br/>
<br/>
<br/>Time Limits:
<br/>
Chemlight/Smoke Activates on cocaine can: 15 minutes<br/>
Police Show up: 25 minutes<br/>
Mission Ends: 30 minutes<br/>

"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
A jerry can filled with cocaine has recently been discarded in the nearby wilderness by a rookie running from the feds. Two rival Mexican drug cartels,
Los Gatos and El Pollo Loco have sent foot soldiers in to acquire the cocaine as their own. The jerry can has an automatic timer that will trigger a smoke bomb and a chemlight after
15 minutes. We also have a third cartel flying a helicopter overhead to drop some chemlights to help us see. However, gunshots, helicopters, and smoke will surely attract the local police department. 
Expect the police to be on scene after 25 minutes.
<br/><br/>
ENEMY FORCES
<br/>
Los Gatos foot soldiers<br/>
Local Police Force<br/>
<br/><br/>
FRIENDLY FORCES
<br/>
Chemlight-dropping helicopter
"]];

// ====================================================================================