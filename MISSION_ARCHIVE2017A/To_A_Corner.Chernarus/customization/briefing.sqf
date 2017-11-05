#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

//Examples from Hoizen's Asset Smack Mission
//The jump to map location in the briefing is done with:
// <marker name='markername'>description(words or numbers)</marker> , example - [<marker name='train'>102114</marker>]

NEWTAB("I. Situation:")
<br/>
US Rangers traveling via UH-60 Blackhawk was shot down by Russian SAM sites over Chernogorsk. The helicopter crash landed right through a chicken coop and now there are chickens all over. Surviving US Personnel must wait for extraction. The crash was rough and there is a good chance the survivors are either lighly or heavily wounded
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
Russian Federation small arms and equipment.<br/>
Russian Federation soldiers are likely to be dressed in Russian Federation uniform.<br/>
<br/>
Strength:<br/>
~20-30 MSV BTR Infantry.<br/>
<br/>
Location:<br/>
MSV QRF is located North of Chernogorsk roughly 2 minutes away.<br/>
<br/>
Airthreat:<br/>
Likely supporting attack helicopter(s) of unknown kind aiding the search for survivors.<br/>
<br/>
Future intentions:<br/>
Eliminate crash site survivors.<br/>
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
Any remaining survivors of the UH-60 crash.
ENDTAB;

NEWTAB("II. Mission:")
SURVIVE long enough for reinforcements.
ENDTAB;

}; // end west

case east: { //If player is west he receives this briefing
NEWTAB("I. Situation:")
<br/>
US Rangers traveling via UH-60 Blackhawk was shot down by Russian SAM sites over Chernogorsk. Surviving US Personnel must wait for extraction. The crash was rough and there is a good chance the survivors are either lighly or heavily wounded. Russian MSV Platoon Meteor 91 has been sent to eliminate any survivors.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Equipment:<br/>
US Militiary small arms and equipment. No AT assets.<br/>
US Military Special Operations Personel are likely to be dressed in US uniform.<br/>
<br/>
Strength:<br/>
No more than what one UH-60 can carry.<br/>
<br/>
Location:<br/>
Crash site located in the heart of Chernogorsk. Exact position of survivors is unknown.<br/>
<br/>
Airthreat:<br/>
US Helicopters will likely be on their way to evac the survivors. ETA 40 minutes.<br/>
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
a. Disposition:<br/>
Meteor 91 at moving by BTR80s currently North of Chernogorsk.<br/>
Supporting Mi-8 located at the airfield west of Chernogorsk.<br/>
<br/>
b. Higher Units Mission:<br/>
Meteor 91 has been tasked with eliminating any survivors of the UH-60 crash.<br/>
<br/>
c. Composition:<br/>
Meteor 91 is Comprised of 3x Rifle Sections and 1x HQ<br/>
<br/>
d. Supporting fires:<br/>
N/A<br/>
<br/>
e. Attachments/Detachments:<br/>
N/A<br/>
<br/>
f. Assets: <br/>
3x BTR-80<br/>
ENDTAB;

NEWTAB("II. Mission:")
LOCATE and ELIMINATE any survivors of the UH-60 crash.
ENDTAB;

}; // end east

};

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes. // change the XX to what you set the time limit to
<br/>
<br/>US Victory is achieved when at least one blufor survives until the time limit or OPFOR sustain heavy casulaties.  // put win condition here
<br/>MSV Victory is achieved when all surviving blufor are eliminated.//put failure conditions here, example - Russian forces rescure the train (after 30 minutes of uninterrupted occupation), USMC suffer too many casualties(80%), or time limit is reached.<br/>
<br/>
ENDTAB;

NEWTAB("Game Mastering") //Just a reminder not to peak when playing on OpNight :P
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;


DISPLAYBRIEFING();

#include "orbat.sqf" //DO NOT REMOVE