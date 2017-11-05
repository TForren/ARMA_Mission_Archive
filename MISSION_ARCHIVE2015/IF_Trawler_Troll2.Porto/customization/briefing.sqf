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
	1st Platoon, 1st Apollo Team - Channel 1<br/>
	1st Platoon, 1st Hades Team - Channel 2<br/>
	1st Platoon, 1st Seidon Team - Channel 3<br/>
	1st Platoon, 1st Zues Team - Channel 4<br/>
	1st Platoon, Team Coordinator HQ- Channel 5<br/>
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	You know one of the alive crew from that one ship we got the other day? Yeah well he escaped while we were having our barbecue. Cheeky bastard didn't even 
wait for us to bring him some scraps. Can't be too far. Find him. Tie him up, and drag him back before the PMC get him.<br/>
Lets be careful not to piss off the civilians here any more than we already have so watch your fire.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	PMC Forces with their fancy modern stuff. We can expect them to use helicopters and possibly boats.
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	<br/>
	Assets:<br/>
	-2x motor boat<br/>
	-1x UAZ<br/>
	-1x offroad<br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	
	Get that fucking hostage back. Use your cable ties and drag his ass back into his hole. (The red slum container).<br/>
	We've got a few speed boats on at the docks and a couple vehicles up and running if we need them.
	<br/>
	ENDTAB;
	NEWTAB("III. Notes:")
	PMC most likely have HILARIOUSLY POWERFUL AND INSANELY UNNECESSARY defenses at their staging island so trying to go there won't be the best of ideas.
	<br/>
	ENDTAB;
}; //end EAST

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes.
<br/>
<br/>Mission will end when 90% of your force is combat ineffective, hostage is rescued, killed, or captured.
<br/>
<br/>Mission uses repair script.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();