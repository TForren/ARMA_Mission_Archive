#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The Chernarussian Movement of the Red Star (ChDKZ) are a communist revolutionary organization based in Chernarus and spreading into Finland.<br/>
	The ChDKZ goal is the reestablishment of a communist government throughout the Republic of Chernarus and Finland, effectively returning the countries back to old Soviet times.
	<br/>
	<br/>
	Recently, the ChDKZ have supiciously begun consolidating their forces in the <marker name='area'>North East Suomi forests</marker> for unknown reasons. 
	Limited intel HQ has available suggests the presence of 3x high-ranking ChDKZ officers. These ChDKZ officials are most likely leading this consolidation of ChDKZ troops.
	<br/>
	<br/>
	The civilian opinion of the local British Forces in <marker name='HQ'>FOB IRON WOOD</marker> is split. Some are in favor of the BLUFOR occupation and others are Pro-ChDKZ and may take up arms.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in old Soviet camouflage uniforms mixed with new Russian equipment.<br/>
	<br/>
	Strength:<br/>
	~60 insurgent fighters with possible light and heavy armor.<br/>
	Possible citizen milita who may take up arms against operating BAF in the area.<br/>
	<br/>
	Location:<br/>
	Scattered ChDKZ Encampments in and around the <marker name='area'>North East Suomi forests</marker>. ChDKZ officers will most likely be around the encampments and/or supply caches.<br/>
	<br/>
	MLCOA:<br/>
	the ChDKZ will most likely continue consolidation of their forces in the forests.<br/>
	<br/>
	MDCOA:<br/>
	The ChDKZ may employ the use of heavy armor and destroy BAF convoy vehicles during travel.<br/>
	<br/>
	Defensive Fires:<br/>
	UNKNOWN.<br/>
	<br/>
	Airthreat:<br/>
	NONE.<br/>
	<br/>
	Morale:<br/>
	MODERATE<br/>
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
	1PLT at <marker name='HQ'>FOB IRON WOOD</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with dissolving the ChDKZ troop consolidation operation.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Squads, 1x WPNS Squad, and 1x mortar team.<br/>
	<br/>
	d. Supporting fires:<br/>
	1x Mortar team (1'4) <br/>
	<br/>
	e. Attachments/Detachments:<br/>
	2x AW159 Wildcat pilot and co-pilot. <br/>
	<br/>
	f. Assets: <br/>
	1x MCV-80 Warrior (3 Crew + 7). <br/>
	3x FV-432 Bulldog (2 Crew + 8). <br/>
	3x PPV Ridgeback(M2) (2 Crew + 4). <br/>
	1x PPV Ridgeback(Mk19) (2 Crew + 4). <br/>
	<br/>
	1x Coyote (HMG). <br/>
	1x Coyote (GMG). <br/>
	2x Jackel (HMG). <br/>
	2x Jackel (GMG). <br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to LOCATE and ELIMINATE 3x high-ranking ChDKZ officials leading the consolidation somewhere in the <marker name='area'>North East Suomi forests</marker>.
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT is to ELIMINATE the 3x high-ranking ChDKZ officials while weeding out scattered enemy forces among the trees.<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from the <marker name='HQ'>FOB IRON HILL</marker>.<br/>
	<br/>
	c. Main Effort<br/>
	1PLT's Main Effort will be eliminate the ChDKZ officials.<br/>
	<br/>
	d. Tasks to Subordinate Units<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	e. Coordinating Instructions<br/>
	i) Timings:<br/>
	Time of Movement will be as per PLT LDR's Discretion.<br/>
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

}; //End blufor
	
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