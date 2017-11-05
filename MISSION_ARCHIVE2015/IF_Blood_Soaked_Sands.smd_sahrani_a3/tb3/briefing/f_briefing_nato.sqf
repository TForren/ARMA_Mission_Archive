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
Mission by Hoizen
<br/><br/>
"]];

// ====================================================================================

// NOTES: NOTES
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Notes","
<br/>
-Mission has a ~1 hour time limit. <br/>
"]];
// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Assets","
<br/>
-4x Speed Boats (Armed)<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
With only a limited time to capture the island, SPECTRE team and the main force must attempt to complete their objectives simultaneously. 
<br/><br/>
MOVEMENT PLAN
<br/>
Main Force:<br/>
Beach assault via speed boat to the island of Rahmandi.<br/>
<br/>
SPECTRE Team:<br/>
Move close to the coast of the hind staging area and swim to allow infiltration. Someone may notice the boat motor if too close. 
<br/><br/>
SPECIAL TASKS
<br/>
SPECTRE Team needs to survive and exfil.
"]];
// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission (SPECTRE TEAM)","
<br/>
Infiltrate the Hind Staging Area and neutralize both helicopters in any way possible. Kill the pilots, destroy the helicopters, etc; anything that will keep those choppers from supporting Rahmandi.
<br/>
<br/>
Be aware that alerting the patrols will result in heavy reinforcements from the North. If that happens, you will only have a short time to complete your objective before you are overwelmed.
"]];
// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission (MAIN FORCE)","
<br/>
Capture the island of Rahamndi by clearing the small village as well as destroying any supply trucks found.
"]];


// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
US Forces need to capture Rahmandi to stage future operations against the Southern parts of Sahrani. The Russian VDV have setup a company-sized cache of supplies on the island. Blufor must
flush out the VDV from the small village on the island and destroy all supply/fuel trucks they can find.
<br/><br/>
Unfortunately, the VDV stationed on the island are not the only Russians in the area. 2x mi-24 Hinds are on standby on Southern Sahrani ready to reinforce the island. As Blufor have minimal AA capability,
HQ will be deploying SPECTRE team to infiltrate the hind staging area to neutralize the attack choppers before they get a chance to take off. 
<br/><br/>
ENEMY FORCES
<br/>
2x VDV Platoons. Possible airborne armor and defensive fortifications. 
<br/>
"]];

// ====================================================================================