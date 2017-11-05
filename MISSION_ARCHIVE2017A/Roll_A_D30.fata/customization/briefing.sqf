#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
February 27th 1991, The US assault on Jalibah Airfield has begun. US forces assaulting the airfield have been receiving artillery fire from Iraqi D-30 howitzers. The exact location of all the howitzers has yet to be determined but a general location of one nest has been determined to be at [<marker name='d30s'>0608</marker>]. CONDO company has been tasked with the neutralization of the guns and to prevent enemy artillery support during the assault on Jalibah Airifled. 
<br/><br/>
a. Area of Interest:<br/>
//Give the broader picture of the current conflict's sitation. Enemy occupation outside of and including the platoon's AO.
Jalibah Airfield is located 8 miles South of the general D-30 artillery area.<br/>
The Iraq Army mainly uses the local ASRs for supply convoys moving to and from the airfield but have now used the area's terrain to conceal its artillery.
<br/>
<br/>
b. Area of Operations:<br/>
Rolling hills with open grounds.<br/>
Vegitation can be concealing along with hill defilades.<br/>
Extremely rocky. Hard cover is always within arms reach.<br/>
Clears skies expected for the remainder of the current mission.<br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Iraq Army (Iraqi Ground Forces)<br/>
<br/>
Equipment:<br/>
Small Arms:<br/>
AKMs, AK-47s, AK-74s, RPK, PKM, RPG-7s, DSHK.<br/>
Vehicles:<br/>
UAZs, BTR-60s, BMP-1s.
<br/>
<br/>
Strength:<br/>
~1x Platoon worth of Iraqi Army Personnel.<br/>
~1x QRF group<br/>
<br/>
Location:<br/>
Operating or protecting the D-30 howitzers.<br/>
Iraqi QRF and HQ likely 3km west of the D-30 howitzer location.
<br/>
<br/>
MLCOA:<br/>
Iraqi Army Personnel will attempt to continue their fire missions while protecting the artillery nests from CONDO 1.
<br/>
<br/>
MDCOA:<br/>
Iraqi Army Personnel may be able to bring a powerful QRF to their location to counter attack CONDO 1.
<br/>
<br/>
Defensive Fires:<br/>
~3x D-30 artillery howitzers. Will most likely focus on their pre-existing fire missions.
<br/>
<br/>
Airthreat:<br/>
N/A
<br/>
<br/>
Morale:<br/>
MODERATE
<br/>
<br/>
CBRN Threat:<br/>
N/A
<br/>
<br/>
Future intentions:<br/>
Iraqi Army Personnel will continue to complete fire missions against US Personnel assaulting Jalibad Airfield.

ENDTAB;

NEWTAB("B. Friendly Forces:")
US Army CONDO Company
a. Higher HQ Mission and Intent:<br/>
CONDO Company has been tasked with the neutralization of all d-30 artillery nests in the region.
<br/><br/>
b. Composition:<br/>
CONDO Company is comprised of 3x Rifle Platoons and 1x Comapny HQ element operating in the region.<br/>
CONDO 1, 2, and 3 Platoons are comprised of 3x Rifle Squads, 1x Weapons Squad, and 1x Platoon HQ Element.<br/>
<br/>
<br/>
c. Supporting fires:<br/>
N/A
<br/>
<br/>
d. Attachments/Detachments:<br/>
N/A
<br/>
<br/>
e. Assets:<br/>
N/A
<br/>
ENDTAB;

NEWTAB("II. Mission:")
CONDO 1 is to LOCATE and DESTROY the D-30s in the area to prevent further fire missions on friendly forces.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
CONDO 1 will move to neutralize the generally located D-30 nests in the Northern section of the region while CONDO 2 and 3 will continue their search for any more D-30 nests in the South and Eastern areas of the region.
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
CONDO 1 will continue movement down ASR CHILI exploiting its easy navigability and break off towards the expected D-30 nest area when appropriate.
<br/>
<br/>
c. Main Effort<br/>
CONDO's main effort is to silence all D-30s in the region.
<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.
<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
CONDO 1 Platoon will begin their sweep at 0900hrs. Further time of Movement will be as per PLT LDR's Discretion.
<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Coalition Forces are ONLY allowed to engage on Armed Hostile Contacts.

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
Ammunition: Each man carries his own ammunition.<br/>
IPE: Helmets and body armour are to be worn at all times.<br/>
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
1'1 Rifle Squad - Channel 1<br/>
1'2 Rifle Squad - Channel 2<br/>
1'3 Rifle Squad - Channel 3<br/>
1'4 Weapons Squad - Channel 4<br/>
1'6, HQ Squad - Channel 6<br/>
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Victory is achieved when all three D-30s are destroyed.
<br/>Defeat occurs when 50% of the platoon is lost. 
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE