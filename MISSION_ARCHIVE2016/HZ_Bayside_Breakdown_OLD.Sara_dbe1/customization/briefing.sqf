#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	Intel suggests that the Sahrani Liberation Army (SLA) have been dealing with the Russian Federation for arms and munitions to fuel their insurgency against the Sahrani Democratic Government.<br/><br/>
	Satellite imaging shows a Russian Federation Mi-8 has landed in the Paraiso airport and Russian Federation officials have been spotted entering what is believed to be an SLA command structure in the Chantico hotel.
	<br/><br/>
	IFF WASP along with attached SPECTRE Team have been deployed just North West of the Cabo Canino Beach to stage a raid on the current meeting and recover 
	any evidence of their dealings.
	<br/>
	<br/>
	The entire beach has been evacuated of all civilians and has been fully fortified by the SLA in order to safely conduct these meetings.
	<br/>However, BLUFOR must be careful not to destroy the HQ structure or run the risk of losing all evidence and resulting in mission failure.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Russian Federation small arms and equipment.<br/>
	SLA are likely to be dressed in militia and partisan military uniform.<br/>
	Any Russian Federation soldiers are likely to be dressed in Russian Federation uniform.<br/>
	<br/>
	Strength:<br/>
	~90 SLA fighters with a handful of Russian Soldiers.<br/>
	<br/>
	Location:<br/>
	Across the entire beach area of Chantico and the Paraiso airport.<br/>
	<br/>
	MLCOA:<br/>
	SLA forces will likely defend their visiting Russian Officials from the BLUFOR raid.<br/>
	<br/>
	MDCOA:<br/>
	The SLA may deploy all possible reinforcements to protect their meeting with the Russians all at once.<br/>
	<br/>
	Defensive Fires:<br/>
	3x Podnos mortar emplacements [<marker name='mortars'>MORTARS</marker>].<br/>
	<br/>
	Airthreat:<br/>
	2x SLA Mi-8TV3 on standby [<marker name='helos'>Mi-8TV3s</marker>].<br/>
	<br/>
	Morale:<br/>
	High with strong reinforcements.<br/>
	<br/>
	CBRN Threat:<br/>
	N/A.<br/>
	<br/>
	Future intentions:<br/>
	Conduct munitions trades with the Russian Federation.<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	1PLT staging on IFF WASP[<marker name='HQ'>IFF WASP</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with securing evidence of the SLA/Russian dealings.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 2x Rifle Squads, 1x WPNS Squad, and 1x HQ.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	2x MH-60S Seahawk pilot and crew. <br/>
	1x AH-1Z Viper pilot and gunner. <br/>
	1x AV-8B Harrier Pilot. <br/>
	<br/>
	f. Assets: <br/>
	2x RHIB (M2/Mk19) (Well Deck)<br/>
	2x RHIB (M2)(Well Deck)<br/>
	2x Towing Tractor repair vehicles (Flight Deck)<br/>
	Rearm/Repair/Refuel crates (Flight Deck)<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to locate and SECURE evidence of the SLA/Russian munitions dealings found in the impromptu command structure [<marker name='enemyHQ'>SLA HQ</marker>].
	<br/>
	<br/>
	SPECTRE Team is to INFLITRATE the Paraiso airport to<br/>
	neutralize the mortars [<marker name='mortars'>MORTARS</marker>]<br/> 
	stop the Mi-8TV3s from supporting the beach [<marker name='helos'>Mi-8TV3s</marker>]<br/>
	and [REDACTED]
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
	1st Platoon Net - Channel 1<br/>
	AIR SUPPORT JTAC Net - Channel 2<br/>
	SPECTRE TEAM CONTACT ENCRYPTED CHANNEL - Channel 9<br/>
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, 2nd Squad Rifles - Channel 2<br/>
	1th Platoon, 3rd Squad Weapons - Channel 3<br/>
	1th Platoon, Mortar Team - Channel 4<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	SPECTRE TEAM - Channel 9<br/>
	ENDTAB;

	if (player in [spectre1,spectre2,spectre3,spectre4]) then {
	NEWTAB("SPECTRE EYES ONLY:")
		The US Central Intelligence Agency has confirmed the location of Hans Voltor, a german Neuro researcher, who as been suspected of experimenting with new forms of white phosphorous on prisoners of the SLA.<br/>
		High command will not sit back and wait for a fair trial with evidence on Voltor.
		<br/><br/>
		For this reason SPECTREs unofficial mission is to eliminate Hans Voltor on sight. Armed or not.<br/>
		Hans Voltor has setup shop in the bunkers near the mortar implacements [<marker name='mortars'>MORTARS</marker>. He likes the sound of mortar fire while he works.
	ENDTAB;
};
	
}; 

};



NEWTAB("V. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Mission victory occurs when the evidence has been secured. Evidence is in the form of a blue binder. Scroll wheel to recover.
<br/>
<br/>SPECTRE team must refer to each other by their TANGO-# designation (in a deep raspy voice) during operation or run the risk of their identify and personal safety being threatened. ENDTAB;
<br/>
<br/>if you fall through/off the LHD, stop moving and use scroll wheel to be brought back on board.

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();