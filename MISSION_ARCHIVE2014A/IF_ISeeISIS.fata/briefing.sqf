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
Mission ends when Tottah cleared of ISIS and ISIS weapons cache is destroyed.<br />
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
-1x M2 Deployment HMMWV <br />
-1x M2 HMMWV <br />
-1x Mk19 HMMWV <br />
-1x M2 MTVR <br />
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
-Rescue the surviving UN forces from the ISIS assault<br />
-Push back assaulting ISIS back to the ISIS Camp<br />
-Raid the ISIS camp and destroy the weapons cache<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
-US Security forces posted at the UN outpost in Tottah<br />
-US Rifle Squad<br />
-US Weapons Squad<br />
-US Anti-Tank/Anti-Air Attachment<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
-platoons worth of ISIS fighters working their way through to Tottah with some just leaving the camp and some already in town.<br />
-Confirmed light vehicles in Tottah.<br />
ENDTAB;

NEWTAB("I. Situation:")
ISIS has been threatening the Shia Muslim population of Tottah for days. The only thing keeping them back has been the UN Forces posted in the heart of the village.
Today, half the UN forces stationed in Tottah have been temporarily relocated to a different post. ISIS knew this and begun a full scale assault on the now weakend UN post.
Satellites have since traced ISIS movements back to their encampment with confirmed munitions and weapons supplying the assaults.
A US QRF has been deployed to come to the aid of the remaining UN Forces in Tottah and push back the ISIS forces to destroy the supplies at the ISIS camp.
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