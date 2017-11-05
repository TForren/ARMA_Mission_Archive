#include "core\briefingCore.sqf" //DO NOT REMOVE

//Timurkalay [<marker name='town'>LC089052</marker>] 

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	December 24, 2014 2310 hrs - Santa's Sleigh was shot down by an insurgent MANPAD over the FATA province of Pakistan. 9IFID QRF forces have 
	recovered Santa's disabled sleigh and we have been informed by Santa himself that he still has three more houses to visit before night's end. 
	<br/><br/>Santa says he was saving the best for last. According to Company HQ, these three houses are known ISIS hideouts. After confirming this with Santa he reached into his sack 
	and pulled out three Demolition Satchel Charges. The 9IFID Task Force Helix now dubbed 'Santa's Finest' are to finish the job before 2400 hrs. 
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~80 insurgent fighters with possible reinforcing camps in the area.<br/>
	<br/>
	Location:<br/>
	All across FATA.<br/>
	<br/>
	MLCOA:<br/>
	ISIS Forces will likely defend their weapons caches for as long as they can.<br/>
	<br/>
	MDCOA:<br/>
	ISIS Forces may disable the sleighs mid-flight and destroy the sleighs along with the presents.<br/>
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
	Santa's Finest at Southern FOB[<marker name='HQ'>LC020003</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with delivering Santa's last three presents.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Assault Squads, and 1x HQ Team with attached JTAC.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A <br/>
	<br/>
	e. Attachments/Detachments:<br/>
	2x MH-6 Sleigh Little Bird pilot crew. <br/>
	<br/>
	f. Assets: <br/>
	2x MH-6 Sleigh Little Bird. <br/>
	1x Santa. <br/>
	8x Reindeer Goats. <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	Santa's Finest is to DELIVER provided GIFTS to marked HIDEOUTS in FATA.
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
	AIR SUPPORT JTAC Net - Channel 2<br/>
	<br/>
	SR:<br/>
	1st Platoon, 1st Santa's Finest - Channel 1<br/>
	1st Platoon, 2nd Santa's Finest - Channel 2<br/>
	1th Platoon, HQ - Channel 5<br/>

	ENDTAB;
};

}; //End of switch


NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 50 minutes. (End at Midnight)
<br/>
<br/>Mission will end when 75% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Santa's gifts can be found in both sleighs.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();