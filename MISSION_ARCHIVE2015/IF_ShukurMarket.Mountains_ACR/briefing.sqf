#define NEWTAB(NAME) \
player createDiaryRecord ["Diary",[NAME,"

#define ENDTAB \
"]];

//See "VI. Mission notes:" for inspiration about briefing syntax
//"<br />" makes line switches

waitUntil {!(isNull player)};//This is needed for JIP compatibility since this code is spawned not called

NEWTAB("VI. Mission notes:")
Mission by Hoizen.<br />
Mission ends when respawn tickets are depleted.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing
NEWTAB("I. Situation:")
For some reason the Market in town is super important and we need to capture it. There are Indfor and Opfor also fighting for the market for some reason.
ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing
NEWTAB("I. Situation:")
For some reason the Market in town is super important and we need to capture it. There are Indfor and Blufor also fighting for the market for some reason.
ENDTAB;
};

case RESISTANCE: { //If player is Resistance he receives this briefing
NEWTAB("I. Situation:")
For some reason the Market in town is super important and we need to capture it. There are Opfor and Blufor also fighting for the market for some reason.
ENDTAB;
};
};