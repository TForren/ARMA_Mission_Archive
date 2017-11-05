#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
A UN truck loaded with general munitions has been ambushed and captured by local FATA Militia. With UN supplies already low, it is critical that the UN regain ownership of the supplies. US SOF teams will be deployed to recapture the truck.
<br/><br/>
Civilian population is dense and intel on the truck's whereabouts is sparse. US Forces will need to inquire with the local populace for intel. Some civilians will know where he is, some might have an idea, and others might just get angry at you for asking. Aliabad civilians have a heavily mixed opinion of US Forces.
<br/>
ENDTAB;

NEWTAB("A. Enemy Forces:")
Pakistani Militia
<br/>
<br/>
Equipment:<br/>
Soviet-era small arms with a mix of Czechoslovakian and Belgium rifles, old Russian RPG-7 and 18s, soft armor technicals.
<br/>
<br/>
Strength:<br/>
~12 Militia. 
<br/>
<br/>
Location:<br/>
UNKNOWN.
<br/>
<br/>
MLCOA:<br/>
The Militia will likely try to hide the UN truck somewhere until the heat is off them.
<br/>
<br/>
MDCOA:<br/>
The Militia may acquire heavier equipment from their weapons caches in the area and potentially out-gun the US Forces.
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
US SOF Teams 
<br/>
<br/>
a. Disposition:<br/>
US SOF Platoon [<marker name='US'>LC068069</marker>].
<br/>
<br/>
b. Higher Units Mission:<br/>
1st Platoon is to find and eliminate Kamel or destroy his vehicle shipment.
<br/>
<br/>
c. Composition:<br/>
SOF Platoon is comprised of 4x TF Teams and 1x HQ element.
<br/>
<br/>
d. Supporting fires:<br/>
N/A
<br/>
<br/>
e. Attachments/Detachments:<br/>
-4x MH-6M transport littlebirds.
<br/>
<br/>
f. Assets:<br/>
-4x MH-6M<br/>
-1x RAVEN UAV<br/>
-4x SOV HMMWV<br/>
-1x MRAP<br/>
<br/>
ENDTAB;

NEWTAB("II. Mission:")
LOCATE and SECURE the UN Ammo Truck.
ENDTAB;

NEWTAB("III. Sustainment:")
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
IPE: Helmets and body armour are to be worn at all times.<br/>
<br/>
iii) Medical<br/>
Stretchers: None<br/>
Med Packs: N/A.<br/>
Morphine: 1 per Man.<br/>
ENDTAB;

// Unless you change to squad structure, leave this be
NEWTAB("IV. Command & Signal:")
i) Chain of Command:<br/>
No Change.<br/>
<br/>
ii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st Platoon, 1st SOF Team - Channel 1<br/>
1st Platoon, 2nd SOF Team - Channel 2<br/>
1st Platoon, 3rd SOF Team - Channel 3<br/>
1st Platoon, 4th SOF Team - Channel 4<br/>
1st Platoon, SOF HQ - Channel 6<br/>
<br/>
2nd Platoon, 1st Pilot Crew - Channel 7<br/>
2nd Platoon, 2nd Pilot Crew - Channel 8<br/>
2nd Platoon, 3rd Pilot Crew - Channel 9<br/>
2nd Platoon, 4th Pilot Crew - Channel 5<br/>

ENDTAB;

}; //End of west case

case east: {
NEWTAB("I. Situation:")
We have successfully ambushed and captured a UN Ammo Truck. It is filled with wonder.
<br/><br/>
We must keep the Americans away from the truck for as long as we can and at all costs.
<br/>We have a series of hidden weapons caches throughout the FATA region with better weapons and possibly technicals should we pass one.
ENDTAB;


NEWTAB("A. Enemy Forces:")
American Soldiers.
<br/>
<br/>
Equipment:<br/>
Modern American military small arms, armor, and equipment. Helicopters expected.
<br/>
<br/>
Strength:<br/>
~25 soldiers.
<br/>
<br/>
Location:<br/>
US Base.
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/>
<br/>
a. Assets:<br/>
-5x weapons caches across the area.
<br/>
ENDTAB;

NEWTAB("II. Objective:")
Keep the Americans away from the truck for as long as possible.
ENDTAB;

};

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 45 minutes. 
<br/>
<br/>OPFOR Victory is achieved on time limit or USMC are at 75% casualties.
<br/>
<br/>BLUFOR Victory is achieved when only BLUFOR are within 200m of the ammo truck.
<br/>
<br/>If weapons cache's are gone, assume they have been destroyed by BLUFOR.
<br/>
<br/>If OPFOR does not have any other vehicles besides the UN truck at start, assume they performed an on-foot ambushed. Vehicles can be found near weapons caches.
ENDTAB;

NEWTAB("Game Mastering")
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();
#include "orbat.sqf" //DO NOT REMOVE 