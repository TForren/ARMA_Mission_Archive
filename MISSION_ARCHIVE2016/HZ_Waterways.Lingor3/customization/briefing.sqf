#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	Local drug cartels have been smuggling drugs in and out of Lingor. Recently, there has been a steady increase of cocaine abuse among the Lingor population.
	<br/>
	<br/>The Gcvernment Army of Lingor have traced the source of the widespread usage of cocaine to the Armadas Revolucionarias de Lingor who have a strong foothold among the northern jungles of Lingor.
	[<marker name='town'>LC030098</marker>].
	<br/>
	<br/>
	The Government Army of Lingor has been tasked with securing the latest shipment of cocaine before it can be sold to the Lingor people.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in jungle camo outfits.<br/>
	<br/>
	Strength:<br/>
	~60 cartel fighters with possible reinforcing camps in the area.<br/>
	<br/>
	Location:<br/>
	Designated town [<marker name='town'>LC030098</marker>].<br/>
	<br/>
	MLCOA:<br/>
	Cartel Forces will likely defend their foothold.<br/>
	<br/>
	MDCOA:<br/>
	Cartel Forces may ambush BLUFOR forces on their way up to the North of Lingor..<br/>
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
	1PLT at [<marker name='HQ'>LC082020</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with securing the latest delivery of cocaine.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Squads, 1x WPNS Squad, and 1x HQ.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	2x M113 armored turret(M2). <br/>
	1x M113(M2). <br/>
	1x M113(M240). <br/>
	4x Landrover (unarmed). <br/>
	1x SOV Landrover (AGS-30/PK). <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to locate and SECURE the latest cocaine shipment from the cartel in town [<marker name='town'>LC030098</marker>].
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT is to SECURE the cocaine in town [<marker name='town'>LC030098</marker>]<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from [<marker name='HQ'>LC082020</marker>].<br/>
	<br/>
	c. Main Effort<br/>
	1PLT's Main Effort will be to SECURE the cocaine.<br/>
	<br/>
	d. Tasks to Subordinate Units<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	e. Coordinating Instructions<br/>
	i) Timings:<br/>
	1PLT will launch the operation at 1235hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
	1st Platoon, 2nd Squad Rifles - Channel 2<br/>
	1th Platoon, 3rd Squad Weapons - Channel 3<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End blufor
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Secure the cocaine with scroll wheel. A hint notification will appear when successfully secured.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();