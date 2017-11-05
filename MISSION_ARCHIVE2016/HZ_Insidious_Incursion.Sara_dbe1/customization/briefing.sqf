#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	Russian VMF forces are soon to hit the northern coast of Sahrani to secure a foothold for the upcoming Russian liberation of Sahrani. RACS forces do not expect an assault and have left their Morthern areas insecure. With only a <marker name='town'>former prison (now converted to a RACS Artillery Base)</marker> in the area, the Northern coast will be the first location of conflict of the liberation.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	early 2000s United States supplied arms and munitions.<br/>
	The enemy will be dressed in Royal Army uniform.<br/>
	<br/>
	Strength:<br/>
	~30 RACS guard personnel stationed in <marker name='town'>former prison</marker>.<br/>
	Confirmed RACS stronholds <marker name='strong1'>Stronghold Jango</marker> and <marker name='strong2'>Stronghold Fett</marker>.<br/>
	~30 expected QRF personnel from <marker name='crown'>FOB CROWN</marker>.
	<br/>
	Location:<br/>
	[<marker name='town'>Former prison</marker>].<br/>
	<br/>
	MLCOA:<br/>
	RACS forces are unlikely to have much defense prepared and will be caught off guard.<br/>
	<br/>
	MDCOA:<br/>
	RACS forces will dig in heavily in their strongholds and inflect heavy casualties on the VMF with precise sniper fire.<br/>
	<br/>
	Defensive Fires:<br/>
	UNKNOWN.<br/>
	<br/>
	Airthreat:<br/>
	Possible CAS.<br/>
	<br/>
	Morale:<br/>
	UNKNOWN<br/>
	<br/>
	CBRN Threat:<br/>
	UNKNOWN.<br/>
	<br/>
	Future intentions:<br/>
	UNKNOWN<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	1PLT at moving by BTR80s currently at <marker name='HQ'>VMF Assault</marker>.<br/>
	<br/>
	b. Higher Units Mission:<br/>
	1PLT has been tasked with neutralizing the RACS artillery base and holding against any reaction forces.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 3x Rifle Sections and 1x HQ<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	2x BTR-80<br/>
	1x BTR-80A<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to SECURE and DESTROY the <marker name='town'>former prison</marker> and the RACS D-30 artillery batteries as well as defend from any counter attack.
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
	1st Platoon, 1st Section - Channel 1<br/>
	1st Platoon, 2nd Section - Channel 2<br/>
	1th Platoon, 3rd Section - Channel 3<br/>
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

}; //End blufor
	
NEWTAB("IV. Mission notes:") //This is shown for everyone
<br/>Time Limit is 70 minutes.
<br/>
<br/>Mission will end when 80% of your force is combat ineffective or mission objectives are either failed or completed.
<br/>
<br/>entrenching tools, wirecutters, explosives, and ammo/supplies in all BTRs.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
This mission is not designed for game mastering and should only be manipulated for technical, administrative or diagnostic purposes.
ENDTAB;

DISPLAYBRIEFING();