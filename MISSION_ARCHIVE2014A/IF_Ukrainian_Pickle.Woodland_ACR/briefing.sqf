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
Mission ends when all armor destroyed and hvt eliminated or blufor are wiped out.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
-1x M2 HMMWV <br />
-2x unarmed hmmwv <br />
-1x M2 Deployment MTVR <br />

ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
1. Locate and eliminate the Russian CO around 6-digit grid 021033
ENDTAB;

NEWTAB("B. Friendly Forces:")
-US Rifle squad<br />
-US Weapons squad<br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Squad of Russian sentries guarding the CO with small patrol.<br />
Russian BTR dismounts stationed at Motor Pool.  <br />
Area known to be highly pro-Russian. Expect Rebel fighters in support of the Russian positions. <br />
ENDTAB;

NEWTAB("I. Situation:")
South East Ukraine:<br />
Russian forces have established a small motor pool at 6-digit grid 030018 and a temporary HQ at 021033. Ukrainian armed forces have retreated and requested US assistance.
The area is known to be heavy Pro-Russian so Ukrainian Rebels are sure to be in the are and will not hesitate to jump to the aid of the Russian forces. 
ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing


NEWTAB("Uhhh...")
да?<br />
ENDTAB;

NEWTAB("Gear")
PUTIN GIV US GLORIOUS RUSSIAN WAEPONS<br />
ENDTAB;

NEWTAB("Important Notes")
<img image='RebelNotes.jpg'/> 
ENDTAB;

NEWTAB("Other Important Notes")
CAAPITOOLIST AMERICAN FORCES TRY TO ATTACK GLORIOUS RUSSIAN POSITIONS. WE MUST HEELP THEM DEFEND FROM THE CAPITOOLIST PIGS<br />
ENDTAB;


};
};