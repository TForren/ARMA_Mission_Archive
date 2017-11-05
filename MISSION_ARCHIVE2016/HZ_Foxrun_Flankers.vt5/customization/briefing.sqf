#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
	The position of a local insurgent arms dealer has been located in the NE areas of the Alabad Region[<marker name='town'>LC037032</marker>].
	<br/><br/>
	This arms dealer has supplied local insurgent groups with improvised fighting vehicles armed and armored with looted military static weapons and scrap metals scavenged from wrecked or abandoned
	military vehicles. 
	<br/><br/>
	British Armed Forces stationed at F.O.B Fox[<marker name='HQ'>LC025006</marker>] have been tasked with securing the area and any 
	military equipment found in the arms dealer's workshop
	<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~60 insurgent fighters with possible reinforcing camps in the area plus potential foot/vehicle patrols all across the Aliabad region.<br/>
	<br/>
	Location:<br/>
	Wolak[<marker name='town'>LC037032</marker>] and across the Aliabad Region.<br/>
	<br/>
	MLCOA:<br/>
	Insurgent forces will likely defend the workshop and call for assistance if needed.<br/>
	<br/>
	MDCOA:<br/>
	Insurgent forces may have a heavy presence at unexpected locations across Aliabad region and may ambush the BAF convoy outside of the Wolak AO.<br/>
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
	To continue arming local Insurgent groups.<br/>
	<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	BAF 1PLT at SF.O.B Fox[<marker name='HQ'>LC025006</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked CLEARING and SECURING the arms dealer's workshop.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Squads, 1x WPNS Squad, and 1x mortar team.<br/>
	<br/>
	d. Supporting fires:<br/>
	1x Mortar team (1'4) <br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	1x Coyote (HMG). <br/>
	1x Coyote (GMG). <br/>
	2x Jackel (HMG). <br/>
	2x Jackel (GMG). <br/>
ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to locate and CLEAR and SECURE the arms dealers workshop in Wolak[<marker name='town'>LC037032</marker>]
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT will move by convoy from F.O.B Fox to Wolak[<marker name='town'>LC037032</marker>] to locate and secure the workshop.<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will move via convoy.<br/>
	<br/>
	c. Main Effort<br/>
	Secure the workshop.<br/>
	<br/>
	d. Tasks to Subordinate Units<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	e. Coordinating Instructions<br/>
	i) Timings:<br/>
	1PLT will launch the operation at 1620hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
	<br/>
	ii) Control Measures:<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	iii) Rules of Engagement<br/>
	All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.<br/>
	<br/>	

	ENDTAB;

	NEWTAB("IV. Sustainment:")
	i) SOP Variations<br/>
	Dress: None<br/>
	Equipment: None<br/>
	Weapons: None<br/>
	Vehicle Loading: None<br/>
	<br/>
	ii) Logistic Support<br/>
	Replen Plan: None<br/>
	Ammunition: Each man carries his own ammunition.<br/>
	IPE: Helmets and body armour are to be worn at all times.<br/>
	<br/>
	iii) Medical<br/>
	CASEVAC: By foot.<br/>
	Stretchers: None<br/>
	Med Packs: Platoon medpacks carried by Platoon medic.<br/>
	Morphine: 1 per Man.<br/>

	ENDTAB;

NEWTAB("V. Command & Signal:")
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
	1st Platoon, 1st Section Rifles - Channel 1<br/>
	1st Platoon, 2nd Section Rifles - Channel 2<br/>
	1th Platoon, 3rd Section Weapons - Channel 3<br/>
	1th Platoon, Mortar Team - Channel 4<br/>
	1st Platoon, HQ - Channel 5<br/>
	ENDTAB;
};

case independent: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
	Business has gotten too profitable and the local British are coming to stop our operations. 
	<br/><br/>
	We must defend our workshop at all costs. Should the British successfully dismantle our operations, we will be unable to fuel the insurgency in Aliabad
ENDTAB;

NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	British Armed Forces with with equipment and light vehicles.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~20 British Soldiers.<br/>
	<br/>
	Location:<br/>
	UNKNOWN<br/>
	<br/>
	MLCOA:<br/>
	Attempt to dismantle our arms dealing operations. <br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	All across Aliabad.<br/>
	<br/>
	b. Composition:<br/>
	100 of Allah's soldiers all around the area with a high concentration of our forces in/around or workshop.<br/>
	<br/>
	c. Assets: <br/>
	1x UAZ (DshKM). <br/>
	1x Landrover (spg-9). <br/>
	3x Technical (PK). <br/>
	1x Crate of munitions ((EDS/Ammo). <br/>
ENDTAB;

	NEWTAB("II. Mission:")
	Maintain a presense in the arms dealer workshop compound and hold out against the british. If no insurgents (AI or player) are around the workshop, the mission is a failure.
	<br/>
	ENDTAB;


};

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 120 minutes.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>The workshop is considered SECURED when ALL insurgents in the town are eliminated.
<br/>
<br/>This is a test mission for map-wide DAC populating. Enemies and civilians are everywhere, not just in the AO. 
ENDTAB;


NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();