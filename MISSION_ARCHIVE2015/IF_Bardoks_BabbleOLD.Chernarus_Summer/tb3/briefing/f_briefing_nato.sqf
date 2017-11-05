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
Mission by Hoizen. 
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
<br/> Channel 01, 31.0 - 1 Platoon, 1 CDF Infantry Squad
<br/> Channel 02, 32.0 - 1 Platoon, 2 CDF Infantry Squad
<br/> Channel 03, 33.0 - 1 Platoon, 3 CDF Infantry Squad
<br/> Channel 05, 35.0 - 1 Platoon, HQ Element
<br/>Long Range:
<br/> Channel 01, 51.0 - Platoon Command Net
<br/>
"]];

// ====================================================================================

// NOTES: Assets
// The code below creates the Assets sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Assets","
<br/>
1x Mi-8<br/>
2x Transport Truck<br/>
1x UAZ<br/>
1x Repair Truck<br/>
1x rearm Truck<br/>
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Locate and neutralize at least one of the Guerrilla camps in the area. 
<br/>

"]];
// ====================================================================================

// NOTES: Commanders 
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Commander's Notes","
<br/>
1. Eliminating the Guerrillas found in the AO will not solve the infestation. CDF must destroy them at the source; the camps. Eliminating Guerrillas will force them
to regroup at their camps which could help pin point their locations.<br/>
<br/>
2. There are plenty of Guerrillas out and about in the AO. hitting contact is not necessarily finding a camp.
<br/><br/>
3. It is recommended to use both infantry and the mi-8 to hunt for camps simultaneously.
<br/>

"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
ChDKZ Guerrillas have been infesting the area of Novy Lug ambushing CDF supply convoys moving between the two Northern airfields. CDF forces are to locate and neutralize the Guerrilla camps in the designated area
to lessen the Guerrilla activity. Note that eliminating ChDKZ fighters in the area is not enough. They will  simply regroup at the camps. CDF forces must destroy the sources of the Guerrillas else face continued enemy
regroup and reinforcement.
<br/><br/>
ENEMY FORCES
<br/>
2x ChDKZ camps guarded with bands of fighters. Large patrols and possible armed/unarmed vehicles patroling the area. 
<br/><br/>
FRIENDLY FORCES
<br/>
Base Defense Forces at both airfields. Helicopter repair, rearm, and refuel available at both airfields.
N/A
"]];

// ====================================================================================