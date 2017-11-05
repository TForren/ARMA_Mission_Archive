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
	  3 Platoon, main effort,destroys enemy forces in at Hill 340 and holds. Desired end state is friendly forces on objective, with no enemies in or around the objective.br />
 b. Concept of the operation <br />
   1. Scheme of Maneuver.<br />
	  3nd Platoon maneuvers positions within bounds at discretion of PL. <br />
   2. Fire Support Plan<br />
	  None.<br />
ENDTAB;

NEWTAB("II. Mission:")
3 Platoon seizes strongpoint on Hill 340 to clear avenue of approach of higher elements attacking Guglovo.
ENDTAB;

NEWTAB("I. Situation:")
1. Enemy Forces <br /><br />
 a. Composition <br />
	  Enemy composed of regular conscript Motor Rifle Troops.<br />
 b. Disposition<br />
	In a strongpoint 500m NW of Guglovo as well as in vicinity of Guglovo.	
	Strongpoint includes interlocking bunkers with HMGs with canalising concertina wire obstacles protected by Anti-personnel mines.
	The northern edge of the strongpoint has two firing positions with BMP2s and a SPG-9.
	<br />
 c. Strength, size, morale, equipment of enemy force<br />
	  Section sized presence of normally trained and motivated mechanised infantry in platoon's objective. Company or more IVO Guglovo. 
	  They are mounted in BMP2 IFVs and have access to SPG-9s, and HMGs.<br />
 d. Most Probable Course of Action.<br />
	Conduct simple defense of the cache and surrounding areas.<br />
 e. Most Dangerous Course of Action <br />
	  Ambush friendlies during approach to objective.<br /><br />
2. Friendly Forces<br />
 a. Higher Unit’s Mission<br />
	  Conduct assault of enemy in Guglovo to seize ground as well as push back enemy towards the coast. They will begin assault 20 minutes after H-Hour, whether the strongpoint is cleared or not.<br />
 b. Composition<br />
	  Combined arms mech heavy Combat Team, with attached M1A1 tanks.
 c. Supporting Fires<br />
	Platoon of M109 directed for suppressing fire HE mission on Guglovo. Battalion's 82mm M252 mortar section conducts neutralising mixed HE/Smoke mission on the strongpoint. FIRES BEGIN 5 MINUTES FROM H-HOUR.<br />
3. Attachments / Detachments<br />
Vehicles detached to Company to assist with seizing Guglovo.
ENDTAB;
}; //End of west case

}; //End of switch
NEWTAB("Mission notes:") //This is shown for everyone
tfw no m16a2. make mod pls. Mission by KmO
<br/>
End conditions:<br / >
70% of BLUFOR killed<br / >
80% of REDFOR killed<br / >
Seize the strongpoint for 5 minutes<br />
90 minute time limit br / ><br />
Olsen Framework V2.0
ENDTAB;