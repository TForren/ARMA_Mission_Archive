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
Mission By: Hoizen.
"]];

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Notes","
<br/>Mission has RESPAWN! You will respawn back at the FOB.
<br/>Vehicles RESPAWN if destroyed or deserted. 
<br/>Mission Ends when Blufor bring the truck to the dropoff marker.
<br/>
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
<br/>Short Range (PRC152):
<br/> Channel 01, 31.0 - 1 Platoon, 1 Rifle Squad
<br/> Channel 02, 32.0 - 1 Platoon, 2 Rifle Squad 
<br/> Channel 03, 33.0 - 1 Platoon, Pilots
<br/> Channel 05, 35.0 - 1 Platoon, HQ Element
<br/>
<br/>Long Range:
<br/> Channel 01, 51.0 - Company Command Net
<br/>
"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
<br/>2x MH-6 Little Bird
<br/>1x UH-60 Blackhawk
<br/>2x M2 HMMWV
<br/>1x Mk19 HMMWV
<br/>2x M2 MRAP
<br/>3x Unarmed HMMWV
<br/>1x Raven UAV(from Raven Operator Slot)
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Recapture the water supply truck and return it to the FOB.
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
A US FOB in Afghanistan has run dangerously low on water and requested a water resupply. During the water supply convoy's approach to the FOB, it
was ambushed by local militia forces.
<br/><br/>
ENEMY FORCES
<br/>
Pockets of Militia fighters across the area of Kunduz and a warband of ~15 fighters responsible for capturing the water truck.
<br/><br/>
FRIENDLY FORCES
<br/>
FOB Defense Forces.
"]];

// ====================================================================================