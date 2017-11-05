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
Mission ends when Blufor finishes 3 objectivces (and survives for 1 minute after).<br />
Mission ends when Blufor are wiped out.<br />
Mission ends when time limit is reached.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Why do we even have this section?
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
Gear up from the SDV.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Infiltrate this area and complete 3 of the following objectives:<br />
- Collect sensitive data from the <marker name='Laptop'>Laptop</marker<br />
- Sabotage the <marker name='Technical'>Technical</marker<br />
- Plant a tracking device on the <marker name='Weapons'>Weapons Shipment</marker<br />
- Sabotage the <marker name='Boat'>Boat</marker<br />
- Eliminate the HVT.
ENDTAB;

NEWTAB("B. Friendly Forces:")
N/A
ENDTAB;

NEWTAB("A. Enemy Forces:")
Small group of pirates.
ENDTAB;

NEWTAB("I. Situation:")
Pirates have setup in the small dock village of Kalithea. The pirate operations must be disrupted by a team of highly trained blufor special forces.<br />
One of their leaders, Alzaback Heuler, will also be in the area. This is an opportunity to eliminate him. He will most likely be unarmed as his ego will
have him believing he doesn't need to be. His exact location is unknown.
ENDTAB;
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