#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	HQ has decided on a hearts and minds operation for the small villages to the immediate west of the airfield.<br/>
	Huzrutiman[<marker name='supply_marker1'>LC060011</marker>],Chak Chak[<marker name='supply_marker2'>LC046007</marker>], and Ahmaday[<marker name='supply_marker3'>LC0350212</marker>] are all
	in need a food rations due to a poor seasonal harvest.
	<br/>
	<br/>
	Local insurgent fighters will surely attempt to stop the operation so tread lightly and carry a big stick.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~30 insurgent fighters with possible reinforcing camps in the area.<br/>
	<br/>
	Location:<br/>
	Western of the airfield among the small villages.
	<br/>
	MLCOA:<br/>
	Afghan Militia Forces will likely attempt to ambush the convoy while food is being delivered.<br/>
	<br/>
	MDCOA:<br/>
	The Afghan Militia Forces may use IEDs or even suicide bombers to attack the BLUFOR.<br/>
	<br/>
	Defensive Fires:<br/>
	Possible multiple rocket launcher technicals.<br/>
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
	1PLT at Southern Airfield[<marker name='HQ'>LC082020</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with delivering food rations to the small villages west of the airfield.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Sections.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	2x Jackel(HMG). <br/>
	2x Jackel(GMG). <br/>
	1x Coyote(HMG). <br/>
	1x Coyote(GMG). <br/>
	12x FOOD RATION CRATE. <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to DELIVER food supply rations to the following villages:<br/>
	Huzrutiman[<marker name='supply_marker1'>LC060011</marker>],Chak Chak[<marker name='supply_marker2'>LC046007</marker>], and Ahmaday[<marker name='supply_marker3'>LC0350212</marker>]<br/>
	and extract back to the airfield.
	<br/>
	ENDTAB;

	NEWTAB("III. Execution:")

	a. Concept of the Operation<br/>
	1PLT will move WEST of the airfield to deliver food rations.<br/>
	<br/>
	b. Scheme of Manoeuvre<br/>
	1PLT will stage and launch the operation from the Southern Airfield[<marker name='HQ'>LC082020</marker>]. From there 1PLT will move west to the small villages.<br/>
	<br/>
	c. Main Effort<br/>
	1PLT's Main Effort will be win the favor of the civilian population.<br/>
	<br/>
	d. Tasks to Subordinate Units<br/>
	As per PLT LDR's Discretion.<br/>
	<br/>
	e. Coordinating Instructions<br/>
	i) Timings:<br/>
	1PLT will launch the operation at 0820. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	Americans will attempt to win over the favor of the civilian population. we must not let this happen.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	American Soldiers with their fancy modern stuff. We can expect them to use light-weight vehicles with large guns.
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	Multiple pockets of insurgent fighters patrolling out and about the small villages.<br/>
	<br/>
	Assets:<br/>
	-2x DSHKM technical<br/>
	-3x unarmed offroads<br/>
	-1x (30%) AGS30 technical<br/>
	-1x (30%) SPG-9 technical<br/>
	-1x (20%) MLRS technical<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	Eliminate all American Soldiers and prevent them from delivering food to the villages.
	<br/>
	ENDTAB;
	NEWTAB("III. Notes:")
	Assuming Madiq actually brough the MLRS technical to the staging camps, he should have also put all the map tools and range tables in the back of the trucks including binoculars.<br/>
	Ahmed said he installed the car bomb in the Skoda we have. Hopefully it actually is a bomb this time and not a clock like the last time we told him to build a bomb. Detonator should be available inside the vehicle.
	<br/>
	ENDTAB;
}; //end EAST

}; //End of switch

if (player in [civ1, civ2, civ3]) then {
NEWTAB("Being Afghan")
<br/>
It's a good day to be an Afghan civilian. 
<br/>
<br/>Normal Afghanny houses. 
<br/>Normal Afghanny sands. 
<br/>Normal Afghanny explosions.
ENDTAB;
NEWTAB("Supply Notes")
<br/>
Due to the daily explosions of Afghan, I always keep a crate of basic medical supplies somewhere in the house. In case of emergency, I also keep my old trusty TT33 in the cabinet.
ENDTAB;
}; //end of civs
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission has 10 or so different endings. some victory, minor victory, stalemate, etc. Do what you can of the mission described in the briefing and see what you get.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Mission uses repair script.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();