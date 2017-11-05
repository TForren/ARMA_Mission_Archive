#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing
if ( !(player in [dp1,dp2,civ1,civ2,civ3]) ) then {
NEWTAB("I. Situation:")
an AH-64D operating in the area of Takistan has been shot down and has crash landed in the city of Zavarak[<marker name='zavarak'>LC098114</marker>]. The explosion and smoke will surely attract Afghan militia
forces from all directions.
<br/>
<br/>
As for the civilians of Zavarak, their opinion of the US Forces is neutral. Try to keep it that way.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Assumed Soviet-era small arms and equipment.<br/>
The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
<br/>
Strength:<br/>
UNKNOWN.<br/>
<br/>
Location:<br/>
UNKNOWN.<br/>
<br/>
MLCOA:<br/>
Afghan Militia Forces will likely investigate the crash site looking to loot it or finish off the surviving pilots.<br/>
<br/>
MDCOA:<br/>
The Afghan Militia Forces will take the surviving pilots hostage before reinforcements arrive to extract the pilots.<br/>
<br/>
Defensive Fires:<br/>
UNKNOWN.<br/>
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
Any Surviving Pilots of the AH-64 crash landing will be somewhere in the city of Zavarak[<marker name='zavarak'>LC098114</marker>].<br/>
<br/>
b. Higher Units Mission:<br/>
Company has been tasked with rescuing the AH-64 Pilots.<br/>
<br/>
c. Composition:<br/>
1PLT is Comprised of 2x Rifle Squads and 1x WPNS Squad.<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
2x UH-60 Blackhawk pilot and crew. <br/>
2x AH6M-M Little Bird pilot crew. <br/>
<br/>
f. Assets:
2x UH-60 Blackhawk. <br/>
2x AH6M-M Little Bird. <br/>
ENDTAB;

NEWTAB("II. Mission:")
1PLT is to RESCUE the downed AH-64D Pilots in Zavarak [<marker name='Zavarak'>LC098114</marker>] and DESTROY the AH-64D wreckage NLT 2120.
<br/>
<br/>
'Rescued' means in a BLUFOR helicopter and not within Zavark premises or at base.
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
1PLT is to RESCUE the downed AH-64D Pilots in Zavarak [<marker name='Zavarak'>LC098114</marker>] and DESTROY the AH-64D wreckage NLT 2120.<br/>
<br/>
b. Scheme of Manoeuvre<br/>
1PLT will stage and launch the operation from the Southern Airfield[<marker name='HQ'>LC082020</marker>]. From there 1PLT will move to RESCUE the downed pilots and DESTROY the ah-64 Wreck.<br/>
<br/>
c. Main Effort<br/>
1PLT's Main Effort will be to RESCUE the AH-64 Pilots and DESTROY the Apache wreckage.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1PLT will launch the operation at 2100hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
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
AIR SUPPORT JTAC Net - Channel 2<br/>
<br/>
SR:<br/>
1st Platoon, 1st Squad Rifles - Channel 1<br/>
1st Platoon, 2nd Squad Rifles - Channel 2<br/>
1th Platoon, 3rd Squad Weapons - Channel 3<br/>
1st Platoon, HQ Squad - Channel 4<br/>
<br/>
AIR SUPPORT, BARON-1 - Crew Channel 5<br/>
AIR SUPPORT, BARON-2 - Crew Channel 6<br/>
AIR SUPPORT, DAGGER-1 - Crew Channel 7<br/>
AIR SUPPORT, DAGGER-2 - Crew Channel 8<br/>

ENDTAB;
};//end of blufor platoon

if (player in [dp1,dp2]) then {
NEWTAB("I. Situation:")
<br/>
My AH-64D has been shotdown and we have crash landed in Zavarak. We managed to get a mayday out before hitting the ground. 
<br/>
<br/>Unfortunately, our map and radio were destroyed in the explosion. We will have to survive and hope that rescue is on the way.
<br/>I still have my DAGR which can get my coordinates.
ENDTAB;
};//emd of pilots 

}; //End of west case

}; //End of switch

if (player in [civ1, civ2, civ3]) then {
NEWTAB("Being Afghan")
<br/>
It's a good day to be an Afghan civilian in Zavarak. 
<br/>
<br/>Normal Afghanny houses. 
<br/>Normal Afghanny sands. 
<br/>Normal Afghanny explosions
<br/>... Wait.. 
<br/>that wasn't a normal Afghanny explosion...
ENDTAB;
NEWTAB("Supply Notes")
<br/>
Due to the daily explosions of Zavarak, I always keep a crate of basic medical supplies somewhere in the house. In case of emergency, I also keep my old trusty TT33 in the cabinet.
ENDTAB;
}; //end of civs
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission has 30-some different endings. some victory, minor victory, stalemate, etc. Do what you can of the mission described in the briefing and see what you get.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>Explosives will be in crates at the HQ or can be found in any helicopter asset.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();