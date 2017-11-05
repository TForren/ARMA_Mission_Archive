#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case west: { //If player is west he receives this briefing

NEWTAB("I. Situation:")

March 12, 1999 <br/>
<br/>
The local terrorist group that calls themselves the Panthera Group have taken two journalists and two of their local security guards hostage.  These
journalists were investigating how the Panthera Group was being funded by the locally grown opium crop.  While talking to some locals, Panthera showed 
up and took them to the compound marked on your map.  These hostages will likely be executed soon so our job is to get in there and get them out.
<br/>
<br/>
Satellite photo of the compound. 
<br/>
<img image='compound.jpg' width='400' height='500'/>
<br/>
<br/>
Hostages being filmed as part of a propaganda piece.
<img image='hostages.jpg' width='400' height='400'/>
 
ENDTAB;

NEWTAB("A. Enemy Forces:")
        Weather:<br/>
		Clear. <br/>
		<br/>
		Enemy forces<br/>
		<br/>
		Equipment:<br/>
		Various kinds of Russian equipment.<br/>
		We expect them to be lightly armed.<br/>
		<br/>
		Strength:<br/>
		15-20 fighters in and around the compound.<br/>
		Possible Squad Size QRF.<br/>
		<br/>
		Location:<br/>
		15-20 fighters located at [<marker name='panthera'>their compound</marker>]. <br/>
		QRF location unknown.<br/>
		<br/>
		Capabilities:<br/>
		Lightly armed and will fight to the last man.  QRF will likely be fighters transported by local vehicles.
		<br/>
		<br/>
		MDCOA:<br/>
		Fighters will hold their ground and try to inflict as many casualties before we get in their compound.<br/>
		<br/>
		Defensive Fires:<br/>
		None.<br/>
		<br/>
		Airthreat:<br/>
		None.<br/>
		<br/>
		Indirect Fire Threat:<br/>
	    None.<br/>
		<br/>
		Morale: High<br/>
		<br/>
		CBRN Threat:<br/>
		The enemy pose no CBRN threat.<br/>
		<br/>
		Future intentions:<br/>
		<br/>
ENDTAB;

NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
		Delta Force located at [<marker name='oxford'>FOB Oxford</marker>].<br/>
		<br/>
		b. Higher Units Mission:<br/>
		Rescue the hostages being held by the Panthera Group<br/>
		<br/>
		c. Composition:<br/>
		24 Delta Force split into 4 teams and 4 pilots for the little bird transports.<br/>
		<br/>
		d. Strength:<br/>
		Delta Task Force at full strength.<br/>
		<br/>
		e. Supporting fires:<br/>
		<br/>
		<br/>
		f. Attachments/Detachments:<br/>
		x4 Little Birds <br/> 
		<br/>
ENDTAB;

NEWTAB("II. Mission:")
Rescue and extract the hostages back to FOB Oxford
ENDTAB;

NEWTAB("III. Execution:")
Intent: <br/>
		Raid and rescue the hostages in the fastest and most efficient way possible.<br/>
		<br/><br/>
		1. Concept of the Operation<br/>
		Delta Force will helo insert near the compound using your breaching capabilities to make entrances and rescue the hostages without killing them.<br/>
		<br/>
		2. Maneuver<br/>
		Operation lead discretion.<br/>
		<br/><br/>
ENDTAB;

NEWTAB("IV. Service Support:")
x4 Little Birds
ENDTAB;

NEWTAB("V. Command & Signal:")
-CALL SIGNS-<br/>
Team 1 - Stig 1<br/>
Team 2 - Stig 2<br/>
Team 3 - Stig 3<br/>
Team 4 - Stig 4<br/>
<br/>
Little Bird 1 - Mosquito 1<br/>
Little Bird 2 - Mosquito 2<br/>
Little Bird 3 - Mosquito 3<br/>
Little Bird 4 - Mosquito 4<br/>
<br/>
-SHORT RANGE 343-<br/>
Stig 1- CH 1<br/>
Stig 2- CH 2<br/>
Stig 3- CH 3<br/>
Stig 4- CH 4<br/>
<br/>

-LONG RANGE-<br/>
<br/>
-148-<br/>
Stig Callsigns - CH 1<br/>
<br/>
-AN/PRC-117F-<br/>
AIRNET- CH 1

ENDTAB;

}; //End of west case

}; //End of switch
	
NEWTAB("VI. Mission notes:") //This is shown for everyone
JIP TRANSPORT<br/>
NO RESPAWNS<br/>
<br/>
END CONDITIONS<br/>
45 MINUTE TIME LIMIT<br/>
DEFEAT: BLUFOR CASUALTIES >65%<br/>
DEFEAT: ALL HOSTAGES KILLED<br/>
VICTORY: HOSTAGES EXTRACTED TO FOB OXFORD<br/>
<br/>
Mission by: Walsh
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();