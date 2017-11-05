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
	  3 Platoon, main effort, destroys enemy forces in the objective. Desired end state is friendly forces on objective, with no enemy forces in or around the town.<br />
 b. Concept of the operation <br />
   1. Scheme of Maneuver.<br />
	  3nd Platoon maneuvers positions within bounds at discretion of PL. <br />
   2. Fire Support Plan<br />
	  None.<br />
ENDTAB;

NEWTAB("II. Mission:")
3 Platoon clears Gvozdno of insurgents to combat enemy insurgency in the region.
ENDTAB;

NEWTAB("I. Situation:")
1. Enemy Forces <br /><br />
 a. Composition <br />
	  Enemy composed of irregular troops from surrounding villages.<br />
 b. Disposition<br />
	In and around the village.<br />
 c. Strength, size, morale, equipment of enemy force<br />
	  Section to platoon sized enemy presence of low trained, moderately motivated insurgents. They have access to mostly Eastern pattern weapons and a few APCs.<br />
 d. Most Probable Course of Action.<br />
	Conduct simple defense of the village and surrounding areas.<br />
 e. Most Dangerous Course of Action <br />
	  Ambush friendlies during approach to objective.<br /><br />
2. Friendly Forces<br />
 a. Higher Unit’s Mission<br />
	  Conduct counterinsurgency operations in Northern Chernarus to destroy insurgent cells in this area.<br />
 b. Composition<br />
		3 Platoon BFVs have set SBF positions north of the objective, providing overwatch for dismounted elements.
 c. Supporting Fires<br />
	None.<br />
3. Attachments / Detachments<br />
BFVs are under PSG command.
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
90 minute time limit br / ><br />
Olsen Framework V2.0
ENDTAB;