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

NEWTAB("IV. Mission notes:")
Mission by Hoizen.<br />
Mission ends when Blufor finishes 3 objectivces (and survives for 1 minute after).<br />
Mission ends when Blufor are wiped out.<br />
Mission ends when time limit is reached.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing


NEWTAB("III. Notes:")
After completing an objective, the opfor will be notified.<br />
The opfor will put the hvt anywhere the please.<br />
Team leaders have SATCOM access. <br />
ENDTAB;

NEWTAB("II. Mission:")
Infiltratera this area and complete 3 of the following objectives:<br />
- Collect sensitive data from the <marker name='Laptop'>Laptop</marker<br />
- Sabotage the <marker name='Technical'>Technical</marker<br />
- Plant a tracking device on the <marker name='Weapons'>Weapons Shipment</marker<br />
- Sabotage the <marker name='Boat'>Boat</marker<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
N/A
ENDTAB;

NEWTAB("A. Enemy Forces:")
Small group of mercenaries.
ENDTAB;

NEWTAB("I. Situation:")
Mercenaries have setup in the small dock village of Kalithea. The merc operations must be disrupted by a team of highly trained blufor special forces.<br />
ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("III. Notes:")
Use cableties to tie up the HVT and place him somewhere safe.<br/>
After Blufor complete an objective, a notification will appear.<br/>
ENDTAB;

NEWTAB("II. Mission:")
Keep blufor away from the objectives until help arrives.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
Reinforcements from the local militia on their way. They will take about half an hour to get here. 
ENDTAB;

NEWTAB("A. Enemy Forces:")
Blufor Assault Boats.
ENDTAB;


NEWTAB("I. Situation:")
The boss wants this place locked down.
ENDTAB;
};
};