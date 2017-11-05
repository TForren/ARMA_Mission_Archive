#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The IFF Wasp has been tasked with spearheading the penetration into Russian held territory on the island of Altis.
	<br/><br/>
	The forces launching from the IFF WASP will need to eliminate coastal patrols and secure a foothold anywhere below the red marked area for further USMC forces to move past and continue the advance later on.
	<br/>
	<br/>
	The entire beach has been evacuated of all civilians and MSV fortification is weak. Only 2 MSV outposts have been spotted in the area with scattered sentries and patrols.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Russian Federation small arms and equipment.<br/>
	Russian Federation soldiers are likely to be dressed in Russian Federation uniform.<br/>
	<br/>
	Strength:<br/>
	~20-30 MSV security forces patrolling the AO.<br/>
	~50-60 MSV QRF forces on standby.<br/>
	<br/>
	Location:<br/>
	Scattered patrols across the AO.<br/>
	MSV QRF is located North of the red marked AO limit along with further security forces of unknown strength.<br/>
	<br/>
	MLCOA:<br/>
	MSV security forces will likely call for QRF response if they are unable to handle the USMC themselves.<br/>
	<br/>
	MDCOA:<br/>
	the MSV QRF will arrive sooner than expected and catch the USMC forces still trying to fortify.<br/>
	<br/>
	Defensive Fires:<br/>
	Possible 2s3 Akatsiya and/or BM-21 Grad to be supporting the MSV QRF past the <marker name='limit'>AO LIMIT</marker>.<br/>
	<br/>
	Airthreat:<br/>
	Likely supporting attack helicopter(s) of unknown kind accompanying the QRF.<br/>
	<br/>
	Morale:<br/>
	High with strong reinforcements.<br/>
	<br/>
	CBRN Threat:<br/>
	N/A.<br/>
	<br/>
	Future intentions:<br/>
	Maintain control of the coastal villages.<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	1PLT staging on IFF WASP[<marker name='HQ'>IFF WASP</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with securing a foothold in MSV territory.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Squads, 1x WPNS Squad, and 1x HQ.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	2x UH-1Y Venom pilot and crew. <br/>
	1x AH-1Z Viper pilot and gunner. <br/>
	1x F-35B Lightning II Pilot. <br/>
	<br/>
	f. Assets: <br/>
	10x RHIB (Deployed from winch)<br/>
	1x CH-53 Auxilary Super Stallion. <br/><br/>
	2x Towing Tractor repair vehicles (Flight Deck)<br/>
	Rearm/Repair/Refuel crates (Flight Deck)<br/>
	<br/>
	Resupply:<br/>
	3x Infantry Resupply Boxes(Sling)<br/>
	2x Anti Tank Resupply Boxes(Sling)<br/>
	2x Medical Resupply Resupply Boxes (ACE cargo)<br/>
	1x Nightvision/non-zoom optics box in HQ room.<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is ASSAULT the coast around <marker name='selak'>Selakano</marker> and <marker name='Feres'>Feres</marker>. This can be anywhere on land and below the <marker name='limit'>AO LIMIT</marker>
	<br/>
	<br/>
	Following this, 1PLT is to DIG IN and create a secure foothold to DEFEND from the MSV counter-attack.
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
	1st Platoon Net - Channel 1<br/>
	AIR SUPPORT JTAC Net - Channel 2<br/>
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, 2nd Squad Rifles - Channel 2<br/>
	1th Platoon, 3rd Squad Weapons - Channel 3<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
	
	NEWTAB("IVB. Tactical Notes:")
	<br/>
	<br/>Any location below the <marker name='limit'>AO LIMIT</marker> will suffice for a potential foothold location.
	<br/>
	<br/>If fortifying a town, assigning sectors of responsibility is key. Staying too hidden in town will result in chaos as the town gets surrounded.
	<br/>
	<br/>If fortifying high ground, be sure to entrench and give weapons teams great field of view other the area.
	ENDTAB;

	
}; //blufor case

}; //end switch



NEWTAB("V. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes.
<br/>
<br/>Mission victory occurs when the QRF has been wiped out or the USMC hold their foothold long enough for further BLUFOR reinforcements.
<br/>
<br/>RHIB can be requested from the winch on the port side of the LHD. It is a bit iffy to get too. teleport back if you fall.
<br/>
<br/>If CO does not want to do multiple trips for infantry, one of the BARONs can crew the CH-53 instead of their UH-1Y.
<br/>
<br/>Do not use the elevators. They are glitchy as all hell. You will probably die.
<br/>
<br/>If you fall through/off the LHD, stop moving and use scroll wheel to be brought back on board.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
If the QRF is taking too long/is not activating, the admin should set forceReinforce = true;
ENDTAB;

DISPLAYBRIEFING();