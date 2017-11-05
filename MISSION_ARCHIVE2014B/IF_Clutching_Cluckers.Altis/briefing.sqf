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
Mission ends when attacking Blufor have been eliminated.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />

<br />

ENDTAB;

NEWTAB("IV. Service Support:")
What ever Sickle Team is able to steal from the UN.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Defend the captured FOB from Blufor counter-attack.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
Sickle Team with weapons team detachment<br />
Scythe Team with remaining forces from the attack on the FOB.<br /> 
ENDTAB;

NEWTAB("A. Enemy Forces:")
Multiple Platoons of Blufor with mechanized transport.
ENDTAB;

NEWTAB("I. Situation:")
Hezbollah Militants have captured a NATO FOB and are planning to hold it from the Blufor counter-attack. The attack has left the militants in a less than worthy defense force. Sickle Team will strike a UN outpost,
steal what ever equipment they can, and head to reinforce the captured FOB.
 ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing
NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />

<br />

ENDTAB;

NEWTAB("IV. Service Support:")
What ever Sickle Team is able to steal from the UN.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Defend the captured FOB from Blufor counter-attack.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
Sickle Team with weapons team detachment<br />
Scythe Team with remaining forces from the attack on the FOB.<br /> 
ENDTAB;

NEWTAB("A. Enemy Forces:")
Multiple Platoons of Blufor with mechanized transport.
ENDTAB;

NEWTAB("I. Situation:")
Hezbollah Militants have captured a NATO FOB and are planning to hold it from the Blufor counter-attack. The attack has left the militants in a less than worthy defense force. Sickle Team will strike a UN outpost,
steal what ever equipment they can, and head to reinforce the captured FOB.
ENDTAB;
};
};
};