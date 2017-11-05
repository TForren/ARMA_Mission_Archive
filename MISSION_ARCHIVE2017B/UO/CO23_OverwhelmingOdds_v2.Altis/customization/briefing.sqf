#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
(OVERALL SITUATION) Our peacekeeping operation in the country of Altis has been interrupted by the Russians, we are attempting to push them back in order to force a peace treaty and avoid more bloodshed.<br/>
<br/>
The Russians are on the run, and company has ordered us to set up blocking positions in order to disrupt their attempts to reorganise in the town of Sofia.
ENDTAB;

NEWTAB("A. Enemy Forces:")
We estimate the the enemy to be in the company minus strength they have around 4 bmps at their disposal, with an attached T-72B3. We also know they have two squads which are mounted in urals, expect them first as they will be the fastest to manoeuvre.<br/>
Russian equipment consists of AK74Ms, RPG7s, RPG26s and PKMs.<br/>
The enemy know of our position, and will attempt to assault it before they push through it.<br/>
There is an airport to the north which we know contains a few Mi24s, most of which are already attemping to support the retreat, if the Russians take heavy contact at our position, they will attempt to call in an mi24 for support.<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
Our Reduced Air Assault Infantry Platoon located at LZ Papa.<br/>
Our sister platoon located at LZ lima.<br/>
ENDTAB;

NEWTAB("II. Mission:")
HOLD the blocking position until 1845.<br/>
<br/>
HOLD the blocking position until 1845.<br/>
ENDTAB;

NEWTAB("III. Execution:")
Commanders intent.
ENDTAB;

NEWTAB("IV. Service Support:")
		i) SOP Variations<br/>
		Dress: None<br/>
		Equipment: None<br/>
		Weapons: None<br/>
		Vehicle Loading: None <br/>
		<br/>
		ii) Logistic Support<br/>
		Replen Plan: None for 24h<br/>
		Ammunition: Each man carries his own ammunition.
		IPE: Helmets and body armour are to be worn at all times.<br/>
		<br/>
		iii) Medical<br/>
		CASEVAC: By foot or with platoon asset.<br/>
		Plan: Set up a Casualty Collection Point and extract casualties to this point.<br/>
		Stretchers: None<br/>
		Med Packs: Platoon medpack carried by Platoon medic.<br/>
		Morphine: Everyone carries their own morphine.<br/>
		<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")
		i) Chain of Command:<br/>
		1'6->1'1->1'4<br/>
		<br/>
		ii) Callsigns:<br/>
		1st Platoon, HQ Squad  - 1'6<br/>
		1st Platoon, 1st Squad - 1'1<br/>
		1st Platoon, 4th Squad - 1'4<br/>
		<br/>
		iii) Frequencies:<br/>
		LR:<br/>
		1st Platoon Net: 037.775<br/>
		<br/>
		SR:<br/>
		1st Platoon, HQ Squad - Channel 1<br/>
		1st Platoon, 1st Squad - Channel 2<br/>
		1st Platoon, 4th Squad - Channel 3<br/>
		<br/>
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
Mission by kidhnrk, used Nathans US Army orbat.<br/>
Uses the new Olsen framework for ARMA 3.<br/>
Mission time limit is 45 minutes<br/>
The attack starts within 2 minutes from start.<br/>
Mission ends when you destroy 80% of the enemies, or you take 50% casualties.<br/>


ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();