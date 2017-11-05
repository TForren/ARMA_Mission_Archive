#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The United States Department of Defense has been secretly experimenting with a micro weapon of mass destruction capable devastating chemical warfare.
	<br/><br/>
	This weapon, containing aspartic acid histidine, phylloquinone, and Arginine has been left unattended in the abandoned building marked P0745-51M.
	<br/><br/>
	The Russian Komitet Gosudarstvennoy Bezopasnosti (KGB) caught wind of this fact and have deployed 3x Voyska Specialnogo Naznacheniya Recovery Teams to capture the prototype. At the same time,
	the US Army has done the same with 2x US Army Ranger Recovery Squads with the same goal in mind.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Modern Russian Armed Forces weapons and equipment.<br/>
	The enemy are likely to be dressed in Modern Russian Federation military uniform.<br/>
	<br/>
	Strength:<br/>
	3x Spetsnaz Special Forces Teams of ~20 total men.<br/>
	<br/>
	Location:<br/>
	UNKNOWN<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	US Army Rangers inserting by helicopter.<br/>
	<br/>
	b. N/A<br/>
	<br/>
	c. Composition:<br/>
	2x US Army Ranger Teams with 1x platoon commander.
	<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	RECOVER the weapon prototype(P0745-51M) and hold it until the end of the operation.
	<br/>
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
	US Army Rangers, First Ranger Squad - Channel 1<br/>
	US Army Rangers, Second Ranger Squad - Channel 2<br/>
	ENDTAB;
	
};

case east: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
	The United States Department of Defense has been secretly experimenting with a micro weapon of mass destruction capable devastating chemical warfare.
	<br/><br/>
	This weapon, containing aspartic acid histidine, phylloquinone, and Arginine has been left unattended in the abandoned building marked P0745-51M.
	<br/><br/>
	The Russian Komitet Gosudarstvennoy Bezopasnosti (KGB) caught wind of this fact and have deployed 3x Voyska Specialnogo Naznacheniya Recovery Teams to capture the prototype. At the same time,
	the US Army has done the same with 2x US Army Ranger Recovery Squads with the same goal in mind.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Modern US Military weapons and equipment.<br/>
	The enemy are likely to be dressed in Modern US Military uniform.<br/>
	<br/>
	Strength:<br/>
	2x US Army Ranger Squads of ~20 total men.<br/>
	<br/>
	Location:<br/>
	UNKNOWN<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	Russian Spetsnaz inserting by helicopter.<br/>
	<br/>
	b. N/A<br/>
	<br/>
	c. Composition:<br/>
	3x Spetsnaz Special Forces Teams with 1x Commander.
	<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	RECOVER the weapon prototype(P0745-51M) and hold it until the end of the operation.
	<br/>
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
	Russian MSV, First Spetznas Team - Channel 1<br/>
	Russian MSV, Second Spetznas Team - Channel 2<br/>
	Russian MSV, Third Spetznas Team - Channel 3<br/>
	ENDTAB;
}; //end EAST


}; //End of switch


NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes.
<br/>
<br/>Mission ends if:<br/>
-All BLUFOR are killed(OPFOR VICTORY)<br/><br/>
-BLUFOR is in control of the protoype at the type limit(OPFOR VICTORY)<br/><br/>
-All OPFOR are killed(BLUFOR VICTROY)<br/><br/>
-BLUFOR is in control of the protoype at the type limit(BLUFOR VICTORY)<br/><br/>
When moved, the experimental prototype will activate its safety ping that will be audible in a 200m radius.
<br/>
<br/>
The answer to the question 'What is the helicopter AI doing?!?!' is 'their best'
<br/>
<br/>
Since the Helicopter AI is the most uncooperative piece of shit, they are ripped down to the ground to land. Mind the shock.
<br/>
Also you will most likely not land on the LZ marker thanks to the incompetence of the AI. plan generally. 
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();