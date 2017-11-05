#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	The Austrian Government has recently become aware of the illegal smuggling of weapons and ammunition through Austria by an unnamed insurgent group. Just recently, Austrian Intelligence Operatives have 
	aquired fresh intel regarding the next shipment of weapons that have been scheduled to travel by convoy to Bruchwedel.[<marker name='town'>LC160768</marker>]
	<br/><br/>
	Austrian Jagdkommando special forces groups have infiltrated the wooded areas North of Bruchwedel[<marker name='hq'>LC158770</marker>] and have posted there under secrecy in preparation to strike the convoy.
	<br/><br/>
	While the Jagdkommandos waited, Intelligence Operatives have discovered a potential HVT among the convoy recognized due to multiple cases of commanding and coordinating the convoy along its journey.
	<br/><br/>
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians and scavenged camo.<br/>
	<br/>
	Strength:<br/>
	~80 insurgent fighters total.<br/>
	<br/>
	Location:<br/>
	~40 in Bruchwedel.[<marker name='town'>LC160768</marker>]<br/>
	~40 in the weapons shipment convoy coming from the [<marker name='weapons'>Northern MSR</marker>].<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	Jagdkommando operatives hidden among the trees North of Bruchwedel[<marker name='hq'>LC158770</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with Destroying the weapons shipment truck and eliminating the HVT.<br/>
	<br/>
	c. Composition:<br/>
	Jagdkommando .<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	1x M113(M2) <br/>
	1x M113(M240) <br/>
	1x M113(Mk19) <br/>
	1x M113(MEDICAL) <br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	Jagdkommando Operatives are to ELIMINATE insurgent fighters occupying Bruchwedel[<marker name='hq'>LC158770</marker>] and use the town to AMBUSH the weapons shipment convoy to DESTROY the ammunition truck.
	<br/>
	ENDTAB;

	NEWTAB("III. Command & Signal:")
	<br/>
	i) Chain of Command:<br/>
	No Change.<br/>
	<br/>
	iii) Frequencies:<br/>
	LR:<br/>
	1st Platoon Net - Channel 1<br/>
	<br/>
	SR:<br/>
	1st Platoon, 1st Squad Rifles - Channel 1<br/>
	1st Platoon, 2nd Squad Rifles - Channel 2<br/>
	1th Platoon, 3rd Squad Rifles - Channel 3<br/>
	1th Platoon, 4th Squad Rifles - Channel 4<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 80 minutes.
<br/>
<br/>Mission loss occurs if all M113s are destroyed or 85% of the GAL Forces are killed.
<br/>Mission victory occurs if at least one M113 makes it to the end marker.
<br/>
<br/>It is assumed that all M113s will stay in a convoy at the end. Should one or more of the m113s hit the end marker with others still in the AO, they will be considered abandoned. Crew and all.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();