#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	protests have broken out against a local industrial factory complex for high amounts of waste being dumped into nearby lakes. 
	<br/><br/>The Finnish Mayor, Markett Kokkoben, has decided to address this problem in person and has demanded he be responsible for quelling the protests and that the police force must directly get involved with the protests. 
	<br/><br/>Instead, the Mayor asks only for the security of himself at the protests.[<marker name='protest'>LC033974</marker>]<br/>
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Description:<br/>
	Local Finnish insurgent group: PFCON (People For the Conservation Of Nature) are heavily opposed to Mayor Markett Kokkoben's nature conservation and will surely attempt to stop him from quelling the protests.<br/>
	<br/>
	Equipment:<br/>
	Assumed Soviet-era small arms and equipment.<br/>
	The enemy are likely to be dressed in civilian camouflage to match the terrain.<br/>
	<br/>
	Strength:<br/>
	~15 insurgent fighters with possible reinforcing camps in the area.<br/>
	<br/>
	Location:<br/>
	UNKNOWN<br/>
	<br/>
	MLCOA:<br/>
	PFCON fighters will attempt to stop the Mayor from reaching the protests. They do not want to kill him as that will bring the attention of the Finnish Military on them.<br/>
	<br/>
	MDCOA:<br/>
	PEFTDON could potentialy cause the Mayor's death ending the mission entirely.<br/>
	<br/>
	Defensive Fires:<br/>
	N/A.<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	Finnish Police staging at a nearby gas station[<marker name='Police'>LC023955</marker>].<br/>
	<br/>
	b. N/A<br/>
	<br/>
	c. Composition:<br/>
	3x Entry Teams. 1x Marksman Team. 1x Coordinator
	<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	-1x MH-6 Police-Converted littlebird.<br/>
	<br/>
	f. Assets: <br/>
	-4x Police Trucks<br/>
	-1x MH-6<br/>
	-1x Fuel Truck<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	If SWAT get to the Mayor before the insurgents:ESCORT The Mayor to the protests[<marker name='protest'>LC033974</marker>] and GUARD him as he quells the situation.<br/><br/>
	IF Insurgents get to the Mayor before SWAT: RESCUE The Mayor from the Insurgents and then ESCORT him to the protests.[<marker name='protest'>LC033974</marker>]
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
	Finnish Police, Blue, Red, Green Teams- Channel 1<br/>
	Finnish Police, Marksman Team - Channel 2<br/>
	Finnish Police, Helicopter Pilots - Channel 3<br/>
	ENDTAB;
	
	NEWTAB("IV. Tactical Notes:")
	-The Mayor has a fear of flying and will refuse to board a helicopter. Thus, he must travel by ground.<br/><br/>
	-The Mayor is also a chain smoker and cannot run for more than a minute. He can be easily chased down by insurgents<br/><br/>
	-The Mayor starts at his homestead but must get to the protests while avoiding insurgents.<br/><br/>
	-Consider the use of the marksman inside the helicopter. The helicopter does NOT have skids and can take only a limited number of people.<br/><br/>
	<br/>
	ENDTAB;
};

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	We have successfully incited a protest against the waste-dumping industrial complex.
	<br/><br/>To guarantee the protest grows into a full revolt, we must make it look like the Mayor does not care about their concerns.
	<br/>We can do this by stopping him from showing up.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Finnish Police with fancy Finish Police weapons.
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	N/A<br/>
	<br/>
	Assets:<br/>
	-2x UAZ<br/>
	-1x Ural<br/>

	ENDTAB;

	NEWTAB("II. Mission:")
	KIDNAP The Mayor and prevent him from stopping the protests. <br/><br/>DO NOT KILL THE MAYOR.
	<br/>
	ENDTAB;
	NEWTAB("III. Tactical Notes:")
	-It does not matter where we kidnap him or where we take him from there. As long as he isn't getting to the protests in time, we will be victorious.<br/><br/>
	-The Mayor is unfit, gaining some pounds, and is a chain smoker. Cardio is not his strong suit. It should prove relatively easy to chase him down and handcuff him if he runs.<br/><br/>
	-The Mayor has a fear of flying and will refuse to board a helicopter.Thus, he must travel by ground.<br/><br/>
	<br/>
	ENDTAB;
}; //end EAST


case civilian: {
	NEWTAB("I. Situation:")
	I LOST MY KEYS!<br/>I have to get to the protests and calm the citizens but I don't know where I left my keys. They have to be somewhere here...The house? The old house? The storehouse?
	ENDTAB;

	NEWTAB("II. Mission:")
	Find my keys. Get to the protests. Quell the citizens.
	ENDTAB;
	
	NEWTAB("III. Notes:")
	-I gotta say, I hate flying. I can't do it. I refuse to get into a helicopter even if my life depends on it. I like my feet planted on the ground.<br/><br/>
	-I'm not in the same shape I used to be in so I can't run very much.<br/><br/>
	-Once I'm at the protests, I'll need to stand elevated infront of the protestors and calm them with spectacular speech craft. The stoop of the main office building should be fine.
	It will take me ~3 minutes to calm them.<br/><br/>
	------------------------------
	<br/><br/>
	In order to simulate the realism of trying to look for something around the house, the keys will spawn at a random time (0s-30s). Thus, they can suddenly be in a crate that you already looked in previously. You might luck out, you might not. We'll see..<br/><br/>Cheers,<br/>Hoizen.<br/><br/>ps. use ACE interact to unlock the car with the keys..
	ENDTAB;

}

}; //End of switch
/*
if (player in [civ1, civ2, civ3]) then {
NEWTAB("Being Afghan")
<br/>
It's a good day to be an Afghan civilian. 
<br/>
<br/>Normal Afghanny houses. 
<br/>Normal Afghanny sands. 
<br/>Normal Afghanny explosions.
ENDTAB;
NEWTAB("Supply Notes")
<br/>
Due to the daily explosions of Afghan, I always keep a crate of basic medical supplies somewhere in the house. In case of emergency, I also keep my old trusty TT33 in the cabinet.
ENDTAB;
}; //end of civs */

NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 50 minutes. AKA Time until the protests get violent and is OPFOR VICTORY.
<br/>
<br/>Mission ends if:<br/>
All BLUFOR are killed(OPFOR VICTORY)<br/>
All OPFOR are killed(BLUFOR VICTROY)<br/>
Or the Mayor is killed(YOU ALL FAIL).<br/><br/>
Mission ends if protests are quelled by the Mayor. It will take ~3 minutes for the Mayor to quell the riots.<br/>
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();