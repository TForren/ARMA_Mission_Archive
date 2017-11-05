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
<br/>
<br/>
Special thanks:
<br/>
-My desire to see how brutal the Opfor commander will tear apart the sniper team if they act like Calladooty snipers.
<br/>
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

_sit = player createDiaryRecord ["diary", ["Assets","
<br/>
2x Chinook<br/>
  -Can lift given vehicles. Lifts 2x Anibals
  <br/><br/>
1x Vamtac (M2)<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
1x Vamtac (Mistral AA)<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
1x Vamtac (LAG40)<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
1x RG31 (CROWS M2)<br/>
  -Cargo: Standard+ Infantry Supply
  <br/><br/>
2x Anibal<br/>
  -Cargo: Standard Infantry Supply
  <br/><br/>
"]];
// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
SPECIAL TASKS
<br/>
If we destroy their radar, the commander won't be able to control his units.
<br/>
Capture the Opfor commander for a glorious execution.
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

