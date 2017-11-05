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
Hoizen

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
<br/> Channel 01, 51.0 - platoon Command Net
<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Storm the makeshift town and destroy the weapons cache using the raven for recon
<br/><br/>
MOVEMENT PLAN
<br/>
Move by MRAP and/or HMMWVs
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A
<br/>

"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
<br/>1x MRAP (M2)
<br/>1x HMMWV (M2)
<br/>1x HMMWV (Mk19)
<br/>2x HMMWV (unarmed)
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Destroy the explosives cache in the unknown town.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Local Afghan militia fighters have recently stolen 6x Russian experimental explosives. As we cannot allow either side to have them, we must destroy them.
<br/><br/>
ENEMY FORCES
<br/>
60-80 militia fighters with small arms and technicals with reaction reinforcements on standby. The use of IEDs should be expected.
<br/><br/>
FRIENDLY FORCES
<br/>
FOB Defence Personnel.
"]];

// ====================================================================================