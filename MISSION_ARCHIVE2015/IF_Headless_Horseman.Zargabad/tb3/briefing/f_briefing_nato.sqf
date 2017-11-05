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

_cre = player createDiaryRecord ["diary", ["Notes and Credits","
<br/>
BLUFOR
<br/>
Mission by Hoizen.<br/>
<br/><br/>
Special thanks:<br/>
-Our friendly neighborhood headless client
<br/><br/>
"]];

// ====================================================================================

//ASSETS
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Assets","
<br/>
Vehicles:<br/>
2x HMMWV (M2) <br/>
1x HMMWV (Mk19) <br/>
3x HMMWV (open) <br/>
3x HMMWV (closed) <br/>
<br/>
Static Weapons:<br/>
2x M2 Tripod <br/>
2x M2 Minitripod <br/>
1x Mk19 Minitripod <br/>
1x TOW Tripod <br/>
<br/>
Fortifications + Ammo:<br/>
A ton of sandbag crates<br/>
6x Ammo Crates<br/>


"]];// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Command and Signal","
<br/>
Signal
<br/>
<br/>
Shortwave:
<br/>
CH 5, 35.0 - 1'0 Platoon HQ<br/>
CH 1, 31.0 - 1'1 Rifle Squad<br/>
CH 2, 32.0 - 1'2 Weapons Squad<br/>
CH 3, 33.0 - 2'1 Crew Served Weapons Teams<br/>
<br/>
Longwave:
<br/>
CH 1, 41.0 - Platoon 1 Squad Lead Channel<br/>
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Setup a fortified position to counter the Russian advance. Push up as far as you can to allow potential retreat back to the airfield
<br/><br/>
MOVEMENT PLAN
<br/>
armed and unarmed HMMWVs provided for transport.
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A
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
Protect the Airfield from the Russian advance.<br/>
Russian Infantry will be on scene within 10-15minutes.<br/>
Expect armor by 15-20 minutes <br/>
<br/>

"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Armed Forces of the Russian Federation have begun their campaign on the Takistani regions and are moving in to capture the Takistan Capital of Zargabad. With the US Army currently
in control of the Zargabad airfield, they must defend from the Russian onslaught. 
<br/><br/>
ENEMY FORCES
<br/>
1x Company of Russian Infantry <br/>
3-4x BTR Infantry Squad attachments<br/>
1x BMP Group with potential heavy armor.<br/><br/>
All Enemy Forces are well armed and organized. Expect early arrivals within 15 minutes trying to secure a foothold for the armor to move in next.<br/>
<br/><br/>
FRIENDLY FORCES
<br/>
2x Airforce Security Forces Teams<br/>
"]];

// ====================================================================================