#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

//Breifing is default west only, change the side on the line below
case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
Russian MSV have dug in and begun skirmishing with US Forces stationed in the town of Frini. USMC LAR Platoon ARMADILLO 1 will perform reconnaissance by force on the right flank to weaken the MSV flank security and determine the right flank's overall strength. MSV QRF is expected so ARMADILLO will pull out before the situation becomes too threatening.
<br/><br/>
a. Area of Interest:<br/>
North Western Altis.
<br/><br/>
b. Area of Operations:<br/>
Expansive Rolling Hills. High defilade. Patches of dense woods. 
<br/><br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/>
Armed Forces of the Rusisan Federation (MSV)
<br/><br/>
Equipment:<br/>
Modern Russian Federation Equipment. 
<br/>
Strength:<br/>
Expected light flank security including static weapons, foot patrols, MSV scout vehicles (BRDMS).<br/>
MSV QRF expected to have APCs, IFVs, and possible heavy armor.
<br/>
Location:<br/>
AO marked Flank Security.
<br/>
<br/>
MLCOA:<br/>
MSV flank security forces will attempt to hold their ground against ARMADILLO and call in reinforcements if pushed back.
<br/>
<br/>
MDCOA:<br/>
MSV flank security may quickly call in a QRF that may rapidly advance on ARMADILLO personnel.
<br/>
<br/>
Defensive Fires:<br/>
N/A
<br/>
Airthreat:<br/>
N/A
<br/>
Morale:<br/>
HIGH
<br/>
CBRN Threat:<br/>
N/A
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
a. Higher HQ Mission and Intent:<br/>
Remove all Russian forces from Altis.
<br/><br/>
b. Composition:<br/>
LAR Platoon ARMADILLO 1 is comprised of 3x LAV-25 scout teams and 1x platoon HQ LAV-25.
<br/>
<br/>
c. Supporting fires:<br/>
N/A
<br/>
d. Attachments/Detachments:<br/>
N/A
<br/>
<br/>
e. Assets:<br/>
4x LAV-25
<br/>
ENDTAB;

NEWTAB("II. Mission:")
RECON by Force the right flanks. WEAKEN the flank security and EGRESS with sight of the MSV QRF.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
ARMADILLO will weaken the flank security and pull out before being heavily engaged by the MSV QRF.
<br/>
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
ARMADILLO 1 will move along the dirt road following the coast staying out of sight of the MSV assault force that is North West of Frini.
<br/>
<br/>
c. Main Effort<br/>
Weaken the flank security.
<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.
<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
USMC Forces will launch the operation at 0600hrs. Further time of Movement will be as per PLT LDR's Discretion.
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
1'1 Scout Team - Channel 1<br/>
1'2 Scout Team - Channel 2<br/>
1'3 Scout Team - Channel 3<br/>
1'4 HQ Team - Channel 4<br/>
ENDTAB;


}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. // change the XX to what you set the time limit to
<br/>
<br/>Victory is achieved when the flank security has been sufficiently weakened and ARMADILLO successfully extracted from the area.
<br/>Defeat occurs when ARMADILLO suffers heavy casualties.
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE