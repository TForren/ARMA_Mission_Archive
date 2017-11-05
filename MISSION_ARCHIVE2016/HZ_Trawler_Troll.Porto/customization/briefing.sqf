#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
		1900 HRS <br/>
		HOSTAGE SITUATION <br/>
		SOMALIAN PIRATE AGGRESSION <br/>
		Pirates infesting the Somalian waters have hijacked a commercial fishing trawler and have taken the crew hostage. One of the hostages has escaped and 
		is roaming the island looking for a way out. Spanish Rescue Forces will move in to secure the Hostage and get him off the pirate infested island. Our
		only image of the hostage we are looking for is an old crew photo. Luckily, since he is a sailor, he probably hasn't changed his clothes since this picture was taken
		sometime before colour was invented.
		<img image='hostage.jpg'/>
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in outfits not dissimilar to civilians.<br/>
	<br/>
	Strength:<br/>
	~20 Somalian pirates with civilian vehicles.<br/>
	<br/>
	Location:<br/>
	North East end of the island of Porto.
	<br/>
	MLCOA:<br/>
	The pirates will attempt to scour the island looking for their escaped hostage.<br/>
	<br/>
	MDCOA:<br/>
	The pirates may focus their attention on wiping out the PMC forces rather than hunting for the hostage.<br/>
	<br/>
	Defensive Fires:<br/>
	N/A<br/>
	<br/>
	Airthreat:<br/>
	N/A.<br/>
	<br/>
	Morale:<br/>
	UNKNOWN<br/>
	<br/>
	CBRN Threat:<br/>
	N/A.<br/>
	<br/>
	Future intentions:<br/>
	To hold the hostage as a negotiation/trade asset.<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	PMC Team Apollo, Hades, Seidon, and Zeus will stage at the marked island [<marker name='HQ'>LC082020</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	N/A.<br/>
	<br/>
	c. Composition:<br/>
	PMC Forces are comprised of 4x Task Teams and 1x team coordinator.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	1x MH-6(SKIDS). <br/>
	2x Motor Patrol Boats. <br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	PMC Teams are tasked with rescuing the hostage from the island. Secondary objective to eliminate Pirate forces hunting the hostage.
	<br/>
	ENDTAB;

	
	NEWTAB("V. Command & Signal:")
	<br/>
	i) Chain of Command:<br/>
	No Change.<br/>
	<br/>
	iii) Frequencies:<br/>
	LR:<br/>
	1st Platoon Net - Channel 1<br/>
	<br/>
	SR:<br/>
	1st Team Apollo - Channel 1<br/>
	2nd Team Hades - Channel 2<br/>
	3rd Team Poseidon - Channel 3<br/>
	4th Team Zues - Channel 4<br/>
	Team Coordinator HQ - Channel 5<br/>
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	One of the crew from the Trawler we hijacked escaped. He can't be too far. Find him. Tie him up, and drag him back before the PMC get him.<br/>
	Lets be careful not to piss off the civilians here any more than we already have so watch your fire.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	PMC Forces with their fancy modern stuff. We can expect them to use helicopters and possibly boats.
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	<br/>
	Assets:<br/>
	-1x UAZ(7 seats)<br/>
	-6x offroad(4 seats)<br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	
	Get that fucking hostage back. Use your cable ties and drag his ass back into his hole. (The red slum container).<br/>
	<br/>
	ENDTAB;
	NEWTAB("III. Notes:")
	PMC most likely have HILARIOUSLY POWERFUL AND INSANELY UNNECESSARY defenses at their staging island so trying to go there won't be the best of ideas.
	<br/>
	ENDTAB;
}; //end EAST

case civilian: {
	NEWTAB("SITUATION")
	I was able to steal some flares before I escaped. I was unable to get anything else. I am still close to the pirate hideout here, I need to get further away.
	ENDTAB;
};
}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes.
<br/>
<br/>Mission will end when all PMC or Pirates are eliminated, hostage is rescued, killed, or captured.
<br/>
<br/>PMC win by eliminating all Pirates or getting the hostage to safety.
<br/>
<br/>Pirates win by eliminating all PMC or recapturing the hostage.
<br/>
<br/>To recapture the hostage, the Pirates must bring the hostage back to the red jail container and hold him for 12 minutes after.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();