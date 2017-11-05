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
Mission by Hoizen
<br/><br/>
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
N/A
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
Get that fucker back. Use your cable ties and drag his ass back into his hole. (The red slum container).<br/>
We've got a few speed boats on at the docks and a couple vehicles up and running if we need them.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
You know one of the alive crew from that one ship we got the other day? Yeah well he escaped while we were having our barbecue. Cheeky bastard didn't even 
wait for us to bring him some scraps. Can't be too far. Find him. Tie him up, and drag him back before the PMC get him.<br/>
Lets be careful not to piss off the civilians here any more than we already have so watch your fire.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The hostage has escaped.
<br/><br/>
ENEMY FORCES
<br/>
Spanish Anti-Piracy forces.
<br/><br/>
FRIENDLY FORCES
<br/>
I think Bahdoon Cabdifitaax is somewhere nearby in his pimp boat... but probably too far to help. He is also probably high and wouldn't take to an AK very well. 
"]];

// ====================================================================================
