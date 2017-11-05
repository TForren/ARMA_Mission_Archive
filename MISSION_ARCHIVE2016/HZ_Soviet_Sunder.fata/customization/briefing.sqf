#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case east: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
1982, 3 years into the Soviet-Afghan War. The Soviet Union MSV 138th Gds. MotRifle Brigade KAMENKA have been deployed to the Federally Administered Tribal Areas of Afghanistan. The Khalis faction, apart of the Islamic Unity of Afghanistan Mujahideen, have been responsible for a recent ambush on a KAMENKA supply convoy moving through the local area.
<br/><br/>
Motor rifle company ARKAIM has been sent to the ambush site to clear the area of Kjalis militiamen and secure what's left of the supply convoy.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Mujahideen Khalis Faction Militia
<br/>
<br/>
Equipment:<br/>
Russian small arms with a mix of Czechoslovakian and Belgium rifles, RPG-7 and 18s, soft armor technicals, and static KORD/DSHK.
<br/>
Strength:<br/>
Aged report from the ambushed convoy of ~30 Khalis fighters. 
<br/>
<br/>
Location:<br/>
Around the ambushed convoy[<marker name='convoy'>071019</marker>] with patrols and trenches around the winding ASR Sarkel.
<br/>
<br/>
MLCOA:<br/>
Khalis fighters will fire on Soviet MSV forces on sight.
<br/>
<br/>
MDCOA:<br/>
Khalis fighters may ambush Soviet MSV forces from hidden locations among the hills and bushes.
<br/>
<br/>
Defensive Fires:<br/>
N/A
<br/>
Airthreat:<br/>
N/A
<br/>
Morale:<br/>
LOW.
<br/>
CBRN Threat:<br/>
N/A
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
ARKAIM 2nd Platoon staging at [<marker name='ARKAIM'>059005</marker>].
<br/>
<br/>
b. Higher Units Mission:<br/>
ARKAIM Company is tasked with securing the ASRs of FATA to ensure supply convoy security. 
<br/>
<br/>
c. Composition:<br/>
ARKAIM Platoons are comprised of 3x Rifle Sections and 1x Platoon Commander each.
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
3x BTR-70 per platoon <br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
ELIMINATE all Khalis Militiamen and SECURE what's left of the ambushed convoy.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
ARKAIM 1 will hold the eastern cross roads to provide rear security to the motor rifle company.
ARKAIM 2 will up ASR Sarkel to clear out Khalis fighters and secure the ambushed convoy.
ARKAIM 3 will sweep the eastern ASR Maykop to clear out any local militia fighters that might threaten the flank security of ARKAIM 2.
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
ARKAIM 2 will move by BTR-70 along ASR Sarkel
<br/>
<br/>
c. Main Effort<br/>
ARKAIM Company's main effort is to clear out FATA of its Khalis activity.
<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.
<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
ARKAIM 2 will begin their movements at 1110hrs or as altered by Company HQ (parameters)
<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
All Soviet Forces are ONLY allowed to engage on Armed Hostile Contacts.
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
Small arms and ammo available in assigned vehicle assets.<br/>
<br/>
iii) Medical<br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
Morphine: 1 per Man.<br/>
ENDTAB;

// Unless you change to squad structure, leave this be
NEWTAB("V. Command & Signal:")
i) Chain of Command:<br/>
<br/>ARKAIM Company 2nd Platoon:
<br/>ARKAIM 921 - 2 Platoon, Platoon Commander
<br/>ARKAIM 921 - 2 Platoon, 1 Section (A - Section IC. B - Section 2IC.)
<br/>ARKAIM 922 - 2 Platoon, 2 Section (A - Section IC. B - Section 2IC.)
<br/>ARKAIM 923 - 2 Platoon, 3 Section (A - Section IC. B - Section 2IC.)
<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
2nd Platoon Net - Channel 1<br/>
<br/>
ENDTAB;

}; //End of west case

case independent: {
NEWTAB("I. Situation:")

<br/><br/>
Khalis fighters have successfully ambushed a soviet supply convoy moving through the area. 
<br/>
<br/>
The area of the ambush is a perfect location to strike against the soviets. Thus, Khalis fighters have begun digging in for the inevitable Soviet reaction forces.
ENDTAB;


NEWTAB("A. Enemy Forces:")
Soviet Union MSV.
<br/>
<br/>
Equipment:<br/>
Modern Soviet military small arms, APCs, and equipment.
<br/>
<br/>
Strength:<br/>
1x motorized rifle platoon of ~30 soldiers.
<br/>
<br/>
Location:<br/>
Moving up from the south of the winding road.
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
Khalis Mujahideen fighters.

a. Disposition:<br/>
Around the ambushed convoy[<marker name='convoy'>071019</marker>].<br/>
Patrols ~200m around the area with periodic entrenchments.
<br/>
<br/>
b. Assets:<br/>
1x offroad pickup truck (PK and supplies)<br/>
<br/>
ENDTAB;

NEWTAB("II. Objective:")
stop the Soviets from sweeping the area. It is vital that we hold control of this choke point.
ENDTAB;

};

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 60 minutes. 
<br/>
<br/>Khalis Victory is achieved when Soviet casualties exceed 45%
<br/>
<br/>BAF Victory is achieved when the Tonos docks are captured before at least 75% of the cocaine barrels are extracted.
<br/>
<br/>The BAF must have more players than SOC units at the docks to capture it.
ENDTAB;

NEWTAB("Game Mastering")
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();
#include "orbat.sqf" //DO NOT REMOVE 