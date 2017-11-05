#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	A VDV Supply convoy has been ambushed on its way to the Northern Takistani Airfield while going through the town of 
	<marker name='town'>Sakhe</marker> by Takistani Insurgents. The convoy was loaded with munitons so it is clear what the insurgents are after.
	<br/>
	<br/>
	A VDV quick reaction force(QRF) callsign OBOROTEN has been assembled just north of Sakhe at checkpoint <marker name='checkpoint'>Volk</marker>.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Local Takistani Insurgents<br/>
	Equipment:<br/>
	Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in old camo mixed with civilian clothing.<br/>
	<br/>
	Strength:<br/>
	~80 insurgent fighters with possible technicals and armored vehicles.<br/>
	<br/>
	Location:<br/>
	<marker name='town'>Sakhe</marker> as well as the surrounding wooded areas East and South West of Sakhe.<br/>
	<br/>
	MLCOA:<br/>
	The insurgents will likely still be looting and moving ammo crates to hiding places. Disorganization is expected.<br/>
	<br/>
	MDCOA:<br/>
	Nearby insurgent forces will consolidate to the town of Sakhe potentially surrounding the VDV QRF.<br/>
	<br/>
	Defensive Fires:<br/>
	UNKNOWN.<br/>
	<br/>
	Airthreat:<br/>
	NONE.<br/>
	<br/>
	Morale:<br/>
	Higher after successful ambush.<br/>
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
	VDV mechanized QRF OBOROTEN at <marker name='checkpoint'>Volk</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has tasked t.<br/>
	<br/>
	c. Composition:<br/>
	OBOROTEN is Comprised of 3x Rifle Sections and 1x HQ element.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A <br/>
	<br/>
	f. Assets: <br/>
	3x BTR-70. <br/>
	1x Command UAZ. <br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	OBOROTEN is to CLEAR the town of <marker name='town'>Sakhe</marker> or all hostile forces and DESTORY discovered ammo crates to deny the enemy of VDV resources.
	<br/>
	ENDTAB;


	NEWTAB("III. Sustainment:")
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

	NEWTAB("IV. Command & Signal:")
	<br/>
	i) Chain of Command:<br/>
	No Change.<br/>
	<br/>
	iii) Frequencies:<br/>
	LR:<br/>
	OBOROTEN Platoon Net - Channel 1<br/>
	<br/>
	SR:<br/>
	OBOROTEN, 1st Section Rifles - Channel 1<br/>
	OBOROTEN, 2nd Section Rifles - Channel 2<br/>
	OBOROTEN, 3rd SectionRifles - Channel 3<br/>
	OBOROTEN, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End blufor
	
NEWTAB("V. Mission notes:") //This is shown for everyone
<br/>Hard Time Limit is 60 minutes.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Mission victory occurs when the majority of the Insurgents are made combat ineffective and ammo crates are destroyed.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();