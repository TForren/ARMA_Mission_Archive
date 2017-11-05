#include "core\briefingCore.sqf" //DO NOT REMOVE

NEWTAB("I. Situation:")
	<font color='#00b300'>* * BACK STORY * *</font> You can bypass this tab if you're in a rush * *
	<br/>
	<br/>After the last Russian push to expand their control over our territory we have got to change our approach. So far we were trying to avoid any collateral damage to local infrastructure by targetting only Russian equipment, but we had to make this difficult decision in order to try and slow them down. 
	<br/>
	<br/>We will move in to destroy 4 transformers in a local station, cutting electricity to Chernogorsk and surrounding areas.
ENDTAB;

NEWTAB("     A. Weather:")
	<font color='#00b300' size='15'>a. Weather:</font>
	<br/>Scattered clouds, no rain.
	<br/>
	<br/><font color='#00b300' size='15'>b. Light:</font> 
	<br/>First light 0430h.
	<br/>Last light 1935h.
	<br/>
	<br/><font color='#00b300' size='15'>c. Forecast:</font> 
	<br/>No changes.
	<br/>
	<br/><font color='#00b300' size='15'>d. Visibility:</font> 
	<br/>As set in parameters. Default is good.
ENDTAB;
		
NEWTAB("     B. Enemy Forces:")
	<font color='#00b300' size='15'>a. Composition</font>
	<br/>- Russian motorized regulars (infantry + BTR-80As and Tigrs). //Text goes here
	<br/>
	<br/><font color='#00b300' size='15'>b. Disposition</font>
	<br/>- Within the AO, the Russians occupy the towns of <marker name='cherno'>Chernogorsk</marker> and <marker name='balota'>Balota</marker>;
	<br/>
	<br/>- They routinely patrol <marker name='nina'>ASR Nina</marker> with vehicles;
	<br/>
	<br/>- They occupy the <marker name='obj'>transformer station</marker>, and they have road blocks on <marker name='rb1'>ASR Sofia</marker> and <marker name='rb2'>ASR Vilma</marker>.
	<br/>
	<br/><font color='#00b300' size='15'>c. Strength</font>
	<br/>- The <marker name='obj'>transformer station</marker> is usually guarded by a squad of infantry. 
	<br/>
	<br/>- Each road block is manned by a squad of infantry supported by their BTR-80A.
	<br/>	
	<br/>*** Be advised that the <marker name='rb2'>road block</marker> on ASR Vilma is positioned such that it can help in the defense of the <marker name='obj'>transformer station</marker> *** 
	<br/>		
	<br/>- The towns of <marker name='cherno'>Chernogorsk</marker> and <marker name='balota'>Balota</marker> are occupied by forces of unknown strength, estimated at a Company plus in total.
	<br/>	
	<br/><font color='#00b300' size='15'>d. MLCOA</font>
	<br/>- If attacked, the enemy will converge nearby forces into your position and may send a motorized squad-sized QRF from either <marker name='cherno'>Chernogorsk</marker> and <marker name='balota'>Balota</marker>. 
	<br/>
	<br/><font color='#00b300' size='15'>e. MDCOA</font>
	<br/>- The enemy will spot you before you initiate the raid, and will converge onto your position with more than one QRF of squad-sized plus and multiple vehicles each.
ENDTAB;

NEWTAB("     C. Friendly Forces:")
	<font color='#00b300' size='15'>a. Higher's Mission </font>(in order of importance):
	<br/>- To be perceived as a militia force independent from the national army;
	<br/>
	<br/>- To disable Russian supplies and equipment in the AO;
	<br/>
	<br/>- To escalate the conflict in order to gain national and international support;
	<br/>
	<br/><font color='#00b300' size='15'>b. Adjacent units' composition and disposition:</font>
	<br/>- None relevant.
	<br/>
	<br/><font color='#00b300' size='15'>c. Supporting Fires</font>
	<br/>- Nil.
	<br/>
	<br/><font color='#00b300' size='15'>d. Attachments/Detachments</font>
	<br/>- A UAV opperator, callsign Merlin, is attached to your platoon.
	<br/>
