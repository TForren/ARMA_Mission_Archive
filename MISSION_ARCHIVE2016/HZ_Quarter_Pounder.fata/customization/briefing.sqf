#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The FATA village of Tottah is experiencing the largest uprising and civil unrest in history. It seems as though everyone and their oldest of relatives are picking up AKMs and RPKs to fire wildly into the air. 
	<br/>
	<br/>
	There are very few peaceful civilians still standing in Tottah. For those lives at least, nearby station BAF will attempt to bring order to the chaos.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in old camo mixed with civilian clothing.<br/>
	<br/>
	Strength:<br/>
	~90 insurgent fighters and newly armed militia men. Possible technicals and soft armor.<br/>
	<br/>
	Location:<br/>
	In and around Tottah.<br/>
	<br/>
	MLCOA:<br/>
	The uprising will continue to spread and chaos will engulf the area.<br/>
	<br/>
	MDCOA:<br/>
	Everyone dies.<br/>
	<br/>
	Defensive Fires:<br/>
	UNKNOWN.<br/>
	<br/>
	Airthreat:<br/>
	NONE.<br/>
	<br/>
	Morale:<br/>
	HIGH<br/>
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
	1PLT at <marker name='HQ'>FOV REVOLVER</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	N/A.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 3x Rifle Squads, 1x Weapons Squad, and 1x HQ element.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A <br/>
	<br/>
	f. Assets: <br/>
	2x PPV Rideback (M2) (2 Crew + 4)<br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	Bring order to chaos in <marker name='tottah'>Tottah</marker>.
	<br/>
	<br/>
	Sweep the Tottah streets of all hostile and armed contact.
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT is to bring order to chaos in <marker name='tottah'>Tottah</marker>.<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from the <marker name='HQ'>FOB REVOLVER</marker>.<br/>
	<br/>
	c. Main Effort<br/>
	1PLT is to bring order to chaos.<br/>
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
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, 2nd Squad Rifles - Channel 2<br/>
	1th Platoon, 3rd Squad Rifles - Channel 3<br/>
	1th Platoon, 4rd weapons Rifles - Channel 4<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End blufor
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Hard Time Limit is 80 minutes.
<br/>
<br/>Mission will end when 80% of your force or the enemy force is combat ineffective.
<br/>
<br/>Mission victory occurs when the insurgeny uprising is made combat ineffective.
<br/>
<br/>Mission failure occurs when BAF suffer heavy casualties.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();