#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	NAPA Fighters in Bagango have surrendered to the BAF stationed in the area. As the BAF garrion of Bagango has no prisoner capacity, the prisoners must be transported to the Cabo Base Militar[<marker name='end'>LC121176</marker>].
	NAPA considers any of its fighters who surrender as traitors and will likely attempt to stop the transport without any regard to the lives of the prisoners.
	<br/>
	<br/>
	Be aware that civilians will be present between Bagango and the prison camp.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians along with scavanged military equipment.<br/>
	<br/>
	Strength:<br/>
	~60 guerrilla fighters with possible reinforcing fighter groups.<br/>
	<br/>
	Location:<br/>
	Any wooded/urban area between Bagango and Cabo Base Militar<br/>
	<br/>
	MLCOA:<br/>
	NAPA Fighters will likely stage an ambush of the prisoner convoy and attempt to eliminate both BAF and the surrendered prisoners.<br/>
	<br/>
	MDCOA:<br/>
	NAPA may have equipment/assets with overwhelming fire superiority.<br/>
	<br/>
	Defensive Fires:<br/>
	UNKNOWN.<br/>
	<br/>
	Airthreat:<br/>
	UNKNOWN.<br/>
	<br/>
	Morale:<br/>
	HIGH<br/>
	<br/>
	CBRN Threat:<br/>
	UNKNOWN.<br/>
	<br/>
	Future intentions:<br/>
	Continue being NAPA<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	1PLT at Bagango Factory Garrison[<marker name='HQ'>LC142118</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with transporting NAPA prisoners to Cabo Base Militar[<marker name='end'>LC121176</marker>].<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Squads, and 1x WPNS Squad<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	1x Land Rover (TOW). <br/>
	1x Coyote (HMG). <br/>
	1x Coyote (GMG). <br/>
	2x Jackel (HMG). <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT TRANSPORT the NAPA prisoners to Cabo Base Militar[<marker name='end'>LC121176</marker>]. NAPA prisoners are in the woodland Truck (Donation of the US Army).
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT is to TRANSPORT the NAPA prisoners to Cabo Base Militar[<marker name='end'>LC121176</marker>]<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from Bagango Factory Garrison[<marker name='HQ'>LC142118</marker>]. From there 1PLT will TRANSPORT prisoners to Cabo Base Militar[<marker name='end'>LC121176</marker>].<br/>
	<br/>
	c. Main Effort<br/>
	1PLT's Main Effort will be to TRANSPORT the prisoners.<br/>
	<br/>
	d. Tasks to Subordinate Units<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	e. Coordinating Instructions<br/>
	i) Timings:<br/>
	1PLT will launch the operation at 1450hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
	1st Platoon, 1st Section Rifles - Channel 1<br/>
	1st Platoon, 2nd Section Rifles - Channel 2<br/>
	1th Platoon, 3rd Section Weapons - Channel 3<br/>
	1st Platoon, HQ - Channel 5<br/>
	ENDTAB;
};

case GUER: {

	NEWTAB("I. Situation:")
	Some of our NAPA Fighters have surrendered to the BAF forces in the area. We cannot allow them to leak any sensitive information. The transport must me destroyed along with the traitors.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	British Military grade weapons and assets.<br/>
	Standard British Military Gear.<br/>
	<br/>
	Strength:<br/>
	~20-30 BAF Soldiers.<br/>
	<br/>
	Location:<br/>
	Starting at Bagango, going to the North prison camp.<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	
	ENDTAB;
	
	NEWTAB("II. Mission:")
	Destroy the BAF prison transport along with the traitors.
	<br/>
	ENDTAB;


};

}; //End of switch

	
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