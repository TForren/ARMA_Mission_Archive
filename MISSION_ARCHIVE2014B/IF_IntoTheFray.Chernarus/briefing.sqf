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
Mission ends when ammo trucks destroyed or at least one makes it to the FOB.<br />
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
1x AMV-7 Marshal<br />
1x HMG Hunter<br />
3x AMMO HEMTT<br />
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Escort at least one ammo truck to the UN FOB.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
US Infantry Platoon<br />
UN Security Forces stationed at UN FOB<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
Unknown<br />
ENDTAB;

NEWTAB("I. Situation:")
one of the UN FOBS is running dangerously low on munitions. Most likely because of how much 'target practice' they do out into the water. HQ is sending us to
deliver at least one ammunition truck to the FOB. ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("V. Command & Signal:")
leader's discretion
ENDTAB;

NEWTAB("IV. Service Support:")
A few trucks. We duct taped a 50 to one.<br />
Someone filled the fuel truck outside with some explosives we stole from the UN when they were asleep. Would make a wonderful explosion if destroyed.<br />
ENDTAB;

NEWTAB("III. Execution:")
Co’s discretion
ENDTAB;

NEWTAB("II. Mission:")
Destroy the supply trucks.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
Us.<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
US supply convoy. possibly Light armor too. Fucking Americans.<br />
Probably high tech shit knowing them.<br /> 
Best guess is about 10 or 11 of em.<br />
ENDTAB;

NEWTAB("I. Situation:")
So apparently we took a bit too many of the UN's ammo a few nights back. Word is that they've called for a supply convoy to fill the empty space we made.<br /> 
Uhh...We have all the explosives we want so we could probably just blow up the supply convoy. Would be fun.
ENDTAB;
};
};