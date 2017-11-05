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
Mission By Hoizen.
"]];


// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Notes","
<br/>Mission Has RESPAWN! You will respawn at a remote Militia camp. There, you can use the teleportation hookahs to teleport to one of the three Hideouts.
<br/><br/>Vehicles RESAPWN if destroyed or deserted.
<br/><br/>Mission ends when all three water barrels on the truck are dropped off at the hideouts.
<br/><br/>
To drop off water, bring the water truck close (within 10m) to the militia flag in each hideout. Give it at least 10 seconds to automatically drop off.

"]];

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
First, capture the water truck by eliminating the remaining US forces protecting it. Second, deliever barrels of water to the three Militia Hideouts.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
We have successfully ambushed a US water supply convoy and are currently in the process of hijacking the water supply truck.
We must take the truck to all three of our local hide outs to drop off the stolen water. 
<br/><br/>
ENEMY FORCES
<br/>
US Task Force that will attempt to recapture the water supply truck.
<br/><br/>
FRIENDLY FORCES
<br/>
Hideout defense forces.
"]];

// ====================================================================================
