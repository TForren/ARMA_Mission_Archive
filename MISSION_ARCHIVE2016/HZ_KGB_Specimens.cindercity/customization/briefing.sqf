#include "core\briefingCore.sqf" //DO NOT REMOVE

switch (side player) do { //Checks what team the player is on

case east: { //If player is west he receives this briefing

	NEWTAB("I. Situation:")
	KGB have into experiment with Spetsnaz soldiers. Genetic mutation and chemical enhancements were the used. Chemicals got to head of soldiers.
	Spesnaz soldiers now into the insane. Defected against glorious Red Army. Glirous Red Army are into the eliminate insane Spesnaz soldier.
	ENDTAB;

	NEWTAB("A. Enemy Forces:")
	Equipment:<br/>
	Top of the line Russian Equipment.<br/>
	High quality body armor. Commissar Yarrick told us such armor did not exist.<br/>
	<br/>
	Strength:<br/>
	3 Spesnaz soldier.<br/>
	<br/>
	Location:<br/>
	Cinder City<br/>
	<br/>
	ENDTAB;

	NEWTAB("B. Friendly Forces:")
	a. Disposition:<br/>
	1PLT staging SOUTHWEST of target compound[<marker name='start'>LC062047</marker>].<br/>
	<br/>
	b. Higher Units Mission:<br/>
	Company has been tasked with the elimination of Ace of Shovels: Osema Ban-Layden.<br/>
	<br/>
	c. Composition:<br/>
	1PLT is Comprised of 1x Rifle Squad.<br/>
	<br/>
	d. Supporting fires:<br/>
	N/A<br/>
	<br/>
	e. Attachments/Detachments:<br/>
	N/A<br/>
	<br/>
	f. Assets: <br/>
	(If enabled)<br/>
	-4x HMMWV<br/>
	ENDTAB;

	NEWTAB("II. Mission:")
	1PLT is to ELIMINATE the Ace of Shovels: Osema Ban-Layden located somewhere in the compound <marker name='prototype'>HERE</marker>.<br/><br/>Should he run, chase him down.
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
	1st Platoon, HQ Squad - Channel 5<br/>
	ENDTAB;
};

case independent: { //If player is west he receives this briefing

	NEWTAB("I. RTHREKILLFHRSITUATIONALETRHGRWHYMURDERHJRE:")
	tghjtrhjrtwkhKILLrfegjurjhrthMURDERREJGRETHIRTJHSLAUGHTERREJGRHJRFTHBLOODTRGHJRFHNRFTGHDESTRUCTIONGRHJTHMANSLAUGHTERREGRJETHGRTH
	DEATHRGTKIHFJHRFKILLINGERGRGJRTGUNFIRERJGERRJTHEXPLOSIONSRJGRHJRGHRGF
	ENDTAB;
	
		NEWTAB("Note:")
	Saiga12 specimen generates both grenades and saiga 12 pellets.<br/>
	It is recommended to use mags up completely or drop them. New ammo will not be generated if near-empty mags are present.
	ENDTAB;

}; //end EAST

}; //End of switch

	
NEWTAB("VI. Mission notes:") //This is shown for everyone
<br/>Time Limit is 40 minutes.
<br/>
<br/>KGB Specimen can leap 50 feet in the air. They have shock absorbing boots and should take (most) fall damage with ease.
<br/>
<br/>KGB Specimen have also had their blood replaced with liquified ammution of their respective weapon. When ammo runs low, the specimens will generate new magazines for themselves.
<br/>
<br/>As the specimen are crazy, they uncontrollably blurt out russian things.
<br/>
<br/>Mission ends if all specimen or most of MSV are eliminated.
<br/>
ENDTAB;


DISPLAYBRIEFING();