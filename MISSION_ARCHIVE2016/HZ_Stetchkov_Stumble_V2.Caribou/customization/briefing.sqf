#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	Ultranationalist Ukrainian fighters have begun shelling Novorossiya positions. Russian VDV will move by BMDs to 
	eliminate the Ultranationalist grads.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in mixed military/civilian clothing with military-grade protective gear.<br/>
	<br/>
	Strength:<br/>
	70-90 Ultranationalist fighters with small arms and little or no protective gear. Possible technicals and BTR APCs. Possible heavy armor.<br/>
	<br/>
	Location:<br/>
	Oil Bay [<marker name='town'>LC030098</marker>].<br/>
	<br/>
	MLCOA:<br/>
	Afghan Militia Forces will likely defend their weapons cache for as long as they can.<br/>
	<br/>
	MDCOA:<br/>
	The Afghan Militia Forces may win the favor of the civilian population and use them to their advantage.<br/>
	<br/>
	Defensive Fires:<br/>
	3x BM-21 MLRS Grads.<br/>
	<br/>
	Airthreat:<br/>
	Unlikly.<br/>
	<br/>
	Morale:<br/>
	High<br/>
	<br/>
	CBRN Threat:<br/>
	Unlikly.<br/>
	<br/>
	Future intentions:<br/>
	Unlikly<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	VDV 1PLT deployed at [<marker name='HQ'>LC022035</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with destroying 3x Ultranationalist BM-21 GRADs.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 3x VDV BMD Mechanized Infantry and 1x HQ Element.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	3x BMD-4. <br/>
	1x GAZ-233.<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	VDV PLT is to locate and DESTROY the all BM-21 GRADs.
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT is to DESTROY the BM-21 MLRS GRADs: [<marker name='grad1'>GRAD #1</marker>], [<marker name='grad2'>GRAD #2</marker>], [<marker name='grad3'>GRAD #3</marker>]<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from [<marker name='HQ'>LC022035</marker>]. From there 1PLT will move to DESTROY the GRADs.<br/>
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
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad - Channel 1<br/>
	1st Platoon, 2nd Squad - Channel 2<br/>
	1th Platoon, 3rd Squad - Channel 3<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();