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
Mission ends when Blufor are wiped out, the arms dealers' mobile cache is destroyed, or the time runs out(45 minutes).<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
ENDTAB;

NEWTAB("IV. Service Support:")
-1x Mk19 HMMWV <br />
-1x M2 MRAP <br />
-1x M2 MTVR <br />
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
-Locate and destroy the arms Dealers' weapons cache in one of their vehicles.

ENDTAB;

NEWTAB("B. Friendly Forces:")
-UN security forces occupying the airfield<br />
-US Rifle Squad.
ENDTAB;

NEWTAB("A. Enemy Forces:")
-Group of Arms Dealers.<br />
-No immediate threats in town.<br />
-Civilian population extremely hostile though killing civilians will only make it worse. Just keep your eye out.
ENDTAB;

NEWTAB("I. Situation:")
Local UN forces have identified an incoming group of civilian vehicles suspected to be the arms dealers that have been stirring up trouble for the 
neighbouring UN Outposts. The civilian population here in Shapur is already extremely hostile to the blufor presence at the airfield. A convoy of arms 
dealers is the last thing we need. Blufor vehicles still need to be refuelled but a UN fuel truck is right around the corner. It will arrive in a few
seconds. Once geared up and refuelled, Blufor must locate and destroy the arms dealers' mobile weapons cache. We can only spend 45 minutes in town
before we have to RTB.
ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing


NEWTAB("V. Command & Signal:")
Group Leader's orders.
ENDTAB;

NEWTAB("IV. Service Support:")
Extra weapons in the flat-bed truck. We can use these but not the cache we need to sell.
ENDTAB;

NEWTAB("III. Execution:")
Group Leader's discretion.
ENDTAB;

NEWTAB("II. Mission:")
-Keep the first car safe. It has all the sales items.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
-None. Only potential customers. Try to keep civilian deaths low. 
ENDTAB;

NEWTAB("A. Enemy Forces:")
-UN Forces setup at the airfield.<br />
-Team of Americans deploying from the airfield.
ENDTAB;

NEWTAB("I. Situation:")
AllahuAlluhaallegh! It was trap! Local inform us American held airfield in this village. We are too close to try to run. We must hide the car with all the guns
somewhere in town and wait for help. We cannot let the first car with all the weapons get destroyed. It should only take 45 Allahu minutes for help to arrive.
According to this fellow, his village's people hate the Americans. They might help us but we must worry about ourselves for now. Allahallaehallauhah!
ENDTAB;
};
};