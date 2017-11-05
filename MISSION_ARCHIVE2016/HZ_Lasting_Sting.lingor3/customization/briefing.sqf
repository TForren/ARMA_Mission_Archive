#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The Government Army of Lingor has a m113 QRF garrisoned at Villa Oscura [<marker name='start'>LC006047</marker>]. 
	<br/><br/>
	However, the ARL (Armadas Revolucionarias de Lingor) rebel fighters have cut off the QRF from the main island. With supply lines cut off,
	the QRF is forced to try a daring breakout back into the main island. 
	<br/><br/>
	Unfortunately, these M113s are used APCs purchased from lingorslist.com and refurbished for the GAL Army. Thus, they will most likely take on water and sink if driven through water. 
	GAL forces are forced to use the roads.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians and scavenged camo.<br/>
	<br/>
	Strength:<br/>
	~80 insurgent fighters with possible reinforcing camps in the area.<br/>
	<br/>
	Location:<br/>
	Spread out across the small Pista airport island.<br/>
	<br/>
	MLCOA:<br/>
	Rebel fighters will most likely garrison buildings and attempt to destroy the M113s with RPGs and grenades.<br/>
	<br/>
	MDCOA:<br/>
	Rebel fighters could hit the m113s from abushing positions among the trees, destroying the congoy.<br/>
	<br/>
	Defensive Fires:<br/>
	UNKNOWN.<br/>
	<br/>
	Airthreat:<br/>
	UNKNOWN.<br/>
	<br/>
	Morale:<br/>
	UNKNOWN<br/>
	<br/>
	CBRN Threat:<br/>
	UNKNOWN.<br/>
	<br/>
	Future intentions:<br/>
	UNKNOWN<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	GAL M113 QRF at Villa Oscura [<marker name='start'>LC006047</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with breaking out of the encirclement.<br/>
	<br/>
	c. Composition:<br/>
	GAL M113 QRF is comprised of 4x M113s with mounted infantry and crew and 1x Command HQ.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	1x M113(M2) <br/>
	1x M113(M240) <br/>
	1x M113(Mk19) <br/>
	1x M113(MEDICAL) <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to BREAKOUT of the encirclement and make it to the designated location [<marker name='end'>LC025049</marker>] with surviving M113(s).
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
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, 2nd Squad Rifles - Channel 2<br/>
	1th Platoon, 3rd Squad Rifles - Channel 3<br/>
	1th Platoon, 4th Squad Rifles - Channel 4<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission loss occurs if all M113s are destroyed or 85% of the GAL Forces are killed.
<br/>Mission victory occurs if at least one M113 makes it to the end marker.
<br/>
<br/>It is assumed that all M113s will stay in a convoy at the end. Should one or more of the m113s hit the end marker with others still in the AO, they will be considered abandoned. Crew and all.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();