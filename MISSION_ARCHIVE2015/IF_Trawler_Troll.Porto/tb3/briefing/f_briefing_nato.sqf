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

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Assets","
<br/>
-1x MH-6 Little Bird (skids)<br/>
-2x Speed Boats<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Priority objective is to rescue the Hostage. Wiping out the pirates takes second.
<br/><br/>
MOVEMENT PLAN
<br/>
Rescue teams may chose to go by boat (North side of staging island) or by the littlebird.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A. We cannot risk civilian casualties.
<br/><br/>
SPECIAL TASKS
<br/>
N/A
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
1900 HRS <br/>
HOSTAGE SITUATION <br/>
SOMALIAN PIRATE AGGRESSION <br/>
Pirates infesting the Somalian waters have hijacked a commercial fishing trawler and have taken the crew hostage. One of the hostages has escaped and 
is roaming the island looking for a way out. Spanish Rescue Forces will move in to secure the Hostage and get him off the pirate infested island. Our
only image of the hostage we are looking for is an old crew photo. Luckily, since he is a sailor, he probably hasn't changed his clothes since this picture was taken
sometime before colour was invented.
<img image='hostage.jpg'/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
The island is populated. Watch your fire. 
<br/><br/>
ENEMY FORCES
<br/>
Groups of pirates. No exact numbers.
<br/><br/>
FRIENDLY FORCES
<br/>
Hostage Rescue Teams and Littlebird pilots.
"]];

// ====================================================================================