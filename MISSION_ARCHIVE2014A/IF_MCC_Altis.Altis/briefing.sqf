#define NEWTAB(NAME) \
player createDiaryRecord ["Diary",[NAME,"

#define ENDTAB \
"]];

//See "VI. Mission notes:" for inspiration about briefing syntax
//"<br />" makes line switches

waitUntil {!(isNull player)};//This is needed for JIP compatibility since this code is spawned not called

NEWTAB("Game Mastering")
GAME MASTER THE SHIT OUTA THIS 
ENDTAB;

NEWTAB("VI. Mission notes:")
MCC DO STUFF
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing


case EAST: { //If player is EAST he receives this briefing

NEWTAB("I. Situation:")
BLOOP
ENDTAB;
};
};