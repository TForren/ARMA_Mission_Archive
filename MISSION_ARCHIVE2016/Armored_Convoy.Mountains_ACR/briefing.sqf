#define NEWTAB(NAME) \
player createDiaryRecord ["Diary",[NAME,"

#define ENDTAB \
"]];

//See "VI. Mission notes:" for inspiration about briefing syntax
//"<br />" makes line switches

waitUntil {!(isNull player)};//This is needed for JIP compatibility since this code is spawned not called

NEWTAB("Game Mastering")
This mission needs to be gamemastered to end.
ENDTAB;

NEWTAB("VI. Mission notes:")
Mission by Axelius.<br />
Mission ends when all M113s are dead or the convoy reaches FOB Jilavur.<br />
<br />
ENDTAB;

NEWTAB("V. Command & Signal:")
	Everyone has an 7800<br />
	<br />
	Signal:<br />
	1'1 Ch. 1 Freq. 31<br />
	Convoy Personnel Ch. 2 Freq. 32<br />
	
ENDTAB;

NEWTAB("IV. Service Support:")
N/A<br />
ENDTAB;

NEWTAB("III. Execution:")
To get to Jilavur the convoy must cross the Takistani mountains and the Siah valley, there are two passes through the mountains, Sar-e Sang and Darabang. The Sar-e Sang pass leads to the more populated western part of the valley while the Dabarang leads more east to a more sparesly populated area.<br />
As the population is friendly to insurgents, expect heavy resistance if you chose the western path.<br />
ENDTAB;

NEWTAB("II. Mission:")
	Bring the convoy to FOB Jilavur. Should any of the M113s be taken out it is imperative that you destroy it to deny the enemy forces the supplies within.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
	-FOB Jilavur, one infantry squad garrisoned.<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
	-Expected Platoon to Company sized force of insurgents armed with light anti tank weapons and personal weapons.<br />
	-Possible armored vehicles, ATGMs and technicals.<br />
ENDTAB;

NEWTAB("I. Situation:")
	The Siah valley in central Takistan has recently become a hotspot for insurgent activity and constant attacks have cut off supply lines.
	FOB Jilavur is running low on supplies and armored convoy has been dispatched to relieve their situation. <br />
	<br />
ENDTAB;