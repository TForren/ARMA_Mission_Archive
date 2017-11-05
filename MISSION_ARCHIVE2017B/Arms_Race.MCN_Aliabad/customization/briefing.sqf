#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
Kamel Al-Adwar is a well known arms dealer who has been supplying the Rustai-ye Aliabad region with weapons and munitions to anti-US militias. USMC forces have been sent to hunt down Kamel and his supply truck. US Forces will find themselves up against an increasing amount of Aliabad militia as more towns are supplied by Kamel.
<br/><br/>
Civilian population is dense and intel on Kamel's whereabouts is sparse. USMC will need to inquire with the local populace for intel. Some civilians will know where he is, some might have an idea, and others might just get angry at you asking. Aliabad civilians have a heavily mixed opinion of US Forces.
<br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Kamel Al-Adwar and his hired guns.
<br/>
<br/>
Equipment:<br/>
Soviet-era small arms with a mix of Czechoslovakian and Belgium rifles, old Russian RPG-7 and 18s, soft armor technicals.
<br/>
Strength:<br/>
~12 Arms Dealer Mercenaries. 
<br/>
<br/>
Location:<br/>
UNKNOWN.
<br/>
<br/>
MLCOA:<br/>
Kamel will continue to complete weapon orders to various towns in the region.
<br/>
<br/>
MDCOA:<br/>
Kamel's customers may rally against the USMC trying to find him.<br/>
SUICIDE BOMBER THREAT AMONG POPULACE EXPECTED<br/>
ROAD-SIDE IED THREAT EXPECTED<br/>
<br/>
<br/>
Defensive Fires:<br/>
N/A
<br/>
<br/>
Airthreat:<br/>
N/A
<br/>
<br/>
Morale:<br/>
HIGH.
<br/>
<br/>
CBRN Threat:<br/>
N/A
<br/>
<br/>
Future intentions:<br/>
Supply all of Pakistan with weapons.
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
USMC 1st Platoon staging at [<marker name='USMC'>048011</marker>].
<br/>
<br/>
b. Higher Units Mission:<br/>
1st Platoon is to find and eliminate Kamel or destroy his vehicle shipment.
<br/>
<br/>
c. Composition:<br/>
1st Platoon is comprised of 2x rifle squads and 1x HQ element.
<br/>
<br/>
d. Supporting fires:<br/>
N/A
<br/>
<br/>
e. Attachments/Detachments:<br/>
N/A
<br/>
<br/>
f. Assets:<br/>
2x HMMWV(M2)<br/>
2x HMMWV(unarmed)<br/>
2x MRAP (M2)<br/>
2x MRAP (unarmed)<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
LOCATE and ELIMINATE Kamel or DESTROY his weapons shipment vehicle.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
1st Platoon must gather intel on Kamel's whereabouts through the local population.<br/>
Once a position is found, the USMC must quickly move to eliminate the threat before it moves again.
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
As per PLT LDR's Discretion.
<br/>
<br/>
c. Main Effort<br/>
Stop the supply of weapons to Aliabad militias.
<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.
<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1st Platoon will begin their movements at 0515hrs or as altered by Company HQ (parameters)
<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.
<br/>
<br/>	
ENDTAB;

NEWTAB("IV. Sustainment:")
i) SOP Variations<br/>
Dress: None<br/> // List any changes to uniform/vest style here, for example - Woodland Camo
Equipment: None<br/>
Weapons: None<br/>
Vehicle Loading: None<br/>
<br/>
ii) Logistic Support<br/>
Replen Plan: None<br/> // Any special re-supply plans put here, example - Helicopters will bring a crate of ammunition after ....
Ammunition:<br/>
Small arms and AT weapons available in assigned vehicle assets.<br/>
Mortar Boxes and Mortar are ACE loaded into SGT vehicle.<br/>
IPE: Helmets and body armour are to be worn at all times. Spare helmets found in Platoon HQ's vehicle<br/>
<br/>
iii) Medical<br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
Morphine: 1 per Man.<br/>
ENDTAB;

// Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
i) Chain of Command:<br/>
No Change.<br/>
<br/>
ii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st Platoon, 1st Squad Rifles - Channel 1<br/>
1st Platoon, 2nd Squad Rifles - Channel 2<br/>
1st Platoon, HQ Squad - Channel 6<br/>
ENDTAB;

}; //End of west case

case east: {
NEWTAB("I. Situation:")
We have some shipments to do in Aliabad. We must fill the orders out before the Americans get in the way.
<br/><br/>
I, Kamel, will be relaying the information of the orders as they come in. (automatic). 
<br/><br/>
When we deliver weapons to a town, it will be occupied by friendly militia and they will send out hunter teams to slow the Americans.

ENDTAB;


NEWTAB("A. Enemy Forces:")
American Soldiers.
<br/>
<br/>
Equipment:<br/>
Modern American military small arms, armor, and equipment. Light armored and armed HMMWV.
<br/>
<br/>
Strength:<br/>
1x motorized rifle platoon of ~25 soldiers.
<br/>
<br/>
Location:<br/>
Coming in from the west.
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
Kamel's Army and Aliabad Militia
<br/>
<br/>
a. Assets:<br/>
1x Weapons Shipment Vehicle (Everyone starts in)<br/>
1x offroad pickup truck (PK)<br/>
1x landrover (M2)<br/>
<br/>
ENDTAB;

NEWTAB("II. Objective:")
Deliver weapons to the given towns as they come in (via chat radio).
ENDTAB;

};

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. 
<br/>
<br/>OPFOR Victory is achieved when 5 towns are supplied or USMC are at 75% casualties.
<br/>
<br/>USMC Victory is achieved When Kamel or his vehicle are eliminated.
<br/>
<br/>Towns are supplied with weapons when the weapons shipment vehicle is in the town center and has come to a complete stop.
ENDTAB;

NEWTAB("Game Mastering")
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();
#include "orbat.sqf" //DO NOT REMOVE 