ENDTAB;

NEWTAB("     D. Civilian considerations:")
	The civilian population in the area is dense. Russian activities in the towns are keeping most people inside their homes, but civilian presence is to be expected at and around farm houses, as well as driving along roads.
	<br/>
	<br/>Russian roadblocks have probably halted most traffic on ASRs <marker name='vilma'>Vilma</marker> and <marker name='sofia'>Sofia</marker>, but light civilian traffic is expected on <marker name='nina'>ASR Nina</marker>.
	<br/>
	<br/><font color='#00b300'>RoE: </font>Do not engage civilians. Avoid risking damages to civilian structures and vehicles where possible.
	<br/>
	<br/>You are authorized to arrest civilians as a last resort, should they jeopardize their own safety or the mission's execution.<br/>
ENDTAB;

NEWTAB("     E. Terrain:")
	- The terrain consists mainly of farmland with forested areas.
	<br/>
ENDTAB;

NEWTAB("II. Mission:")
	<font color='#00b300' size='15'>a. Main task</font><br/>	
	- You are a platoon of light infantry tasked with DESTROYING TRANSFORMERS at the <marker name='obj'>transformer station</marker> no later than T+60min to cut electricity to  <marker name='cherno'>Chernogorsk</marker> and surrounding areas.
	<br/>
ENDTAB;

NEWTAB("III. Execution:")
	<font color='#00b300' size='15'>a. Commander's intent</font>
	<br/>- To raid the <marker name='obj'>transformer station</marker> and extract back to the <marker name='orv'>ORV</marker>.
	<br/>
	<br/><font color='#00b300' size='15'>b. Desired Endstate</font>
	<br/>- Friendly units safely back at the <marker name='orv'>ORV</marker>. Four transformers destroyed at the <marker name='obj'>transformer station</marker>. 
	<br/>
	<br/><font color='#00b300' size='15'>c. Concept of the operation</font>
	<br/>- The platoon will move from the <marker name='orv'>ORV</marker> at PLs' discretion to the <marker name='obj'>transformer station</marker> while tring to avoid detection. The UAV may be used to spot road patrols and enemy positions in the area. After the explosives are planted, the platoon will extract back to the <marker name='orv'>ORV</marker>.
	<br/>
	<br/><font color='#00b300' size='15'>d. Tasks and Coordinating instructions</font>
	<br/>- The element of <b>surprise</b> is paramount. The <marker name='obj'>transformer station</marker> is not heavily guarded, but once you are spotted the enemy forces will converge on your position;
	<br/> 
	<br/>- Use the UAV sparingly. If the Russians spot that thing loitering above their heads they <b>will</b> send reinforcements to the area to investigate. That would jeopardize our missions's execution.
	<br/>
	<br/>- During the time in which the satchels are being planted, it is paramount that the platoon is ready for the possible QRFs.
ENDTAB;

NEWTAB("IV. Service Support:")
<font color='#00b300' size='15'>a. Supplies</font>
<br/>- Your two vehicles, a pickup truck and a Zamak truck, are to be left at the <marker name='orv'>ORV</marker>;
<br/>
<br/>- Each truck has 3 large explosive charges (plus 3x clackers), as well as extra ammunition, backpacks, and 2x RPG-26 launchers;
<br/>
<br/>- Each truck has also 2x non-Apex uniforms for people without (remember to swap your bandages).
<br/>
<br/><font color='#00b300' size='15'>b. Casualties and damaged equipment</font>
<br/>- Casualties should be brought back to the <marker name='orv'>ORV</marker> for extraction.
<br/>
<br/>- Disabled vehicles and equipment are to be left behind.
<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")
	<font color='#00b300' size='15'>a. Command</font>
	<br/>Your platoon is comprised of three squads of infantry with a HQ element and a UAV operator attached.
	<br/>
	<br/>- Succession of command:
	<br/>....a. Platoon leader
	<br/>....b. Platoon sargent
	<br/>....c. Lisa 1 to 3 actuals
	<br/>
	<br/><font color='#00b300' size='15'>b. Signals</font>
	<br/>- Callsigns [SHORT RANGE]
	<br/>
	<br/>....Lisa 0 [4]
	<br/>....Merlin (UAV Operator) [4]
	<br/>....Lisa 1 [1]
	<br/>....Lisa 2 [2]
	<br/>....Lisa 3 [3]
	<br/>
	<br/>- Radios are pre-set.
	<br/>
	<br/>- Long-range net channel 1: 152 radios for squad leaders, team leaders, sniper, and UAV operator.
