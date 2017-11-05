#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	A local village elder of the nearly-abandoned, poorly crafted town of <marker name='kadam'>Tal Kadam</marker> has ran 3 kilometers down to the US army 
	<marker name='revolver'>FOV REVOLVER</marker> pleading for help for his people. His town has been threatened by Islamic extremists and is requesting for the aid of FOB REVOLVER personnel.
	<br/>
	<br/>
	Intel confirms a large Islamic terrorist force is moving towards Tal Kadam from the North and North East.
	<br/>
	<br/>
	FOB REVOLVER personnel will need to mobilize and be in Tal Kadam as soon as possible to be of any use.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in old camo mixed with civilian clothing.<br/>
	<br/>
	Strength:<br/>
	~60 insurgent fighters with confirmed convoys of technicals and soft armor vehicles.<br/>
	<br/>
	Location:<br/>
	Foot mobiles coming from both Noth and North East of Tal Kadam and further out technicals to the North East.<br/>
	<br/>
	MLCOA:<br/>
	The Islamic extremists will sweep through Tal Kadam executing civilians as they go.<br/>
	<br/>
	MDCOA:<br/>
	The Islamic extremists may turn their attention to the aiding US Army personnel in the AO.<br/>
	<br/>
	Defensive Fires:<br/>
	UNKNOWN.<br/>
	<br/>
	Airthreat:<br/>
	NONE.<br/>
	<br/>
	Morale:<br/>
	HIGH but may waiver at the sight of BLUFOR<br/>
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
	1PLT at <marker name='revolver'>FOV REVOLVER</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has granted the go-ahead for FOB revolver on this mission to assist the Tal Kadam populace.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 3x Rifle Squads and 1x HQ element.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	6x pilot and co-pilot pairs. <br/>
	<br/>
	f. Assets: <br/>
	3x UH-60M Blackhawk (2 Pilot + 14). <br/>
	6x MH-6M Littlebird (2 Pilot + 6). <br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to stop the Islamic extremist killings in <marker name='kadam'>Tal Kadam</marker>.
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT is to stop the Islamic extremist killings in <marker name='kadam'>Tal Kadam</marker>.<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from the <marker name='HQ'>FOB REVOLVER</marker>.<br/>
	<br/>
	c. Main Effort<br/>
	Stop the mass killing of the Tal Kadam populace.<br/>
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
	1th Platoon, 3rd Squad Rifles - Channel 3<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End blufor
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Hard Time Limit is 80 minutes.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Mission victory occurs when the majority of the extremists are made combat ineffective.
<br/>
<br/>Mission failure occurs when the majority of the Tal Kadam civilians are killed.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();