#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

	case west: 
	{ //If player is west he receives this briefing

		NEWTAB("I. Situation:")
		Forrward outposts have reported heavy contact with Russian MRR forces. Kovrov seems like the primary objective of the Russian attack, and expect the forrward elements any moment.
		ENDTAB;

		NEWTAB("A. Enemy Forces:")
		Enemy forces consist of 1x Russian mechanized company minus. The enemy has 5x BTR-80A APCs at their disposal and full infantry complement. They posses light arms, RPGs, and MGs.
		ENDTAB;

		NEWTAB("B. Friendly Forces:")
		Friendly Forces consist of 1x 2S19 Mista, aka m109a6 paladin, on standby and 1x platoon minus, which has been reorganized after losses. Friendly forces only posses light arms, MGs, and RPGs.
		ENDTAB;

		NEWTAB("II. Mission:")
		2 Platoon will DEFEND SP LEMON UNTIL H-Hour+70m.
		<br/>
		<br/>2 Platoon will DEFEND SP LEMON UNTIL H-Hour+70m.
		ENDTAB;

		NEWTAB("III. Execution:")
		Prepare a defence to counter the advancing Russians.
		ENDTAB;

		NEWTAB("IV. Service Support:")
		1x 2S19 Mista, aka m109a6 paladin, is on station for support, and is located outside the AO to the south. The Paladin has 25x HE, 15x DPICM, 15x Illum. 5x WP Smoke. No further support available.
		<br/>
		<br/>YOU ARE NOT ALLOWED TO FIRE ARTY INTO THE NFA NORTH OF YOUR POSITION.
		ENDTAB;

		NEWTAB("V. Command & Signal:")
		<br/>LR Radio Nets:
		<br/>Channel 1 - 2nd Plt
		<br/>Channel 1 - Hammer
		ENDTAB;
		
		NEWTAB("VI. Mission notes:") //This is shown for everyone
		If you are atleast 100m away from your SL you can teleport to him by using the action menu and choosing the teleport option.
		<br/>
		<br/>Timelimit is 70 minutes.
		<br/>
		<br/>BLUFOR IS NOT ALLOWED TO FIRE ARTY INTO NFA ANNA
		<br/>BLUFOR IS NOT ALLOWED TO FIRE ARTY INTO NFA ANNA
		<br/>BLUFOR IS NOT ALLOWED TO FIRE ARTY INTO NFA ANNA
		<br/>BLUFOR IS NOT ALLOWED TO FIRE ARTY INTO NFA ANNA
		<br/>
		<br/>Blufor defeat occurs 85 percent of blufor is dead
		<br/>
		<br/>Redfor defeat occurs when 75 percent of redfor is dead, or the 70m time limit is reached.<br/>
		<br/>
		<br/>This mission uses ACE Wounding medical system with United Operations Preset. Bable is on.
		ENDTAB;
		
	}; //End of west case

	case east: 
	{ //If player is east he receives this briefing
		NEWTAB("I. Situation:")
		Our Battalion is the most forward element on Finland, we have been tasked with seizing important terrain.
		ENDTAB;
		
		NEWTAB("A. Enemy Forces:")
		A single infantry section. They have 1x BTR-70, and only posses light arms and AT. Enemy HAS RPGs so be careful. They are entrenched.
		ENDTAB;
		
		NEWTAB("B. Friendly Forces:")
		Friendly Forces consist of a Motorized Rifle Battalion. Ref Service and Support.
		ENDTAB;
		
		NEWTAB("II. Mission:")
		Meteor 910 will SEIZE SP KOVROV NLT H-Hour+60m.
		<br/>
		<br/>Meteor 910 will SEIZE SP KOVROV NLT H-Hour+60m.
		ENDTAB;
		
		NEWTAB("III. Execution:")
		Move to contact and destroy.
		ENDTAB;
		
		NEWTAB("IV. Service Support:")
		3x BTR-80 with extra ammunition and supplies in storage.
		ENDTAB;
		
		NEWTAB("V. Command & Signal:")
		PRR Nets:
		<br/>N/A
		<br/>LRR Nets:
		<br/>Channel 1 - Meteor 910
		<br/>
		<br/>Radio Distribution:
		<br/>- Only crewmen get radios.
		<br/>- 1st Squads share callsign with the platoon leader.
		<br/>
		<br/>Conecpt of Communications:
		<br/>- All callsigns use Channel 1 for communications.
		ENDTAB;
		
		NEWTAB("VI. Mission notes:") //This is shown for everyone
		If you are atleast 100m away from your SL you can teleport to him by using the action menu and choosing the teleport option.
		<br/>
		<br/>Timelimit is 60 minutes.
		<br/>
		<br/>
		<br/>You lose if you take 35% casualties
		<br/>
		<br/>If the enemy has less than 1 combatant in the area, they will surrender.<br/>
		<br/>
		ENDTAB;
	};
}; //End of switch

	NEWTAB("Game Mastering") //This is shown for everyone
	If mission commanders agree to changes, go ahead.
	ENDTAB;

DISPLAYBRIEFING();