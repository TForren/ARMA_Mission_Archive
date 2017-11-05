#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do {

	case east: {
		NEWTAB("ORIENTATION POINTS")
			<br/>Front - 550 - one-story red roof structure in walled compound - OP-100
			<br/>Half-right - 800 - unnamed hill pair, north hill - OP-101
			<br/>Half-left - 700 - chapel on hilltop - OP-102
			<br/>Front - 1200 - Red Burger stand - OP-103
			<br/>Front-right - 1400 - water tower, white/blue - OP-104
		ENDTAB;

		NEWTAB("ENEMY")
			<br/>Elements of the FIA group, equipped with converted, armed civilian vehicles, occupying defensive positions around the objective area, likely to delay our pursuit of retreating AAF forces to the west. They may have support of AAF mortars or air assets, but this is unlikely.
			<br/>
			<br/>Reconnaissance has shown enemy vehicles located among the buildings northeast of OP-103. Likely enemy positions are OP-101, OP-102, and the rocky hilltop northwest of OP-101.
			<br/>
			<br/>Enemy reserve is unknown, likely to be irrelevant.
		ENDTAB;

		NEWTAB("HIGHER AND ADJACENT UNITS")
			<br/>2 PLT has established a blocking position to the north. 3 PLT is acting as a company reserve force.
			<br/>
			<br/>Friendly units are operating north of our AO.
			<br/>
			<br/>COY HQ is located at the solar facility near to 1PLT.
		ENDTAB;

		NEWTAB("MISSION")
			<br/>3 COY attacks in vicinity 'Edessa', eliminating enemy positions and clearing the path for pursuit of retreating AAF and FIA forces.
		ENDTAB;

		NEWTAB("ORDER")
			<br/>I order:
			<br/>
			<br/>a) Tasks to subordinate units
			<br/>
			<br/>1 PLT will advance and secure the hamlet 'Edessa'. Reconnaissance has indicated they are using the structures northeast of OP-103 heavily.
			<br/>
			<br/>2 PLT will establish a blocking position on the route north of 'Edessa'.
			<br/>
			<br/>3 PLT will be acting as a COY reserve.
			<br/>
			<br/>b) Tasks to artillery and other units
			<br/>
			<br/>Nil
			<br/>
			<br/>c) Tasks to NBC Defense
			<br/>
			<br/>No NBC weapons use is expected by the enemy. All forces shall report any observed use of NBC weapons via radio immediately.
			<br/>
			<br/>d) Readiness times
			<br/>
			<br/>Report of attack readiness by platoon leaders by 05/07, 05:00h
			<br/>Attack readiness: 05/07, 05:15h
			<br/>
			<br/>e) Signals
			<br/>
			<br/>1 SEC, 'Kilo'10', SR1
			<br/>2 SEC, 'Kilo'20', SR2
			<br/>3 SEC, 'Kilo'30', SR3
			<br/>HQ SEC, 'Kilo'01',  SR4
			<br/>
			<br/>1 PLT, 'Kilo'01', LR2
			<br/>2 PLT, 'Kilo'02', LR2
			<br/>3 PLT, 'Kilo'03', LR3
			<br/>3 COY, 'Kilo', LR4
			<br/>
			<br/>f) Location of Commander
			<br/>
			<br/>Commander will be located adjacent to 1PLT during the attack.
			<br/>
			<br/>g) Succession of Command
			<br/>
			<br/>My successor: Platoon Leader, 2 PLT
		ENDTAB;
	};

};

NEWTAB("TRUCK AND EQUIPMENT NOTES")
		<br/>The respawn location is east of Zaros as indicated by the 3PLT marker. There is a truck provided to get people from the respawn to the AO, and a driver slot to drive said truck. If you did not slot the driver, the truck is also at the 3PLT marker. The platoon driver can teleport to the truck if they are not within 100m of it. If the truck is destroyed or disabled, it will respawn at the 3PLT marker.
		<br/>
		<br/>The platoon's truck contains medical bags, as well as Titan and Igla launchers with two rounds each.
		<br/>
		<br/>Anyone can reload their kit to what it was at the initial spawn within 5 meters of the truck with the ACE Interact menu.
