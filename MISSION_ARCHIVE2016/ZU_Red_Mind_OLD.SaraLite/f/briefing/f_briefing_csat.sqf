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
Mission by: Hoizen.
<br/>
<br/>
Special Thanks:
<br/>
-My desire to watch you rip apart the sniper team if they act like they're playing Calladooty
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];
// ====================================================================================
_exe = player createDiaryRecord ["diary", ["Important Notes","
<br/>
-I have setup a perimeter of tripwires(not visible) that will trigger the loudspeaker when Blufor are near my HQ. I will know when they are near by the sound of the glorious Red Army Choir.
<br/>
-I can order my troops into the transports by moving them onto the vehicles and disembark them with Transport Unload waypoints or eject everyone with G.
<br/>
-My truck drivers can be stupid and should be given accurate waypoints to avoid colliding with corners.
<br/>
-If I find myself in a dire situation, I have stored explosives in the Office cabinet behind my desk.. If the Americans are to reach my HQ, I can at least make sure they get nothing. Especially not my ZBox 350.
<br/>
<br/>
"]];
// ====================================================================================
_exe = player createDiaryRecord ["diary", ["Available Units","
<br/>
INFANTRY:
<br/>
	2x GPMG Squad
<br/>
	2x Motorized Infantry Squad (Ural)
<br/>
	1x MMG Team
<br/>
	1x RPG Team
<br/>
	1x Spetsnaz Operator Team<br/>
		-Suppressed with AT
<br/>
<br/>
ARMOR:
<br/>
	2x BMD-1
<br/>
	1x Mechanized Infantry (BTR-80)
<br/>
<br/>
AIR:
<br/>
	1x MI-8MTV-3
<br/>
<br/>
"]];

// ====================================================================================
// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
I am the captain now.
<br/><br/>
MOVEMENT PLAN
<br/>
---------
<br/><br/>
FIRE SUPPORT PLAN
<br/>
---------
<br/><br/>
SPECIAL TASKS
<br/>
---------
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Defend myself from Blufor forces coming from the Northern Airfield.
<br/>
I should also keep in mind that if my HQ's radar is destroyed, then I will be completely cut off from my men and I will have to rely on the gun in my hands for protection. 
<br/>
"]];

// ====================================================================================
// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
I, Limonov Nikolayevich, have led my men to this island to conquer. The Americans do not believe in my power and wish to strike me down. I shall show them the true might
of Russian Strategy.
<br/><br/>
ENEMY FORCES
<br/>
Platoon of American Infantry. Most likely mounted and with air transport.
<br/>
Overwhelming air defence at the US airfield.
<br/>
<br/>

FRIENDLY FORCES
<br/>
See: Available Units
<br/>
<br/>
"]];


