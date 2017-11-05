#define NEWTAB(NAME) \
player createDiaryRecord ["Diary",[NAME,"

#define ENDTAB \
"]];

//See "VI. Mission notes:" for inspiration about briefing syntax
//"<br />" makes line switches

waitUntil {!(isNull player)};//This is needed for JIP compatibility since this code is spawned not called

NEWTAB("Game Mastering")
This mission requires a game master to check the strength of the enemy force and end the mission.<br />
-End1 Mission victory. Russian counter attack pushed back.<br />
-End2 Mission failure. Weapons supply destroyed but russian counter attack was successful.<br />
-End3 Mission failure. Russian forces in Thirsk were able to defend from the blufor attack. <br />
-Player wipe BI default player wipe ending will trigger.<br />
ENDTAB;

NEWTAB("VI. Mission notes:")
Mission by Hoizen.<br />
Mission ends when Game master determines that the Russian counter attack has been pushed back.<br />
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
-1x TOW HMMWV <br />
-1x M2 MTVR <br />
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
-Disrupt the Russian entrenchment of the market town of Thirsk.<br />
STAGE I:<br />
-Clear out Russian forces<br />
-Locate and destroy Russian munitions<br />
STAGE II:<br />
-Repel inevitable Russian counter attack. Expect both air and ground reinforcements from the air field.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
-US Rifle squad<br />
-US Weapons Squad<br />
-US Anti-Tank/Anti-Air Attachment<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
-Platoon sized Russian forces entrenched in Thirsk. Utilizing rooftops and fortified buildings.<br />
-Possible enemy armor already located in Thirsk with guaranteed armored reinforcements from the air field.<br />
-Russian Hinds spotted in and around the AO. Expect Hind reinforcements.<br />
ENDTAB;

NEWTAB("I. Situation:")
Armed Forces of the Russian Federation have begun digging into the market town of Thirsk in the Hambleton district of North Yorkshire. The US Army will be deploying a QRF to disrupt the entrenchment before it becomes too strong. A Russian counter attack is inevitable.
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
Keep blufor away from the objectives until help arrives.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
Reinforcements on their way. They will take about half an hour to get here. 
ENDTAB;

NEWTAB("A. Enemy Forces:")
Blufor Divers.
ENDTAB;

NEWTAB("I. Situation:")
The boss wants this place locked down. To make sure we do it right, he sent his son Alzaback Heuler to watch over us. The guy has an ego larger
than his head so he's got music blaring in his earbuds and think he doesn't need to carry. We need to make sure nothing happens to him or Mr. Heuler will have our heads.
ENDTAB;
};
};