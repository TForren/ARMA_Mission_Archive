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
-Zenatsu's idea to turn the Littlebirds into Sleighs<br/>
-My desire to turn everything into an ARMA Mission<br/>
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

//ASSETS
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Assets","
<br/>
2x MH-6 Little birds <br/>
	-Rigged up as pseudo Santa Sleighs. Each have 3x M112 Demo Charges
"]];// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Command and Signal","
<br/>
Signal
<br/>
<br/>
CH 1, 31.0 - 1'1 Santa's Replacement Squad<br/>
CH 2, 32.0 - 1'2 Littlebird sleigh pilots<br/>
CH 3, 33.0 - 1'3 Auxiliary Engineers
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
COMMANDER'S INTENT
<br/>
Destroy the three insurgent hideouts with Santa's M112 Demo Charges and extract in 40 minutes
<br/><br/>
MOVEMENT PLAN
<br/>
High Speed No Drag Littlebird insertion. 
<br/><br/>
FIRE SUPPORT PLAN
<br/>
N/A
<br/><br/>
SPECIAL TASKS
<br/>
say 'This ones for Santa!' before touching off the satchel charges.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Santa's Replacement Squad will destroy the three remaining Insurgent Stash locations before night's end(40m time limit) for Santa.
<br/>
<br/>
All Blufor must extract from the AO upon completion. 

"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
December 24, 2014 2310 hrs - Santa's Sleigh was shot down by an insurgent MANPAD over the Zarabad province of the Takistani region. 9th IFID QRF forces have 
recovered Santa's disabled sleigh and we have been informed by Santa himself that he still has three more houses to visit before night's end. He says he was 
saving the best for last. According to HQ, these three houses are known Takistani Insurgent hideouts. After confirming this with Santa he reached into his sack 
and pulled out three M112 Demolition Charges. The 9th IFID Task Force Helix now dubbed 'Santa's Replacement team' are to finish the job before 2400 hrs. 
<br/><br/>
ENEMY FORCES
<br/>
10-man pockets of insurgents concentrated around the hideouts. Various 2-man teams scattered across the entire AO.<br/>
Enemy forces known to carry small arms with little anti-tank/air capabilities if any at all.<br/>
No vehicle threats apart from possible unarmed transports.
<br/><br/>
FRIENDLY FORCES
<br/>
1x 'Santa's Replacement' squad <br/>
2x MH-6 little birds<br/>
1x Santa<br/>
8x Reindeer Goats
"]];

// ====================================================================================