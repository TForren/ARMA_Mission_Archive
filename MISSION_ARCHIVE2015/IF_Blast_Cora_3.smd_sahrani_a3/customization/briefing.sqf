#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
<br/>
Achmed Rodriguez Gustavo, known as the True Master IED craftsman of Sahrani, has been designing and producing IEDs at ludicrous speeds as he trains more in what he considers the 'fine arts of explosive design'.
His business has grown at an alarming rate and has resulted in countless BLUFOR causalities across the Island of Sahrani. 
<br/><br/>
Current HWMMV assets at the US Checkpoint[<marker name='murica'>LC111104</marker>] require refueling before use. Company fuel truck is on its way from the west ETA 5 minutes.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Soviet era weaponry including AK47s, PKP Machine Guns, RPGs..<br/>
The enemy will be military, hunting, and civilian uniform.<br/>
<br/>
Strength:<br/>
VDV Company:<br/> 
Gustavo, his pupils, and all of his hired mercenaries numbering around 40+ total.
<br/>
Location:<br/>
Gustavo and hired mercenaries in and around the town of Corazol[<marker name='workshop'>LC131088</marker>]
<br/>
<br/>
MLCOA:<br/>
Gustavo and his hired mercenaries will defend their workshop from income US Forces using guerrilla tactics.<br/>
<br/>
MDCOA:<br/>
Gustavo and his mercenaries will deploy their IEDs against the US Forces causing mass destruction to both the town and the US manpower.<br/>
<br/>
Defensive Fires:<br/>
N/A.<br/>
<br/>
Airthreat:<br/>
N/A.<br/>
<br/>
Morale:<br/>
Moderate<br/>
<br/>
CBRN Threat:<br/>
The Enemy pose no CBRN threat.<br/>
<br/>
Future intentions:<br/>
To continue distribution of IEDs to local insurgent cells.<br/>
<br/>

ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
9IFID 1st Platoon located at US Checkpoint[<marker name='murica'>LC111104</marker>]<br/>
<br/>
b. Higher Units Mission:<br/>
N/A
<br/><br/>
c. Composition:<br/>
9IFID 1st Platoon is comprised of 1x PLT HQ and 2x Rifle squads.
<br/>
<br/>
d. Supporting fires:<br/>
None.  <br/>
<br/>
e. Attachments/Detachments:<br/>
1x Engineer Team (4-man)<br/>
<br/>
<br/>
f. Assets:<br/>
US:<br/>
4x HMMWV(unarmed).<br/>
	Cargo:Standard Infantry resupply<br/>
ENDTAB;

NEWTAB("II. Mission:")
Destroy Gustavo's Workshop and eliminate Gustavo.<br/>
ENDTAB;

NEWTAB("III. Execution:")

a. Concept of the Operation<br/>
9IFID 1st PLT will deploy from US Checkpoint[<marker name='murica'>LC111104</marker>] moving by HMMWV to Carozol to eliminate Gustavo and destroy his workshop.
<br/>
<br/>
b. Scheme of Manoeuvre<br/>
9IFID 1st PLT will move by HMMWV convoy.
Further movement will be as per PLT LDR's Discretion<br/>
<br/>
c. Main Effort<br/>
Destroy Gustavo's workshop.<br/>
<br/>
d. Tasks to Subordinate Units<br/>
As per PLT LDR's Discretion.<br/>
<br/>
e. Coordinating Instructions<br/>
i) Timings:<br/>
1st PLT Forces will launch the operation at 1115hrs. Further time of Movement will be as per PLT LDR's Discretion.<br/>
<br/>
ii) Control Measures:<br/>
As per PLT LDR's Discretion.<br/>
<br/>
iii) Rules of Engagement<br/>
Town of Corazol confirmed active civilian population. US/Insurgent Favor unknown.<br/>
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
Stretchers: None<br/>
Med Packs: N/A.<br/>
Morphine: 1 per Man.<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")

i) Chain of Command:<br/>
No Change.<br/>
<br/>
iii) Frequencies:<br/>
LR:<br/>
1st Platoon Net - Channel 1<br/>
<br/>
SR:<br/>
1st PLT Rifle Squad 1 - Channel 1<br/>
1st PLT Rifle Squad 2 - Channel 2<br/>
1st PLT HQ - Channel 4<br/>
<br/>

ENDTAB;

}; //End of west case

case GUER: { //If player is west he receives this briefing

NEWTAB("I. Situation:") //Indfor
THE AMERICANS KNOW OF MY OPERATIONS!
We have sold too much. It looks like our products have become too potent and now the Americans wish me dead. They are moving on us as we speak!
<br/>
I will have roughly 6 minutes to setup before the first Americans arrive on scene. 
<br/>
My workshop is HIGHLY VOLATILE and I must have at least 100 meters between any IEDs I setup and my workshop or else I run the risk of destroying my entire shop. 
<br/><br/>
ENEMY FORCES
<br/>
The Americans!
<br/><br/>
FRIENDLY FORCES
<br/>
My loyal soldiers. I have 30 or so scattered all around this city. They will take the bulk of the enemy but they cannot win alone. I must help them with my products.
ENDTAB;

NEWTAB("II. Mission:") //Indfor
I must defend my workshop with the help of my students. This will be a good trial for my Most Trusted Apprentice.
ENDTAB;

NEWTAB("III. Assets:") //Indfor
<br/>
All of my finished products can be found in the crates under my the workbench on the right as soon as I enter my workshop.
<br/>
I've also got a Jeep right outside the workshop. It has a few emergency IEDs in the back. 
ENDTAB;

NEWTAB("IV. Technical Notes:")//Indfor
<br/>
My IEDs work with both pressure plates and cellphones. When I arm an IED with a cellphone, it will go into speed dial. Otherwise, I can manually call numbers of IEDs with my cellphone. Cellphone numbers will be displayed when I arm IEDs with cellphone trigger.
<br/>
ENDTAB;

}; //end of INDFOR

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 70 minutes.
<br/>
<br/>BLUFOR Victory is acheived when Gustavo's workshop is destroyed and Gustavo himself is eliminated.<br/>
<br/>OPFOR Victory is acheived when BLUFOR are rendered combat ineffective(lost 60% of starting power) or time limit is reached.<br/>
<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();