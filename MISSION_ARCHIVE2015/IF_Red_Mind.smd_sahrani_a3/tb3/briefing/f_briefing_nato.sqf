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
"]];

// ====================================================================================

_sit = player createDiaryRecord ["diary", ["Assets","
<br/>
1x Chinook<br/>
  <br/><br/>
1x Blackhawk<br/>
  <br/><br/>
2x Littlebird<br/>
  <br/><br/>
2x MRAP (M2)<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
2x HMMWV (M2)<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
1x HMMWV (Mk19)<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
3x HMMWV (unarmed)<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
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
<br/> Channel 02, 32.0 - 1 Platoon, 2 Rifle Squad
<br/> Channel 03, 33.0 - 1 Platoon, 1 Weapons Team 
<br/> Channel 04, 34.0 - 1 Platoon, 1 Pilots
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
SPECIAL TASKS
<br/>
1. If we destroy their radar, the commander won't be able to control his units.
<br/>
2. Capture the Opfor commander for a glorious execution.
<br/>
<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Fight through Russian defensive forces and eliminate the Commander.
<br/>
<br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
A Russian MSV Company Commander has set up a HQ in Tiberia. No word on the Commander's intent but he certainly isn't welcome on this Island.
Blufor forces are to deploy from the Northern Airfield to eliminate the Commander. 
<br/><br/>
ENEMY FORCES
<br/>
Platoon size+ with attached mechanized infantry. Reports of armed Mi-8s in the AO. 

<br/><br/>

FRIENDLY FORCES
<br/>
1x US Infantry Squad
<br/>
1x MMG Team
<br/>
1x Sniper Recon Team
<br/>
1x HAT Team
<br/>
1x Pilot/Copilot
<br/>
Mistral Base Defences
"]];
// ====================================================================================

