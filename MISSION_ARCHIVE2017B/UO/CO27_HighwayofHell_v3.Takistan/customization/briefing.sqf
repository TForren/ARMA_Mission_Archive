#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")
Enemy Takistan Insurgents have taken control of <marker name='obj1'>OBJ Mosque</marker> and <marker name='obj2'>OBJ Mine</marker>.
<br/>
They are blocking an essential MSR (MSR Abad) that is used to reach our 
<br/>
friendly occupied <marker name='mb'>military base</marker> located northeast of Rasman.
<br/>
<br/>
We are located in the Southern most section of the town of <marker name='start'>Sakhe.</marker>
<br/>
We have been sent out to neutralize the Takistan Insurgents in OBJ Mine and OBJ Mosque.
ENDTAB;

NEWTAB("A. Enemy Forces:")
The Takistan Insurgents are a unorganized, low trained group.
<br/>
<br/>
Firearms:
<br/>
They may obtain AK's, PKM's, AKS-74U's, and RPG's.
<br/>
<br/>
Possible Enemy IED's.
<br/>
Support:
<br/>
A single enemy 50 cal. Technical was spotted by our Satalite Imaging System operating within each Objective, <marker name='obj1'>OBJ Mosque</marker> and <marker name='obj2'>OBJ Mine</marker>.
<br/>
<img image='core\TECH.jpg' width='243' height='262'/><br/>
<br/>
Enemy PID.
<img image='core\ENEM.jpg' width='502' height='1027'/><br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
We are located in the Southern most section of the town of <marker name='start'>Sakhe.</marker>
<br/>
<br/>
Civilians are located in and around all objectives, we are to try our best to preserve all civilian lives. They look and blend in with the takistan insurgents so be sure to PID.
<br/>
<br/>
We consist of a single USMC Platoon.
<br/>
<br/>
Support:
<br/>
2x M2 Equipped HMMWV's. (5 seats including gunner)
<br/>
2x 2D Transport HMMWV's. (8 seats)
<br/>
1x 4D Transport HMMWV's. (4 seats)
<br/>
1x AH-6M-H Little Bird (2 seats)
<br/>
<br/>
Frendly PID.
<img image='core\FREN.jpg' width='502' height='1027'/><br/>



ENDTAB;

NEWTAB("II. Mission:")
Your mission is to assault and clear <marker name='obj1'>OBJ Mosque</marker> and <marker name='obj2'>OBJ Mine</marker> of 95% of all Takistan Insurgents.
ENDTAB;

NEWTAB("III. Execution:")
CO's Discretion.
ENDTAB;

NEWTAB("IV. Service Support:")
Support:
1x AH-6M-H Little Bird
ENDTAB;

NEWTAB("V. Command & Signal:")
	Callsigns:
	<br/>
	HQ: 1'6
	<br/>
	1st Squad: 1'1
	<br/>
	2nd Squad: 1'2
	<br/>
	AH-6M-H: Birdy
	<br/>
	<br/>
	Frequencies:
	<br/>
	1'6: CH 1 LR - CH 6 SR
	<br/>
	1'1: CH 1 LR - CH 1 SR
	<br/>
	1'2: CH 1 LR - CH 2 SR
	<br/>
	Birdy: CH 1 LR - CH 3 SR
ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
End Conditions:
<br/>
Time limit is T+120 minutes.
<br/>
<br/>
Blufor:
<br/>
Failure: 85% Friendly Casualties.
<br/>
Victory: 85% of all Opfor in Both <marker name='obj1'>OBJ Mosque</marker> and <marker name='obj2'>OBJ Mine</marker> have been eliminated.
<br/>
<br/>
Opfor: 
<br/>
Failure: 85% casualties.
<br/>
Victory: 85% Blufor eliminated.
<br/>
<br/>
No vision impairments present. Good vision conditions.
<br/>
May 28, 2009. 18:00:00.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();