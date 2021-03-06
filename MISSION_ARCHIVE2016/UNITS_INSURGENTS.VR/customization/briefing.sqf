#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The United States Central Intelligence Agency has uncovered the position of an infamous Pakistani Warlord named Osema Ban-Layden
	<br/><br/>
	USMC Forces will soon begin their raid on this position to eliminate their target.
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
	dense compound of civilian buildings[<marker name='prototype'>HERE</marker>]
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
	1PLT at Southern Airfield[<marker name='HQ'>LC082020</marker>].<br/>
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
	N/A
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to ELIMINATE the Ace of Shovels: Osema Ban-Layden located somewhere in the compound [<marker name='prototype'>HERE</marker>].<br/>
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
	1st Platoon, HQ Squad - Channel 5<br/>
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
	Ammo crates for everyone found in various stronghold buildings in the compound marked:[<marker name='strongpoint1'>here</marker>],
	[<marker name='strongpoint2'>here</marker>],[<marker name='strongpoint3'>here</marker>],[<marker name='strongpoint4'>here</marker>], and [<marker name='prototype'>here</marker>].	<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	Defend Osema Ban-Layden with your lives.
	<br/>
	ENDTAB;
}; //end EAST

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 30 minutes.
<br/>
<br/>Everyone will be notified if Osema Ban-Layden leaves the compound.
<br/>
<br/>USMC win by eliminating Osema Ban-Layden. 
<br/>
<br/>Insurgents with by eliminating all USMC.
<br/>
ENDTAB;


DISPLAYBRIEFING();