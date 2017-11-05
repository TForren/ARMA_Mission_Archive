#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	A U.S. FOB at the Caribou Oil Bay West Station is under seige by an advancing Russian V.D.V. Platoon from the West. The scrimmage has come to a standstill and the Russian V.D.V. forces have begun preparing a Tochka-U ballistic Missile at Fort Crassus to use against the U.S. FOB.   
	<br/><br/>
	U.S. Marine Corps Forces Special Operations Command (MARSOC) has deployed operatives on the Western coasts of Fort Crassus to attempt a daring raid on the Tochka-U to prevent it from firing.
	<br/><br/>
	Intel suggests the presence of V.D.V. Spetsnaz in the area.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Russian Federation V.D.V. Airborne<br/><br/>
	Equipment:<br/>
	Modern Russian Armed Forces weapons and equipment.<br/>
	The enemy are likely to be dressed in Modern Russian Federation military uniform.<br/>
	<br/>
	Strength:<br/>
	Standard V.D.V Airborne base personnel with potential Spetsnaz operatives. (~40 men)<br/>
	<br/>
	Location:<br/>
	Fort Crassus<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	U.S. MARSOC Task Force Platoon.<br/>
	<br/>
	b. Assets:<br/>
	N/A<br/>
	<br/>
	c. Composition:<br/>
	2x U.S. MARSOC Rifle Squads and 1x platoon HQ.
	<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	DESTROY the Toshka-U in Fort Crassus before it successfully launches the ballistic missile.
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
	U.S. MARSOC, 1'0 Platoon Headquarters - Channel 4<br/>
	U.S. MARSOC, 1'1 First Rifle Squad - Channel 1<br/>
	U.S. MARSOC, 1'2 First Rifle Squad - Channel 2<br/>
	ENDTAB;
	
};

case east: { //If player is east he receives this briefing

NEWTAB("I. Situation:")
	A U.S. FOB at the Caribou Oil Bay West Station is under seige by an advancing Russian V.D.V. Platoon from the West. The scrimmage has come to a standstill and the Russian V.D.V. forces have begun preparing a Tochka-U ballistic Missile at Fort Crassus to use against the U.S. FOB.   
	<br/><br/>
	U.S. Marine Corps Forces Special Operations Command (MARSOC) has deployed operatives on the Western coasts of Fort Crassus to attempt a daring raid on the Tochka-U to prevent it from firing.
	<br/><br/>
	In retaliation, the V.D.V. have deployed 2x Spetsnaz Operatives to the hill directly to the east of Fort Crassus to provide sniper support.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	U.S. MARSOC<br/><br/>
	Equipment:<br/>
	Modern US Military weapons and equipment.<br/>
	The enemy are likely to be dressed in Modern US Military uniform.<br/>
	<br/>
	Strength:<br/>
	Platoon-sized strike force (~30 men).<br/>
	<br/>
	Location:<br/>
	Western coast of Fort Crassus<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	Russian Spetsnaz operatives in the Eastern hills.<br/>
	Standard V.D.V. Airborne base personnel on station at Fort Crassus.<br/>
	<br/>
	b. Assets:<br/>
	1x KSVK Ammo Box<br/>
	<br/>
	c. Composition:<br/>
	1x Spetsnaz Sniper.<br/>
	1x Spetsnaz Spotter.<br/>
	<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	Protect the Tochka-U until is successfully launches the ballistic Missile.
	<br/>
	ENDTAB;


	NEWTAB("III. Command & Signal:")
	<br/>
	i) Chain of Command:<br/>
	No Change.<br/>
	<br/>
	iii) Frequencies:<br/>
	LR:<br/>
	N/A<br/>
	<br/>
	SR:<br/>
	V.D.V. Spetsnaz Operatives, Putin's Finger Sniper Team - Channel 1<br/>
	ENDTAB;
}; //end EAST


}; //End of switch


NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 20 minutes.
<br/>
<br/>Mission ends if:<br/>
-All BLUFOR are killed(V.D.V. VICTORY)<br/><br/>
-The Tochka-U is destroyed(MARSOC VICTORY)<br/><br/>
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();