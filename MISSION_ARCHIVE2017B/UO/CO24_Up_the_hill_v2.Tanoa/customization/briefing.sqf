#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
The US Marines are deployed on Tanoa to restore peace and security and to end the Civil War.
<br/>Weather: Rain, Overcast
<br/>View Distance: About 400m - 500m depending on the fog and rain strength

ENDTAB;

NEWTAB("A. Enemy Forces:")
According to our UAV based reconnaissance we expect a force in size of a Squad supported by some smaller groups of rebels in vicinity of the hideout in <marker name='obj1'>NASUA</marker>.
They mostly use Russian made guns like AK-Series Assault Rifles and RPG-7 rocket launchers. They do not have access to armed vehicles but it is very likely that they field some crew served weapons like HMGs and SPG9 launchers against us.
Based on previous operations we expect them to use mines deny us to move effectively through the jungle, so watch your steps.
<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
<marker name='start_loc'>Our unit</marker> consists of 1x Rifle Squad, 1x Weapons (2x M240) Squad and an Platoon HQ team.
<br/><marker name='security'>The rest of our Platoon</marker> stays behind as reserve and security element (not present ingame).

ENDTAB;

NEWTAB("II. Mission:")
In order to secure the coastal road and form a forward post towards the rebel forces hidden in the jungle, our platoon will capture and hold a local rebel hideout in the small village of <marker name='obj1'>NASUA</marker>.
<br/>
<br/>Assault the REBEL HIDEOUT in <marker name='obj1'>NASUA</marker>.
<br/>Wait for further orders after you secured <marker name='obj1'>NASUA</marker>.
ENDTAB;

NEWTAB("III. Execution:")
<br/>Platoon Leaders discretion.
ENDTAB;

NEWTAB("IV. Service Support:")
Vehicles
<br/>Locked HMMWVs.
<br/>
<br/> Resupply
<br/>Our HMMWVs got ammunition and medical equipment on board.
<br/>
<br/> Medical
<br/>ONE Navy Corpsman attached to our platoon. He will lead the treatment of wounded personnel and will call out CCPs in coordination with the platoon lead.
<br/>The first two HMMWVs are unlocked without fuel and defined as medical vehicle. Setting for PAKs: stable condition and anywhere.
<br/>

ENDTAB;

NEWTAB("V. Command & Signal:")
<br/>Plt Net (148): 1 
<br/>
<br/>SR Net (343):
<br/> 1'1 - 1
<br/> 1'4 - 4
<br/> 1'6 - 6
<br/>
<br/>Callsigns
<br/> 1'1 - 1 Platoon, 1 Squad
<br/> 1'4 - 1 Platoon, Weapons Squad
<br/> 1'6 - 1 Platoon, Platoon Leader
<br/> 1'7 - 1 Platoon, Platoon Sergeant

ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
TIME LIMIT - 60 MINUTES
<br/>Mission is lost with over 70% casualties on BLUFOR side. Mission is won with over 90% of MILITIA fighters killed.
<br/>
<br/>Mission maker: znoop

ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();