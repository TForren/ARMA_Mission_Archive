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
by Zenatsu
<br/><br/>
Made with EOS and COS by BangaBob
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
You have an M113A3 as well as a weapons team to your disposal.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Find that slippery son-of-a-bitch, and bring him back here! ALIVE!
<br/><br/>
MOVEMENT PLAN
<br/>
Move into the local town, he couldn't have gotten far!
<br/><br/>
FIRE SUPPORT PLAN
<br/>
You have an M113A3 to help transport.
<br/><br/>
SPECIAL TASKS
<br/>
Bring that bastard alive. ALIVE SOILDERS
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Our high value prisoner escaped, took some clothes and dashed off into the night. Lucikly he isn't dressed like the locals. Find that HVT and bring him back ALIVE!
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
HVT has ran off into the local town. Re-capture him ALIVE.
<br/><br/>
ENEMY FORCES
<br/>
There is a known insurgent presence, and we suspect his escape was not by luck. Be careful out there.
<br/>
"]];

// ====================================================================================