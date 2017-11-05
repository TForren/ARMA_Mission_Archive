#include "core\briefingCore.sqf"

switch (side player) do {

case west: {

NEWTAB("TASK ORGANIZATION")
	<br/>Bravo Company
	<br/>Company HQ located at <marker name='bcoy'>0342 1130</marker>.
	<br/>21 Platoon located at <marker name='21plt'>0331 1071</marker>.
	<br/>22 Platoon (Your Platoon) located at <marker name='22plt'>0409 1259</marker>.
	<br/>23 Platoon located at <marker name='23plt'>0394 1113</marker>.
	<br/>
	<br/>FOB located at <marker name='fob'>0341 1283</marker>.
ENDTAB;

NEWTAB("1.  SITUATION - a.  Enemy forces")
	<br/>(1)  Disposition, Composition, and Strength
	<br/>
	<br/>(a)  Disposition:
	<br/>
	<br/>After losing the key terrain of Windy Mountain, the enemy has begun attempts at slowing our advance through the woodlands in order to delay our capture of vital MSRs. They are reportedly attempting to bring in a Mechanized Infantry Battalion in order to halt our advance to the local airfield via the northern highlands. 34 Mechanized Combat Brigade has begun advancing through the central highlands in order to secure the local airfield. Expect entrenched enemy positions and dedicated resistance.
	<br/>
	<br/>
	<br/>(b)  Composition:
	<br/>
	<br/>Enemy forces consist of:
	<br/>
	<br/>Russian regular light infantry. Motivated, experienced, well-trained soldiers, they are well-equipped but have very limited vehicle support and little to no combat vehicles. 
	<br/>
	<br/>
	<br/>(c)  Strength:
	<br/>
	<br/>Approx. one under-strength Company, around 100 troops.
	<br/>
	<br/>
	<br/>(2)  Capabilities:
	<br/>
	<br/>Maneuver: Moderate, they have no combat vehicles for transport, but are capable of moving swiftly over large distances on foot.
	<br/>
	<br/>Fire Support: The enemy has medium machineguns, rocket propelled grenades, anti-tank weaponry, and possible artillery support.
	<br/>
	<br/>Intelligence: Limited, the local populace appears to be against the occupation by Russian forces.
	<br/>
	<br/>Command and Control: The enemy has a high degree of command and control over their forces, expect flanking maneuvers and defensive strategies.
	<br/>
	<br/>(3)  Most Probable Course of Action: Enemy is likely to engage friendly forces with small arms fire and attempt to fix, flank, and destroy.
	<br/>
	<br/>(4)  Most Dangerous Course of Action: Enemy uses machineguns and rocket propelled grenades to inflict casualties and pin friendly forces and flank them.
ENDTAB;

NEWTAB("1.  SITUATION - b.  Friendly Forces")
	<br/>b.  Friendly Forces
	<br/>
	<br/>After returning to the line from a brief rest, Bravo Company is tasked with cleaning up the terrain surrounding Windy Mountain then moving to secure a vital MSR at grid reference 0729 0912 and hold it against counter-attacks. 22 Platoon is tasked with finding and destroying enemy mortar teams that have been harrassing our forces while securing two pieces of key terrain.
	<br/>
	<br/>
	<br/>(1)  Higher Unit's Mission
	<br/>
	<br/>Bravo Company is to secure the MSR at grid reference 0729 0912 and hold it against counter-attacks no later than 18:00 06 JUL 09.
ENDTAB;

NEWTAB("2.  MISSION")
	<br/>22 Platoon is to secure <marker name='obj1_b'>Objective 1</marker>, and attempt to destroy the mortar team in the area, then move to secure <marker name='obj2_b'>Objective 2</marker>, and attempt to destroy the mortar team in the area, no later than 07:00.
ENDTAB;

NEWTAB("3.  EXECUTION")
		<br/>Intent Statement: It is my intent that the mission is completed with minimized friendly casualties, while maintaining speed and momentum, and securing both objectives.
		<br/>
		<br/>
		<br/>a.  Concept of the Operation
		<br/>
		22 Platoon will advance to contact towards <marker name='obj1_b'>Objective 1</marker> and secure it, attempting to destroy the enemy mortar team in the area. 22 Platoon will then reform and advance to contact towards <marker name='obj2_b'>Objective 2</marker> and secure it, attempting to destroy the second enemy mortar team in the area.
		<br/>
		<br/>
		<br/>(1)  Maneuver
		<br/>
		<br/>Platoon commander's discretion.
		<br/>
		<br/>
		<br/>(2)  Fires
		<br/>
		Supporting fires are unavailable at this time.
		<br/>
		<br/>
		<br/>b.  Tasks to Maneuver Units
		<br/>
		<br/> 1. Secure <marker name='obj1_b'>Objective 1</marker>, attempt to destroy mortar team.
		<br/>
		<br/> 2. Secure <marker name='obj2_b'>Objective 2</marker>, attempt to destroy mortar team.
ENDTAB;

NEWTAB("4.  SERVICE SUPPORT")
	<br/>a.  General. No resupply for 24 hours. FOB has ammo and medical supplies.
ENDTAB;

NEWTAB("5.  COMMAND AND SIGNAL")
		<br/>a.  Command
		<br/>
		<br/>Bravo Company HQ located at <marker name='bcoy'>0342 1130</marker>.
		<br/>
		<br/>
		<br/>b.  Signal
		<br/>
		<br/>Callsigns
		<br/>
		<br/> 22 Alpha - 22 Platoon 1 Section
		<br/>
		<br/> 22 Bravo - 22 Platoon 2 Section
		<br/>
		<br/> 22 Charlie - 22 Platoon 3 Section
		<br/>
		<br/> 22 Delta - 22 Platoon Weapons Detachment
		<br/>
		<br/> 22 - 22 Platoon HQ
		<br/>
		<br/> 2 - Bravo Company HQ
ENDTAB;
	
NEWTAB("OTHER NOTES")
	<br/>
	<br/>Respawn at FOB. Anyone can call objectives as complete via self-interact menu when within 25m of the objectives. Mission will end within 60 seconds of both objectives being completed.
	<br/>
	<br/>Other stuff:
	<br/> ----	Respawn: Yes
	<br/> ----	Time Limit: 120 minutes
	<br/> ----	JIP: Teleport to Squad Leader
	<br/> ----	Flight Model: N/A
	<br/> ----  End Conditions: Completion of objective with 80% casualties or fewer.
	<br/> ----  Auto Fail Condition: N/A
ENDTAB;

};

};

NEWTAB("Game Mastering")
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE