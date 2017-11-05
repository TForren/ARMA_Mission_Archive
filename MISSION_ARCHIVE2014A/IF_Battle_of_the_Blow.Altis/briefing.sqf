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
Mission ends when one team brings the desert eagle to their truck.<br />
Mission ends when Blufor are wiped out.<br />
Mission ends when Opfor are wiped out.<br />
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
Grab your gear from the truck.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
-Locate and recover the golden desert eagle.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
N/A
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equal sized group of opfor.
ENDTAB;

NEWTAB("I. Situation:")
The Los Zetas have air dropped a crate with a golden desert eagle in it. The desert eagle is lined with cocaine.
The box landed somewhere in the circled area. The crate will activate a chemlight after 7 minutes.
Two small teams of mercenaries are after the airdrop.
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
-Locate and recover the golden desert eagle.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
N/A
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equal sized group of blufor.
ENDTAB;

NEWTAB("I. Situation:")
The Los Zetas have air dropped a crate with a golden desert eagle in it. The desert eagle is lined with cocaine.
The box landed somewhere in the circled area. The crate will activate a chemlight after 7 minutes.
Two small teams of mercenaries are after the airdrop.
ENDTAB;
};
};