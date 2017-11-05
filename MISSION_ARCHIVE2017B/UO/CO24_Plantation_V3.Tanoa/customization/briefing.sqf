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

NEWTAB("VII. Mission notes:")
Mission by Corax<br />
<br />
Mission will end once there are less than 4 blufor on the obj or opfor take 85% casualties.<br /> 
2 hour time limit.<br />
Thanks to Olsen for his framework<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case EAST: { //If player is WEST he receives this briefing


NEWTAB("V. Command & Signal:")
<br />
<br />
<br />

LR:1<br />
SR:1<br />
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
ENDTAB;

NEWTAB("III. Execution:")
ENDTAB;

NEWTAB("II. Mission:")
ENDTAB;

NEWTAB("B. Friendly Forces:")
ENDTAB;

NEWTAB("A. Enemy Forces:")
ENDTAB;

NEWTAB("I. Situation:")
ENDTAB;

NEWTAB("I. Prelims:")
ENDTAB;

NEWTAB("VI. Background:")
This is War.
ENDTAB;

};

case WEST: { //If player is EAST he receives this briefing

NEWTAB("V. Command & Signal:")
<br />
SR:<br />
Raid team A - 1<br />
Raid team B - 2<br />
Raid team C - 3<br />
Raid team D - 4<br />
<br />
LR:1<br />
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
Resupply:<br />
<br />
None.
<br />
Reinforcements:<br />
<br />
None.
<br />
Fires:<br />
none<br />
<br /> 
Air<br />
none.
<br />
<br />
Notes:<br />
None.
ENDTAB;

NEWTAB("III. Execution:")
CO Discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Destroy the Marked smuggler station.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
we are Four raid teams.<br />
we have:<br /> 
4x unarmed HMMWV <br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Enemy are roughly 20 smugglers wearing mixed civil and some camouflage clothing and soviet weapons located around the marked plantation.<br />
<br />
smugglers have a mixed training quality, with moderate moral.
ENDTAB;

NEWTAB("I. Situation:")
ENDTAB;

NEWTAB("I. Prelims:")
<br />
We are currently at position marked start.<br />
<br />
<br />
Weather:<br />
Clear with moon,no fog<br />
<br />
attachments:
None.
<br />
ENDTAB;
};
};;