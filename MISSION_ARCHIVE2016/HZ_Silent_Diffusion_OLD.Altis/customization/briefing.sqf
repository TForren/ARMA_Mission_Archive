#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Mercenaries have setup in the small dock village of Kalithea. The merc operations must be disrupted by the BLUFOR special forces.<br/>
<br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Pre-Modern Russian weaponry including AKMs, PKM Machine Guns, and RPGs.<br/>
The enemy will be wearing guerrilla uniform and no protective equipment.<br/>
<br/>
Strength:<br/>
~15 Russian Mercenaries.<br/>
<br/>
<br/>
Location:<br/>
Mercenaries setup at small dock village of Kalithea.
<br/>
<br/>
MLCOA:<br/>
Mercenaries will most likely setup in defensive positions and await the BLUFOR.
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
US Special Forces staging at [<marker name='blu'>LC175189</marker>]<br/>
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
f. Assets:<br/>
<br/>-3x Zodiac boats
<br/>-2x Scuba Deliver Vehicles
ENDTAB;

NEWTAB("II. Mission:")
Infiltratera this area and complete 3 of the following objectives:
<br/>- Collect sensitive data from the <marker name='Laptop'>Laptop</marker>
<br/>- Sabotage the <marker name='Technical'>Technical</marker>
<br/>- Plant a tracking device on the <marker name='Weapons'>Weapons Shipment</marker>
<br/>- Sabotage the <marker name='Boat'>Boat</marker>
<br/>- Turn off the <marker name='radio'>Radio</marker>
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
BLUFOR Strike Teams will stage at the opposite side of the Kalithea Bay and will attack the Kalithea dock by boat and/or underwater operation.
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
USMC Forces will launch the operation at 2200hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
i) SOP Variations<br/>
Dress: None<br/>
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
ii) Logistic Support<br/>
Replen Plan: None<br/>
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
iii) Medical<br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
Morphine: 1 per Man.<br/>
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
Leaders have grenade launchers for hunts IR. Check wind direction, fire up into the wind.
<br/>-A and D for zoom in/out. N for night vision. 
<br/>-arrow keys for camera controls.
<br/>
<br/>
Should thy will it, all BLUFOR can swap out their normal gear for scuba gear at the MRAP. YOU CANNOT SWAP BACK. Divers get supressed five-sevens and flashbangs.
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
Reinforcements from the local militia on their way. They will take about an hour to get here. 

ENDTAB;

NEWTAB("II. Mission:")
Keep blufor away from the objectives until help arrives.<br/> 
ENDTAB;

NEWTAB("V. Command & Signal:")
<br/>
i) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
Team 1 - Channel 1<br/>
Team 2 - Channel 2<br/>
Comamnd Team - Channel 3<br/>

<br/>

ENDTAB;

NEWTAB("Tactical Notes:")
Loadouts are fairly random to their respective roles. Some people will get flashlight attachments, others wont.<br/>
Those without flashlights must rely on their chemlight attachment. Throwing the chemlight is forfeiting your ability to see anything besides where you threw it.<br/>
OPFOR must win by overwhelming the BLUFOR with bodies. Getting up close and personal with full auto is the most effective way to win.
ENDTAB;

}; //End of east case


}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes.
<br/>BLUFOR have the option to swap their gear out for scuba gear at the MRAP (UNREVERSABLE).
<br/>OPFOR is notified when an objective is completed.
<br/>
<br/>Mission ends when BLUFOR finishes 3 objectives (and survives for 1 minute after).
<br/>Mission ends when BLUFOR are wiped out.
<br/>Mission ends when OPFOR are wiped out.
<br/>Mission by Hoizen.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();