ENDTAB;
		
	
NEWTAB("VI. Mission notes:")
	- The AO is limited to the brighter area of the map. You can't go into the darkened area.
	<br/>
	<br/><font color='#00b300'>END CONDITIONS</font>
	<br/>- Time limit per params:, default 60 minutes (defeat);
	<br/>
	<br/>- 80% friendly casualties (defeat);
	<br/>
	<br/>- Militia is spotted in the AO and returns towards the <marker name='orv'>ORV</marker><br/>
	<br/>	
	<br/><font color='#00b300'>VICTORY CONDITIONS</font>
	<br/>Outcomes after returning towards the <marker name='orv'>ORV</marker>:
	<br/>
	<br/>- Kill more than one civilian (fail);
	<br/>
	<br/>- More than 60% casualties (fail);
	<br/>
	<br/>- More than 40% casualties (minor fail);
	<br/>
	<br/>- No transformers destroyed (minor fail);
	<br/>	
	<br/>- Destroyed one to three of the transformers (minor victory);
	<br/>
	<br/>- Destroy all four of the transformers (major victory);
	<br/>
	<br/><font color='#00b300'>RANDOM ELEMENTS</font>
	<br/>This mission has some randomized elements.
	<br/>
	<br/>This means it will be a bit easier some times and a bit harder other times. Hopefully it'll be somewhat in the middle most of the time, with added variety and replayability.
	<br/>
	<br/>If in a given playthrough there are too many enemies, making the mission too difficult or impossible, your best course of action is to break contact, withdraw back to the ORV, and end the mission. In this odd case, mission will have to be called by acting leadership and ended by admin if the VIP is still alive.<br/>
	<br/>
	<br/>Mission by Luiz Silveira, using Olsen's framework.
	<br/>
	<br/><font color='#00b300'>Many thanks to</font> Olsen, Delta38, BlackHawk, Perfk, and all the others who didn't hesitate to help out.
	<br/>
	<br/>This mission uses VCOM AI Driving, credits and thanks to genesis92x.
	<br/>
	<br/>Have fun, and please report any errors/problems/feedback/ideas/concerns/etc.
ENDTAB;

NEWTAB("*** UAV-RELATED NOTES ***")
	<font color='#00b300' size='15'>UAV Range</font>
	<br/>- The UAV can only be used up to 300m from the operator (Merlin). That's 3d distance, so the higher you go the shorter the ground distance you'll cover before running out of range;
	<br/>
	<br/>- The range is limited because the huge magnifying optics would make it OP otherwise; 
	<br/>
	<br/>- The UAV starts on the ground but you can disassemble it into a backpack and put it on your back to carry ir around. Remember, only the operator (Merlin) can fly it.
	<br/>
	<br/><font color='#00b300' size='15'>Getting spotted</font>
	<br/>- The UAV can fly fairly close to the enemy without getting spotted, but if it does get spotted they will send people to investigate. Lots of people, in some cases.
	<br/>
	<br/>Have fun, and please report any errors/problems/feedback/ideas/concerns/etc.
ENDTAB;

NEWTAB("Game Mastering") //This is shown for everyone
Feel free to tinker with and to tweak the mission on the fly as long as overall intent and balance are maintained.
ENDTAB;

DISPLAYBRIEFING();