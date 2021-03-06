#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The United States Central Intelligence Agency has uncovered the position of an infamous Pakistani Warlord named Osema Ban-Layden.
	<br/><br/>
	USMC Forces will soon begin their raid on this position to eliminate this target, code name the Ace of Shovels.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~20 insurgent fighters.<br/>
	<br/>
	Location:<br/>
	dense compound of civilian buildings <marker name='prototype'>HERE</marker><br/>
	<br/>
	MLCOA:<br/>
	Insurgent Forces will likely defend their warlord.<br/>
	<br/>
	MDCOA:<br/>
	Insurgent Forces may Ambush the USMC as they approach the compound and inflict heavy casualties.<br/>
	<br/>
	Defensive Fires:<br/>
	N/A.<br/>
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
	1PLT staging SOUTHWEST of target compound[<marker name='start'>LC062047</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with the elimination of Ace of Shovels: Osema Ban-Layden.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 1x Rifle Squad.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	(If enabled)<br/>
	-2x MRAP(M2)<br/>
	-1x HMMWV(M2)<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to ELIMINATE the Ace of Shovels: Osema Ban-Layden located somewhere in the compound <marker name='prototype'>HERE</marker>.<br/><br/>Should he run, chase him down.
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
	
	NEWTAB("Tactical Notes:")
	Taliban are highly likely to use the rooftops to their advantage. Be aware of roof-dwelling opfor.<br/>
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The position of our glorious leader Osema Ban-Layden has been dsicovered and we must defend him at all cost.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	American Soldiers with their fancy modern stuff.
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	N/A.<br/>
	<br/>
	Assets:<br/>
	(If enabled)<br/>
	-4x UAZ <br/>
	-1x Ural <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	Defend Osema Ban-Layden with your lives. If he wishes, we can try to flee and survive by running.
	<br/>
	ENDTAB;
	
	NEWTAB("Tactical Notes:")
	Spare ammo can be found in the crate at start.<br/>
	Builders can pile tash as obnoxious barricades, create basic tin cover walls, and lights.<br/>
	ENDTAB;
}; //end EAST

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes.
<br/>Starting time is random. Could be night. Could be day. Who knows? (You do, check top right)
<br/>
<br/>Everyone will be notified if Osema Ban-Layden leaves the compound. Similarly, A drone will track his position every minute.
<br/>
<br/>3 minute setup timer.
<br/>
<br/>US win by eliminating Osema Ban-Layden. 
<br/>
<br/>Taliban with by eliminating all US or living past the time limit
<br/>
ENDTAB;


DISPLAYBRIEFING();