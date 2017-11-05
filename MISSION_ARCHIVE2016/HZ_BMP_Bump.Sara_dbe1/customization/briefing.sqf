#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The Sahrani Liberation Army (SLA) have been disrupting RACS supply lines with a BMP-1. the RACS have deployed their own BMP-1 to eliminate this disturbance.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	FN FALs, RPKs, RPG-26s<br/>
	<br/>
	Strength:<br/>
	~13x SLA fighters<br/>
	1x BMP-1<br/>
	1x Ural<br/>
	<br/>
	Location:<br/>
	dense compound of civilian buildings of Ortego<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	RACS task force starting <marker name='bluLZ'>HERE</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with the elimination of the SLA BMP in Ortego.<br/>
	<br/>
	c. Assets: <br/>
	-1x BMP-1<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	DESTROY the SLA BMP. Infantry is unimportant but still threatening.
	ENDTAB;

	NEWTAB("III. Command & Signal:")
	<br/>
	i) Chain of Command:<br/>
	No Change.<br/>
	<br/>
	iii) Frequencies:<br/>
	LR:<br/>
	1st Platoon Net - Channel 1<br/>
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The Sahrani Liberation Army (SLA) have been disrupting RACS supply lines with a BMP-1. the RACS have deployed their own BMP-1 to eliminate this disturbance.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	M16A2s, M60s, AT4s<br/>
	<br/>
	Strength:<br/>
	~13x RACS Soldiers<br/>
	1x BMP-1<br/>
	1x Ural<br/>
	<br/>
	Location:<br/>
	dense compound of civilian buildings of Ortego<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	SLA task force starting <marker name='OpLZ'>HERE</marker>.<br/>
	<br/>
	b. Assets: <br/>
	-1x BMP-1<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	DESTROY the RACS BMP. Infantry is unimportant but still threatening.
	ENDTAB;

	NEWTAB("III. Command & Signal:")
	<br/>
	i) Chain of Command:<br/>
	No Change.<br/>
	<br/>
	iii) Frequencies:<br/>
	LR:<br/>
	1st Platoon Net - Channel 1<br/>
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
}; //end EAST

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes.
<br/>Starting time is random. Could be night. Could be day. Who knows? (You do, check top right)
<br/>
<br/>Mission ends if either the SLA or RACS BMP is destroyed. 
<br/>
<br/>Mission has a planning phase timer (because I cannot randomize spawns before map screen)
<br/>
<br/>Admin can skip the remaining planning phase time by setting planning = false;
<br/>
<br/>IF YOU DO NOT GET TELEPORTED BECAUSE ARMA IS DUMB, USE THE TOILET
<br/>
ENDTAB;
NEWTAB("Game Mastering:") //This is shown for everyone
<br/>Admin can skip the remaining planning phase time by setting planning = false;
<br/>
<br/>Admin can reroll TOD with randTime = random 24;skipTime randTime; on server.
ENDTAB;


DISPLAYBRIEFING();