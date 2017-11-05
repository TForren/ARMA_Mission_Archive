#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Drug cartel mercenaries have setup in the small port village of Balavu. The merc operations must be disrupted by the BLUFOR special forces.<br/>
<br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Pre-Modern Russian weaponry including AKMs, PKM Machine Guns, and RPGs.<br/>
The enemy will be wearing guerrilla uniform with limited protective equipment. No NVGs<br/>
<br/>
Strength:<br/>
~15 Russian Mercenaries.
<br/>
<br/>
Location:<br/>
Balavu.
<br/>
<br/>
MLCOA:<br/>
Mercenaries will most likely setup in defensive positions.
<br/>
<br/>
MDCOA:<br/>
Mercenaries may predict the BLUFOR point of entry and cause heavy casualties.
<br/>
<br/>
Defensive Fires:<br/>
Unknown.<br/>
<br/>
Airthreat:<br/>
N/A.<br/>
<br/>
Morale:<br/>
High<br/>
<br/>
CBRN Threat:<br/>
The Enemy pose no CBRN threat.<br/>
<br/>
Future intentions:<br/>
To defend their assigned tasks.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
US Special Forces staging at [<marker name='blu'>LC034079</marker>]<br/>
<br/>
b. Higher Units Mission:<br/>
N/A
<br/><br/>
c. Composition:<br/>
2x Special Forces Strike Teams (1x reinforcement overflow team)
<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
N/A
<br/>
<br/>
f. Assets:
<br/>-4x Zodiac boats
ENDTAB;

NEWTAB("II. Mission:")
Infiltrate this area and complete 3 of the following objectives:
<br/>- Collect sensitive data from the <marker name='Laptop'>Laptop</marker>
<br/>- Destroy the <marker name='Technical'>Technical</marker>
<br/>- Destroy the <marker name='Weapons'>FIM-92 Stinger crates</marker>
<br/>- Destroy the <marker name='boats'>Drug Boats</marker>
<br/>- Eliminate the <marker name='hvt'>HVT</marker>
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
BLUFOR Strike Teams will stage at the SOC and will raid the village by boat and/or underwater operation.
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
Strike Teams will decide to move by assault boat or by scuba delivery vehicle.
Further movement will be as per PLT LDR's Discretion<br/>
<br/>
c. Main Effort<br/>
Acomplish 3 out of the 5 given objectives.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
USMC Forces will launch the operation at 0525hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.<br/>
<br/>	
ENDTAB;

NEWTAB("V. Command & Signal:")

i) Chain of Command:<br/>
No Change.<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
Strike Team 1 - Channel 1<br/>
Strike Team 2 - Channel 2<br/>

<br/>

ENDTAB;


NEWTAB("Tactical Notes:")
<br/>
Should thy will it, all BLUFOR can swap out their normal gear for scuba gear on the SOC (scroll wheel).<br/>
All lights can be shot out including the ones placed by OPFOR.
ENDTAB;


}; //End of west case

case east: { //If player is east he receives this briefing

NEWTAB("I. Situation:")
<br/>
The boss wants this place locked down.
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
2x Strike Teams of BLUFOR Special Forces.
ENDTAB;

NEWTAB("B. Friendly Forces:")
Reinforcements from the local militia on their way. They will take about 50 minutes to get here. 

ENDTAB;

NEWTAB("II. Mission:")
Keep US Forces away from the objectives until help arrives.<br/> 
ENDTAB;

NEWTAB("III. Tactical Notes:")
Engineers can place 6 sandbag walls, 4 flood lights, and 6 barbed wire fences. <br/>
<br/>
This cannot be placed after the setup timer.
<br/>
<br/>
Heavy armor is in the crate next to HQ. OPFOR have 4 armored vests and 6 helmets to give out.<br/>
<br/>
The opfor strength is in numbers and light. Keeping your flashlight off does not hide you from bluefor. They know where you are all the time anyway. Having your flashlight off will just get you friendly fired. If there is any suspected blufor, light it up with flares and lights and swarm it. 
<br/>
<br/>
Spare ammo, flares, and rpgs can be found in the trucks or in weapons crates.
ENDTAB;

}; //End of east case


}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>10 minute setup timer.
<br/>Time Limit is 60 minutes.
<br/>OPFOR is notified when an objective is completed either by the subtle explosions or by hint.
<br/>
<br/>Mission ends when BLUFOR finishes 3 objectives (and survives for 1 minute after).
<br/>Mission ends when BLUFOR are wiped out.
<br/>Mission ends when OPFOR are wiped out.
<br/>Mission by Hoizen.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

//Used to call the end mission.
_adminState = call BIS_fnc_admin;
_uid = getPlayerUID player;

if (_adminState != 0 || _uid == "76561198013584551" || _uid == "76561197988578942") then {
	NEWTAB("Mission Calling") 
	<br/>This is used to call mission endings, please be careful since if you press it once it will end the mission.
	<br/>
	<br/>Helper checks are: //Server vars
	<br/><execute expression='systemChat str westCasualty'>Check Bluefor Casualty Percentage</execute>
	<br/><execute expression='systemChat str eastCasualty'>Check Opfor Casualty Percentage</execute>
	//Extra checks can be added to endConditions.sqf - booleans (true/false) and numbers are able to be parsed
	//<br/><execute expression='systemChat str testVar'>Test Boolean Handling</execute>
	<br/>
	
	<br/><execute expression='victoryMessage call FNC_EndMissionRequest'>Call Bluefor Victory</execute>  
	<br/>
	<br/><execute expression='failureMessage call FNC_EndMissionRequest'>Call Bluefor Failure</execute>
	<br/>
	//Any amount of endConditions can be added, just add the message to settings.sqf
	//<br/><execute expression='customMessage call FNC_EndMissionRequest'>Call Bluefor Failure</execute>
	ENDTAB;
};


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE