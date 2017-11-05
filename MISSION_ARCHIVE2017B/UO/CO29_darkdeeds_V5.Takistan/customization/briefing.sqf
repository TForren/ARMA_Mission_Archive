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
Modules:<br />
ACE Wounds<br />
ACE Maps<br />
AI Talk<br />
AI can hear ACRE<br />
Group markers off<br />
FBCB2 off<br />
Mission will end once enemy forces have been eliminated from the obj and you have extracted to the south airfield location or when friendly forces have taken 80% casualties.<br /> 
1 hour time limit.<br /> 
Thanks to Olsen for his framework<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing


NEWTAB("V. Command & Signal:")
<br />
<br />
1st Platoon command 	- 1,6<br />
1st squad 				- 1,1<br />
2nd squad 				- 1,2<br />
3rd squad				- 1,3<br />
<br />
<br />
1st Platoon Net allocated channels:<br />
LR:1<br />
SR:<br />
Block 1.<br />
1,1 - SR6<br />
1,2 - SR7<br />
1,3 - SR8<br />
1,6 - SR9<br />
<br />
<br />
<br />
ENDTAB;

NEWTAB("IV. Service Support:")
Resupply:<br />
Ammo is availiable at the insertion LZ in a crate.<br />
<br />
Reinforcements:<br />
<br />
None.
<br />
Fires:<br />
None.<br />
<br /> 
Air<br />
none
<br />
<br />
Notes:<br />
when Nagara has been cleared and the HVT killed your extraction helicopters will land at the marked location.
ENDTAB;

NEWTAB("III. Execution:")
At Platoon Commanders Discretion.<br />
<br />
<br /> 
ENDTAB;

NEWTAB("II. Mission:")
mission:<br />
<br />
Your mission is to Destroy Enemy in vicinity of Nagara and kill the HVT and extract back to Base.<br />
<br />
Your mission is to Destroy Enemy in vicinity of Nagara and kill the HVT and extract back to Base.<br />
<br />
Intent:<br />
<br />
The intent is at Platoon Commanders discretion.<br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br />
One ups intent:<br /> 
To Destroy En leadership of the irregular forces to eliminate Command and control.<br />
<br />
We are 1,PLT/B Coy ranger Battalion<br />
<br />
ENDTAB;

NEWTAB("Ai. Recon (PID: HVT):")
	<img image='AV1.jpg'/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Platoon+ insurgent infantry in vicinity of Nagara (disposition unknown). enemy are well equipped and motivated.<br />
Expect non-uniformed irregulars, with AK type weaponry as well as PKM, RPG and availability to light un-armoured vehicles.<br />
<br />
ENDTAB;

NEWTAB("I. Situation:")
ENDTAB;

NEWTAB("I. Prelims:")
<br />
We are currently at Grid 009 081 at position marked 1 plt<br />
<br />
1st light H+45<br />
<br />
Weather:<br />
Clear with low moon.<br />
<br />
attachments:<br />
none<br />
<br />
ENDTAB;

};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("V. Command & Signal:")
//Text goes here
ENDTAB;

NEWTAB("IV. Service Support:")
//Text goes here
ENDTAB;

NEWTAB("III. Execution:")
//Text goes here
ENDTAB;

NEWTAB("II. Mission:")
//Text goes here
ENDTAB;

NEWTAB("B. Friendly Forces:")
//Text goes here
ENDTAB;

NEWTAB("A. Enemy Forces:")
//Text goes here
ENDTAB;

NEWTAB("I. Situation:")
//Text goes here
ENDTAB;
};
};;