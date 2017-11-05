#include "core\briefingCore.sqf" //DO NOT REMOVE
#define NEWTAB(NAME) player createDiaryRecord ["Diary",[NAME,"
#define ENDTAB "]]
	
switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("V. Command & Signal:")
1. Command<br />
 a. Higher Unit’s CP<br />
    C Company HQ - 091080<br />
2. Signal<br />
 a. Frequencies<br />
  Short Range:<br />
Channel 1 - 2401.0 MHz - 3 Platoon, 1 Squad<br />
Channel 2 - 2402.0 MHz - 3 Platoon, 3 Squad<br />
Channel 3 - 2403.0 MHz - 3 Platoon, 3 Squad<br />
Channel 4 - 2404.0 MHz - 3 Platoon, HQ Squad<br />

Long Range:<br />
Channel 1 - 36.625 MHz - Platoon Net
ENDTAB;

NEWTAB("IV. Service Support:")
1. General<br />
 a. Resupply Points, locations for unit resupply.<br />
	None at the moment.
 b. Casualty and Damaged Equipment<br />
	  Leader's discretion.<br />
2. Material and Services<br />
 a. Medical Evacuation, methods for handling of casualties.<br />
	  Currently none. 
ENDTAB;

NEWTAB("III. Execution:")
1. Concept of the Operation<br />
 a. Commander's intent<br />
	  3 Platoon, main effort,destroys enemy forces in the area and secures the cache. Desired end state is friendly forces on objective, where they'll wait for engineers to arrive and prep the weapons for destruction once clear.<br />
 b. Concept of the operation <br />
   1. Scheme of Maneuver.<br />
	  3nd Platoon maneuvers positions within bounds at discretion of PL. <br />
   2. Fire Support Plan<br />
	  None.<br />
ENDTAB;

NEWTAB("II. Mission:")
3 Platoon seizes weapon cache located vicinity of Grishino to 
ENDTAB;

NEWTAB("I. Situation:")
1. Enemy Forces <br /><br />
 a. Composition <br />
	  Enemy composed of irregular troops from surrounding villages.<br />
 b. Disposition<br />
	In and around the cache. Patrols are to be expected. It is possible they will attempt to reinforce the cache when it is attacked<br />
 c. Strength, size, morale, equipment of enemy force<br />
	  Section sized enemy presence of low trained, moderately motivated insurgents. They have access to mostly Eastern pattern weapons.<br />
 d. Most Probable Course of Action.<br />
	Conduct simple defense of the cache and surrounding areas.<br />
 e. Most Dangerous Course of Action <br />
	  Ambush friendlies during approach to objective.<br /><br />
2. Friendly Forces<br />
 a. Higher Unit’s Mission<br />
	  Conduct counterinsurgency operations in Northern Chernarus to destroy insurgenct cells in this area.<br />
 b. Composition<br />
		A Section, 3 Platoon has a blocking position 1km east of the cache, blocking the suspected axis of advance of the QRF.
 c. Supporting Fires<br />
	None.<br />
3. Attachments / Detachments<br />
B Section detached for Vehicle Checkpoint duty.
ENDTAB;
NEWTAB("BACKSTORY")
Yeah, nice try :)
ENDTAB;
}; //End of west case

}; //End of switch
NEWTAB("Mission notes:") //This is shown for everyone
tfw no m16a2. make mod pls. Mission by KmO
<br/>
End conditions:<br / >
70% of BLUFOR killed<br / >
80% of REDFOR killed<br / >
Seize the cache for 2 minutes<br />
90 minute time limit br / ><br />
Olsen Framework V2.0
ENDTAB;