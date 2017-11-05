#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	A USMC platoon that has suffered heavy casualties is on EVAC to Nothern Kunduz. However, insurgent activity in the major villages will hinder the BLUFOR movement if not stop it completely.<br/>
	<br/>
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~30 insurgent fighters with armored assets and ATGMs.<br/>
	<br/>
	Location:<br/>
	Kar Shek and throughout the major village.
	<br/>
	MLCOA:<br/>
	Afghan Militia Forces will likely attempt to ambush the BLUFOR and disable the abrams.<br/>
	<br/>
	MDCOA:<br/>
	The Afghan Militia Forces may have a heavy-hitting armored asset and could very well destroy the abrams and eliminate the remaining BLUFOR.<br/>
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
	1PLT South of the major village[<marker name='HQ'>LC009016</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	N/A.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 1x Assault Squad.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	1x M1A2 TUSK II Abrams<br/>
	<br/>
	f. Assets: <br/>
	N/A. <br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to EVAC the AO to the NORTH of the major village of Kunduz without major casualties.:<br/>
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT will EVAC to the North of Kunduz..<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT is currently on the move at[<marker name='HQ'>LC082020</marker>]. From there 1PLT will NORTH through the major village.<br/>
	<br/>
	c. Main Effort<br/>
	1PLT's Main Effort will be survival.<br/>
	<br/>
	d. Tasks to Subordinate Units<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	e. Coordinating Instructions<br/>
	i) Timings:<br/>
	Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	ABRAMS CREW 1 - Channel 2<br/>
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	Americans are attempting to leave the area going through Chahar Dara with a tank. We must stop them.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	American Soldiers with their fancy modern stuff. We can expect them to use their unfathomably expensive tank.
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	Pockets of other insurgent fighters in the area.<br/>
	<br/>
	Assets:<br/>
	-2x DSHKM technical<br/>
	-3x unarmed offroads<br/>
	-1x BRDM2<br/>
	-1x Tank(?) or BMP-1<br/>
	-2x SPG-9<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	Destroy the Abrams before it leaves. Eliminating the majority of the BLUFOR will also result in OPFOR Victory.
	<br/>
	ENDTAB;
	NEWTAB("III. Notes:")
	The random vehicle can either be a T-34, BMP1, T-55, or T-72.
	<br/>
	ENDTAB;
}; //end EAST

}; //End of switch

if (player in [civ1, civ2, civ3]) then {
NEWTAB("Being Afghan")
<br/>
It's a good day to be an Afghan civilian. 
<br/>
<br/>Normal Afghanny houses. 
<br/>Normal Afghanny sands. 
<br/>Normal Afghanny explosions.
ENDTAB;
NEWTAB("Supply Notes")
<br/>
Due to the daily explosions of Afghan, I always keep a crate of basic medical supplies somewhere in the house. In case of emergency, I also keep my old trusty TT33 in the cabinet.
ENDTAB;
}; //end of civs
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission has 10 or so different endings. some victory, minor victory, stalemate, etc. Do what you can of the mission described in the briefing and see what you get.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Mission uses repair script.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();