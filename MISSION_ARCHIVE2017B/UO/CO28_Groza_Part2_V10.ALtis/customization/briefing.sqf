#include "core\briefingCore.sqf" //DO NOT REMOVE

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>If you are atleast 100m away from your SL you can teleport to him by using the action menu and choosing the teleport option.
<br/>
<br/>Timelimit is 120 minutes.
<br/>
<br/>Victory is achieved by clearing Poliakko.<br/>
<br/>Defeat occurs when 75% of your force is combat ineffective or the 2h time limit is reached.<br/>
<br/
<br/>This mission uses CSE Wounding medical system with United Operations Preset.
ENDTAB;

switch (side player) do 
{ //Checks what team the player is on

	case west: 
	{ //If player is west he receives this briefing

		NEWTAB("V. Command & Signal:")
		//Text goes here
		ENDTAB;

		NEWTAB("IV. Service Support:")
		//Text goes here
		ENDTAB;

		NEWTAB("III. Execution:")
		//Text goes here
		ENDTAB;

		NEWTAB("II. Mission:")
		//Text goes here
		ENDTAB;

		NEWTAB("B. Friendly Forces:")
		//Text goes here
		ENDTAB;

		NEWTAB("A. Enemy Forces:")
		//Text goes here
		ENDTAB;

		NEWTAB("I. Situation:")
		//Text goes here
		ENDTAB;

	}; //End of west case


	case east:
	{
		NEWTAB("V. Command & Signal:")
		Command Location: AAC Airfield<br/>
		<br/>
		i) Chain of Command:<br/>
		Meteor 230->Meteor 231->Meteor 232->Meteor233<br/>
		<br/>
		ii) Callsigns:<br/>
		1st Platoon,HQ Squad  - Meteor 230<br/>
		1st Platoon,1st Squad - Meteor 231<br/>
		1st Platoon,2nd Squad - Meteor 232<br/>
		1st Platoon,3rd Squad - Meteor 233<br/>
		2nd Platoon,HQ Squad  - Meteor 234<br/>
		2nd Platoon,1nd Squad - Meteor 235<br/>
		2nd Platoon,2nd Squad - Meteor 236<br/>
		2nd Platoon,3rd Squad - Meteor 237<br/>
		<br/>
		iii) Frequencies:<br/>
		LR:<br/>
		1 Platoon Net: 037.775<br/>
		<br/>
		SR:<br/>
		1st Platoon,1st Squad - Channel 1<br/>
		1st Platoon,2nd Squad - Channel 2<br/>
		1st Platoon,3rd Squad - Channel 3<br/>
		1st Platoon,HQ Squad  - Channel 4<br/>
		2nd Platoon,1nd Squad - Channel 5<br/>
		2nd Platoon,2nd Squad - Channel 6<br/>
		2nd Platoon,3rd Squad - Channel 7<br/>
		2nd Platoon,HQ Squad  - Channel 8<br/>
		<br/>
		ENDTAB;

		NEWTAB("IV. Sustainment:")
		i) SOP Variations<br/>
		Dress: None<br/>
		Equipment: None<br/>
		Weapons: None<br/>
		Vehicle Loading: None <br/>
		<br/>
		ii) Logistic Support<br/>
		Replen Plan: None for 24h<br/>
		Ammunition: Each man carries his own ammunition. Extra ammunition located in Vehicles.<br/>
		IPE: Helmets and body armour are to be worn at all times.<br/>
		<br/>
		iii) Medical<br/>
		Location: Company Aid Post is located at AAC Airfield (Medical Truck).<br/>
		CASEVAC: By foot or with platoon asset.<br/>
		Plan: Set up a Casualty Collection Point and extract casualties to this point.<br/>
		Stretchers: None<br/>
		Med Packs: Platoon medpack carried by Platoon medic.<br/>
		Morphine: Only Platoon medic carries Morphine.<br/>
		<br/>
		iiii) Vehicle Load<br/>
		4x RPG7-Heat<br/>
		4x RPG7-Frag<br/>
		4x RPG7-Tandem<br/>
		1x RSHG2<br/>
		1x RPG-26<br/>
		10x AK74 mag<br/>
		15x RPK74 mag<br/>
		6x White smoke<br/>
		10x Grenade<br/>
		5x Epinephrine<br/>
		5x Morphine<br/>
		10x Packing Bandage<br/>
		5x PAK<br/>
		20x VOG25<br/>
		5x GRD40 white<br/>
		10x VG40SZ<br/>
		1x NVG<br/>
		2x 1p29 Scope<br/>
		ENDTAB;

		NEWTAB("III. Execution:")
		Intent: <br/>
		Company's mission is to secure the area around the Airfield.<br/>
		<br/><br/>
		1. Concept of the Operation<br/>
		1st Platoon(YOU) is tasked with capturing the town of Poliakko.<br/>
		2nd Platoon is tasked with capturing the town of Therisa.<br/>
		<br/><br/>
		2. Maneuver<br/>
		Platoon commander's discretion.<br/>
		1st Platoon is to stay on the east side of the red boundary.
		<br/><br/>
		ENDTAB;

		NEWTAB("II. Mission:")
		Capture Poliakko NLT 14:00.<br/>
		ENDTAB;

		NEWTAB("B. Friendly Forces:")

		a. Disposition:<br/>
		1st and 2nd Platoon located at the airfield, vicinity [<marker name='sss'>116118</marker>].<br/>
		<br/>
		b. Higher Units Mission:<br/>
		Company has been tasked with securing the area around the airfield.<br/>
		<br/>
		c. Composition:<br/>
		2x Russian Naval Infantry platoon,each equipped with 3x BTR80.<br/>
		<br/>
		d. Strength:<br/>
		1st and 2nd Platoon at full strength.<br/>
		<br/>
		e. Supporting fires:<br/>
		None.  <br/>
		<br/>
		f. Attachments/Detachments:<br/>
		None<br/>
		ENDTAB;

		NEWTAB("A. Enemy Forces:")
		Weather:<br/>
		Clear <br/>
		<br/>
		Enemy forces<br/>
		<br/>
		Equipment:<br/>
		Canadian Forces are most likely equipped with C7 Assault rifles, C6 and C9 machine guns and Carl Gustav recoilless rifles .<br/>
		They are most likely wearing CADPAT.<br/>
		<br/>
		Strength:<br/>
		2x Light Canadian Infantry Platoon.<br/>
		<br/>
		Location:<br/>
		1x platoon entrenched in Poliakko, 1x platoon entrenched in Therisa.<br/>
		<br/>
		Capabilities:<br/>
		Access to Carl Gustav launchers.<br/>
		<br/>
		MLCOA:<br/>
		If they are attacked they will most likely hold firm and defend Poliakko to the last man.<br/>
		<br/>
		MDCOA:<br/>
		Canadian Forces will setup ambushes and minefields around the town.<br/>
		<br/>
		Defensive Fires:<br/>
		None.<br/>
		<br/>
		Airthreat:<br/>
		Nato forces are holding an airfield in Central-Altis.It is unlikely that they will send planes against us.<br/>
		<br/>
		Morale:<br/>
		High<br/>
		<br/>
		CBRN Threat:<br/>
		The enemy pose no CBRN threat.<br/>
		<br/>
		Future intentions:<br/>
		Wait for Reinforcment and then push Russian Forces off Altis.<br/
		ENDTAB;

		NEWTAB("I. Situation:")
		Russia is at war. The Black Sea Fleet has been mobilized to take Altis and surrounding islands.
		The 810th Marine Brigade and the independent 382th Marine Battalion have taken the south of Altis.
		The 1613rd Artillery Battery is currently being moved onto the island and therefore will not be able to give any support.<br/>
		Our company is currently located at the AAC Airfield.<br/>
		The 19th Motor Rifle Division is currently underway to reinforce.<br/>
		To the hasty nature of this invasion , we weren't able to recon most of the Island.<br/>
		ENDTAB;
	};

}; //End of switch