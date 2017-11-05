#define NEWTAB(NAME) \
player createDiaryRecord ["Diary",[NAME,"

#define ENDTAB \
"]];

//See "VI. Mission notes:" for inspiration about briefing syntax
//"<br />" makes line switches

waitUntil {!(isNull player)};//This is needed for JIP compatibility since this code is spawned not called

NEWTAB("Game Mastering")
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

NEWTAB("VI. Mission notes:")
Mission by Hoizen.<br />
Mission ends when IED workshop destroyed, enemy armoured assets destroyed, and HVT captured or killed<br />
<br />
This mission uses ALiVE Player Logistics. Players may load and unload sandbags into vehicles via the scroll menu. Activate these features by hitting H and hitting Activate<br />
<br />
This mission also uses AGM allowing ammo boxes to be loaded into vehicles via the AGM interaction menu.
<br />
ENDTAB;



switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
ENDTAB;

NEWTAB("IV. Service Support:")
-1x HEMTT Ammo<br />
-1x HEMTT Fuel<br />
-1x HEMTT Repair<br />
-2x TOW HMMWV <br />
-1x ECV HMMWV <br />
-3x M2 MRAP <br />
-1x LAV-25 <br />
-1x A-100 <br />

-4x Basic Ammo Supply Crate<br />
-2x AT4 Supply Crate<br />
-2x MAAWs/Explosives Supply Crate
ENDTAB;

NEWTAB("III. Execution:")
Recommended to eliminate the enemy convoy before it reaches the arms dealer AO.<br />
ENDTAB;

NEWTAB("II. Mission:")
-Destroy IED workshop<br />
-Destroy arms dealer's armoured assets<br />
-Locate and Secure the HVT Ratizabad
ENDTAB;

player createDiaryRecord["Diary", ["C. HVT Images","<img image='hvt3.paa'/>"]];

NEWTAB("B. Friendly Forces:")
-1x Platoon HQ<br />
-2x US Rifle Squad<br />
-1x US Weapons Squad<br />
-1x US Mounted Anti-Tank Attachment(2x TOW HMMWV)<br />
-1x US LAV-25 RECCE Element<br />
-US CAS A-100 
ENDTAB;

NEWTAB("A. Enemy Forces:")
-Heavy insurgent activity in and around the arms dealer's workshop SE of Zavarak<br />
-Motorized Infantry convoy with heavy armour heading to the arms dealer's workshop from the west following the MSR.<br />
-Confirmed heavy armour transporting/guarding the HVT Ratizabad in Ravanay<br />
-Expect Static weapons and various foot and vehicle patrols across the AO
ENDTAB;

NEWTAB("I. Situation:")
IED threats and enemy armour in the AO has been increasing heavily in the past few weeks. Satellite imaging has confirmed the location of an outdoor workstation being
used to create large quantities of IEDs and distribute them among local insurgents. We also have confirmation of a local civilian gas station that 
has been converted into some kind of arms dealer's workshop refurbishing old soviet BMP1s and heavy armor. To top it all off, we have received photographic
evidence of a high value target by the name of Ratizabad making purchases from the arms dealer's workshop. It looks like Ratizabad headed down to Ravanay 
just after making a few purchases of armour from the arms dealer. With static weapons setup in the area, we can assume he doesn't plan on going anywhere soon.
Blufor must destroy both the IED and arms dealer workshops as well as capture the HVT alive and bring him to the HVT drop off zone at the airfield. Be wary of the enemy convoy
 with confirmed heavy armour that was spotted this morning coming into the AO from the West on the marked MSR. We have no confirmation of their destination but we can assume they are headed to 
the arms dealer.
ENDTAB;


task1 = player createSimpleTask ["Destroy Insurgent Assets"];
task1 setSimpleTaskDescription ["Destroy the armoured assets located in the arms dealer's workshop at 106110","Destroy Assets",""];
task1 setTaskState "Assigned";
player setCurrentTask task1;

task2 = player createSimpleTask ["Destroy IED Workshop"];
task2 setSimpleTaskDescription ["Destroy the IED workshop at 102108.(Destroy ammo box)","Destroy IED Workshop",""];
task2 setTaskState "Assigned";

task3 = player createSimpleTask ["Secure HVT"];
task3 setSimpleTaskDescription ["Locate and secure the HVT Ratizabad somewhere in Ravanay. The HVT must be transported back to the US Airfield to the HVT drop off point. ","Capture HVT",""];
task3 setTaskState "Assigned";

task4 = player createSimpleTask ["Extract"];
task4 setSimpleTaskDescription ["Once all objectives are complete, all Blufor must RTB. ","Extract",""];
task4 setTaskState "Assigned";


};

case EAST: { //If player is EAST he receives this briefing


NEWTAB("V. Command & Signal:")
Group Leader's orders.
ENDTAB;

NEWTAB("IV. Service Support:")
Grab your gear from the truck.
ENDTAB;

NEWTAB("III. Execution:")
Group Leader's discretion.
ENDTAB;

NEWTAB("II. Mission:")
Keep blufor away from the objectives until help arrives.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
Reinforcements on their way. They will take about half an hour to get here. 
ENDTAB;

NEWTAB("A. Enemy Forces:")
Blufor Divers.
ENDTAB;

NEWTAB("I. Situation:")
The boss wants this place locked down. To make sure we do it right, he sent his son Alzaback Heuler to watch over us. The guy has an ego larger
than his head so he's got music blaring in his earbuds and think he doesn't need to carry. We need to make sure nothing happens to him or Mr. Heuler will have our heads.
ENDTAB;
};
};