ENDTAB;

NEWTAB("GRENADE NOTES")
		<br/>I heard some confusion on which is which, so, words (thanks Wikipedia and/or FM 3-23.30):
		<br/>
		<br/>The RGO hand grenade (Ruchnaya Granata Oboronitel'naya, 'Defensive Hand Grenade') is a defensive Soviet fragmentation hand grenade. It consists of a double layered steel pre-fragmented body. It is very similar to the single-layered offensive/defensive aluminium-bodied RGN hand grenade. It uses the UDZS dual action fuze, which has both impact and time delay functions. The impact fuze arms after a pyrotechnic delay of 1 to 1.8 seconds. If the impact fuze has not triggered the grenade after 3.2 to 4.2 seconds a second pyrotechnic delay triggers the grenade. The fragments produced by the grenade generate a lethal radius of between 6 metres (20 ft) and 20 metres (66 ft), with the safety radius being 100 metres (330 ft).
		<br/>
		<br/>The RGN hand grenade (Ruchnaya Granata Nastupatel'naya, 'Assault Hand Grenade') is an offensive Soviet fragmentation hand grenade. It consists of a single layered aluminium pre-fragmented body. It is very similar to the defensive RGO hand grenade. The grenade shell consists of two internally serrated aluminium hemispheres. The UDZS fuze has both impact and time delay functions, the impact fuze arms after a pyrotechnic delay of 1 to 1.8 seconds. If the grenade strikes an object after this time a spherical lead shot filled impact weight will trigger detonation. If the grenade has not struck anything after 3.5 to 4 seconds the second pyrotechnic delay will detonate the grenade.
		<br/>
		<br/>The RGD-5 (Ruchnaya Granata Distantsionnaya) English 'Distance Hand Grenade' or 'Long-Range Hand Grenade', is a post-World War II Soviet anti-personnel fragmentation grenade, designed in the early 1950s. The grenade contains a 110-gram charge of TNT with an internal fragmentation liner that produces around 350 fragments and has a lethality radius of 25 metres. The weight of the grenade with the fuze fitted is 310 grams. Typically, the RGD-5 uses the 3.2 to 4 second delay UZRGM fuze, a universal Russian type which is also used in the RG-41, RG-42, and F1 grenades.
ENDTAB;

NEWTAB("MISSION NOTES")
		<br/>The mission is complete when the area around Edessa (400m radius) is occupied by friendly forces, and empty of enemy forces. Once that is achieved, the mission will end within a minute. The AO is a hard AO as defined by the red boxes.
		<br/>
		<br/>The weapon sights are technically for 5.56, but the 5.8 rounds used by the rifles in this mission are ballistically similar enough that they're accurate to at least 400m.
		<br/>
		<br/>Other stuff:
		<br/> ----	Mission maker/s: TinfoilHate
		<br/> ----	Respawn: Yes
		<br/> ----	Time Limit: 90 minutes
		<br/> ----	JIP: Teleport to Squad Leader
		<br/> ----	Flight Model: N/A
		<br/> ----	Medical: ACE (Server Settings)
		<br/> ----  End Conditions: Completion of objective with 70% casualties or fewer.
		<br/> ----  Auto Fail Condition: N/A
ENDTAB;

NEWTAB("Game Mastering")
	<br/>THIS MISSION IS NOT DESIGNED FOR GAME MASTERING AND SHOULD ONLY BE MANIPULATED FOR TECHNICAL, ADMINISTRATIVE OR DIAGNOSTIC PURPOSES. DO NOT BREAK MY SHIT.
ENDTAB;

DISPLAYBRIEFING();