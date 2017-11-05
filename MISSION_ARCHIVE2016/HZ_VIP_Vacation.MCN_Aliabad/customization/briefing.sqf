#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	A local village elder has suffered at the hands of the local Aliabad insurgents and has agreed to disclose everything he knows about them to the United Nations. However, the local insurgents are aware of this and the safety of the village elder is in jeopardy.
	<br/><br/>
	The United Nations have unofficially contracted ION, a PMC group operating in the Aliabad region, to ensure the safety of the village elder and to escort him to UN ground.
	<br/><br/>
	Military operations in the are have been seldom. Civilians are busy about their days.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	Vehicle assets ranging from civilian vehicles and technicals to soft armored transports.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	UNKNOWN<br/><br/>
	The enemy have the favor of a number of villages in the area. Be on the lookout for roadside IEDs.
	<br/>
	Location:<br/>
	UNKNOWN<br/>
	<br/>
	MLCOA:<br/>
	Insurgents will attempt to hunt down the village elder before he reaches the UN.<br/>
	<br/>
	MDCOA:<br/>
	Insurgnts may stage a devestating ambush on the PMC convoy killing PMC forces as well as the VIP.<br/>
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
	To assassinate the VIP.<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	PMC Contract Platoon starting at <marker name='PMC'>Katal</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	N/A.<br/>
	<br/>
	c. Composition:<br/>
	PMC Contract Platoon is comprised of team SWORD, SHIELD, PIKE, and an HQ element.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	(If enabled)<br/>
	-4x armored SUV(M134)<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	ION is to SECURE the <marker name='vipMarker2'>VIP</marker> and ESCORT him to the <marker name='un'>UN Border</marker>
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
	1st Platoon, 1st TEAM SWORD - Channel 1<br/>
	1st Platoon, 2nd TEAM SHIELD - Channel 2<br/>
	1st Platoon, 3rd TEAM PIKE - Channel 3<br/>
	1st Platoon, 4th TEAM SHOTEL - Channel 4<br/>
	1st Platoon, HQ Element - Channel 5<br/>
	ENDTAB;

	NEWTAB("IV. Tactical Notes:")
	<br/>
	-IEDs could be literally anywhere near roads. Be vigilant.
	<br/><br/>
	-SUVs cannot travel very fast offroad, but they offer mounted M134s.
	<br/><br/>
	-PMC may travel by foot as to not be limited to roads at the cost of the weapons and supplies of the SUVs
	<br/><br/>
	-It is vital that convoy ops sectors of responsibilities are followed. 
	<br/><br/>
	-Civilian plate carriers available for the VIP in the SUVs.
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	One of the local village elders has agreed to give away all information on us to the UN. However, the UN are not permitted to enter the Aliabad region. Before the elder reaches the UN, he must be eliminated. 
	<br/><br/>
	We have informants all over the area and they will keep us updated with where the elder is.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Hired PMC with modern and specialist weapons.
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	In Darshag.<br/>
	<br/>
	Assets:<br/>
	4x Datsun pickup (4 seats)<br/>
	4x Toyota Offroad (6 seats)<br/>
	4x Open UAZ (7 seats)<br/>
	1x Ural with barricade supplies (3 seats) (does not work)<br/>
	a few normal civilian vehicles <br/>
	<br/>
	Ammo Boxes:<br/>
	2x PKM<br/>
	2x Saiga12K<br/>
	2x SVD<br/>
	1x RPG-7<br/>
	1x RPG-18<br/>
	
	ENDTAB;

	NEWTAB("II. Mission:")
	ELIMINATE the <marker name='vipMarker2'>VIP</marker> before he reaches the <marker name='un'>UN Border</marker>.
	<br/>
	ENDTAB;
	
	NEWTAB("III. Notes:")
	The barricade ural has a scroll wheel to perform a one-time barricade deployment directly behind it. (does not work yet don't use)
	<br/>
	<br/>
	You can make your own technicals using the PKMs and the Toyota offroads
	ENDTAB;
}; //end EAST

case civilian: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	I have agreed to provide the UN with all information I have on the local insurgents provided I am safely escorted out of Aliabad.
	<br/><br/>
	My UN contact has informed me that my security will arrive within the minute. 
	ENDTAB;
	
}; //end EAST

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 50 minutes.
<br/>
<br/>Starting time is random. Could be night. Could be day. Who knows? (You do, check top right)
<br/>
<br/>Mission ends when VIP is killed or reaches the UN border or opfor respawn tickets are exhausted. 
<br/>
<br/>For each insurgent player, the entire insurgent faction gets +2 total respawns.
<br/>
<br/>PMC and the VIP do not respawn. 
ENDTAB;


DISPLAYBRIEFING();