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
Mission ends when either team is completely wiped out.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
	Everyone has a rf7800<br />
ENDTAB;

NEWTAB("IV. Service Support:")
N/A<br />
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
	Eliminate all remaining Russian forces in the immediate area.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
	-Various Stranglers across the entire AO. Not within reach.<br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
	-1x Squad of enemy Russian infantry remaining in the immediate area.<br />
	-Various Stranglers across the entire AO. Not within reach.<br />
ENDTAB;

NEWTAB("I. Situation:")
	1992: The cold war never actually ended. the Soviet Union faked its break up. They are now running at full strength on Namalsk. The remaining uS soldiers in the area
	have linked up and are making one last push against the attacking Russian infantry.
	<br />
ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("V. Command & Signal:")
	Каждый человек имеет радио</br />
ENDTAB;

NEWTAB("IV. Service Support:")
	N/A</br />
ENDTAB;

NEWTAB("III. Execution:")
	Заказы Лидера рота
ENDTAB;

NEWTAB("II. Mission:")
	устранить американских солдат в области. Eliminate all US forces still strangling in the area. <br /> 
ENDTAB;

NEWTAB("B. Friendly Forces:")
	Некоторые тут и там. Pockets of friendlies across AO. Not within range<br />
	
ENDTAB;

NEWTAB("A. Enemy Forces:")
	Оставшееся США пехотное отделение. US infantry remaining in the immediate area.<br />
ENDTAB;

NEWTAB("I. Situation:")
	1992: The caapitoolist pigs fell for our fake disbanding of the Soviet Union. Now we are stronger than ever.<br />
ENDTAB;
};
};