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
Mission ends when caches destroyed, camps cleared, and HVT dead. <br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
Suggested Callsigns:<br />
Make your own damn callsigns<br />

<br />

ENDTAB;

NEWTAB("IV. Service Support:")
1x Mi-48
Rearm, refuel, and repair at base.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Dismantle AIF camps, eliminate HVT, destroy caches in camps.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
Squad of CSAT Special Forces<br />

ENDTAB;

NEWTAB("A. Enemy Forces:")
Bands of AIF. Static weapons and technicals. 
ENDTAB;

NEWTAB("I. Situation:")
An AIF HVT is on his way from one camp to another to reallocate man power and supplies. While neither camps have whats in the convoy, CSAT SF will strike at the camps as well as eliminate the HVT in transit. ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("V. Command & Signal:")
HQ’s discretion
ENDTAB;

NEWTAB("IV. Service Support:")
1x Mi-48
Rearm, refuel, and repair at base.
ENDTAB;

NEWTAB("III. Execution:")
Co’s discretion
ENDTAB;

NEWTAB("II. Mission:")
Dismantle AIF camps, eliminate HVT, destroy caches in camps.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
Squad of CSAT Special Forces<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
Bands of AIF. Static weapons and technicals. 
ENDTAB;

NEWTAB("I. Situation:")
An AIF HVT is on his way from one camp to another to reallocate man power and supplies.
 While neither camps have whats in the convoy, CSAT SF will strike at the camps as well as eliminate the HVT in transit. ENDTAB;

ENDTAB;
};
};