#include "core\briefingCore.sqf" //DO NOT REMOVE

//Timurkalay [<marker name='town'>LC089052</marker>] 

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	HQ has confirmed heavy insurgent activity at the town of Timurkalay [<marker name='town'>LC089052</marker>] and have strong evidence of an insurgent weapons cache present in the town.
	<br/>
	<br/>
	The civilian opinion of the US Forces is neutral. Try to keep it that way.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~60 insurgent fighters with possible reinforcing camps in the area.<br/>
	<br/>
	Location:<br/>
	Timurkalay [<marker name='town'>LC089052</marker>].<br/>
	<br/>
	MLCOA:<br/>
	Afghan Militia Forces will likely defend their weapons cache for as long as they can.<br/>
	<br/>
	MDCOA:<br/>
	The Afghan Militia Forces may win the favor of the civilian population and use them to their advantage.<br/>
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
	1PLT at Southern Airfield[<marker name='HQ'>LC082020</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with destroying the weapons cache.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Squads, 1x WPNS Squad, and 1x mortar team.<br/>
	<br/>
	d. Supporting fires:<br/>
	1x Mortar team (1'4) <br/>
	<br/>
	e. Attachments/Detachments:<br/>
	2x UH-60 Blackhawk pilot and crew. <br/>
	2x AH6M-M Little Bird pilot crew. <br/>
	<br/>
	f. Assets: <br/>
	2x UH-60 Blackhawk. <br/>
	2x AH6M-M Little Bird. <br/>
	2x 4D open HMMWV(unarmed). <br/>
	2x HMMWV(unarmed). <br/>
	2x HMMWV(Mk19). <br/>
	2x HMMWV(M2). <br/>
	1x MRAP(M2). <br/>
	1x MRAP(unarmed). <br/>
	2x M1078A(M2). <br/>
	1x M1078A(MedCenter). <br/>
	1x M1078A(unarmed). <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to locate and DESTROY the insurgent weapons cache in Timurkalay [<marker name='town'>LC089052</marker>].
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT is to DESTROY the weapons cache in Timurkalay [<marker name='town'>LC089052</marker>]  <br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from the Southern Airfield[<marker name='HQ'>LC082020</marker>]. From there 1PLT will move to DESTROY the cache.<br/>
	<br/>
	c. Main Effort<br/>
	1PLT's Main Effort will be to destroy the weapons cache.<br/>
	<br/>
	d. Tasks to Subordinate Units<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	e. Coordinating Instructions<br/>
	i) Timings:<br/>
	1PLT will launch the operation at 1600hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, 2nd Squad Rifles - Channel 2<br/>
	1th Platoon, 3rd Squad Weapons - Channel 3<br/>
	1th Platoon, Mortar Team - Channel 4<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

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
Due to the daily explosions of Nagara, I always keep a crate of basic medical supplies somewhere in the house. In case of emergency, I also keep my old trusty TT33 in the cabinet.
ENDTAB;
}; //end of civs
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission has 10 or so different endings. some victory, minor victory, stalemate, etc. Do what you can of the mission described in the briefing and see what you get.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Explosives will be in crates at the HQ or can be found in any helicopter asset.
<br/>
<br/>Because BI can't into MP coding, helicopters are rearmed/repaired by force upon landing at their starting landing pad.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();