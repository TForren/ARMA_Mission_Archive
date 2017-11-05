#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	A daily patrol of the Raven Rock Island ended up actually finding something: a team of Russian Federation Spetsnaz operatives. With the strategical significance of the Caribou Islands, it is no wonder the Russian Federation is scouting it out.
	<br/>
	<br/>
	The Royal Army of Caribou's Raven Rock garrison must eliminate the spetsnaz before their scheduled extract arrives.
	<br/>
	The Spetsnaz were last seen on the Southern half of the island.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Modern Russian Federation arms and armor including night vision and supressed weaponry.<br/>
	<br/>
	Strength:<br/>
	~6x Spetsnaz Operatives<br/>
	<br/>
	Location:<br/>
	Somewhere on the island of Raven Rock.<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	RCA Raven Rock Garrison starting at <marker name='HQ'>Raven Rock FOB</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with the elimination of the Spetsnaz on the island.<br/>
	<br/>
	c. Assets: <br/>
	-2x BTR-40 in the FOB warehouse<br/>
	-1x Mi-8 with 2x PKM<br/>
	-1x Mi-8 with 2x FFV positions<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	ELIMINATE the Spetsnaz Operatives on the island.
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
	N/A
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The position of the force recon Spetsnaz team, Putin's Finger, has been comprimised by a RCA patrol on Raven Rock. Extract is not scheduled until 2059 hrs so the operatives on the island must survive until then.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	AKMs, PKPs, low to no armor.<br/>
	<br/>
	Strength:<br/>
	~32x Royal Caribou Island Soldiers<br/>
	2x Mi-8<br/>
	<br/>
	Location:<br/>
	<marker name='HQ'>Raven Rock FOB</marker><br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	N/A<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	SURVIVE
	ENDTAB;

}; //end EAST

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 35 minutes.
<br/>
<br/>Mission ends if all of one side is eliminated.
<br/>
<br/>Using the FFV mi-8 to drop flares along with the armed mi-8 yields the best results.
<br/>
<br/>The RCA soldiers should not fear using flashlights. The spetsnaz probably know where you are already anyway. Your job is to get them killed either by you or your fellow soldier.
<br/>
<br/>Ace locking doesn't work. Spetsnaz should not be stealing helicopters.
ENDTAB;

NEWTAB("Game Mastering:") //This is shown for everyone
<br/>N/A
ENDTAB;


DISPLAYBRIEFING();