#include "core\briefingCore.sqf" //DO NOT REMOVE

_briefing = [];

#define NEWTAB(NAME) _briefing set [count _briefing, ["Diary",[NAME,"

#define ENDTAB "]]];

#define DISPLAYBRIEFING() \
_size = count _briefing - 1; \
for '_i' from 0 to _size do \
{ \
	player createDiaryRecord (_briefing select _size - _i); \
};
	
NEWTAB("------------- OPORD ------------")
<br/><font color='#FFA500' size='15'>Task organisation:</font>
<br/>
<br/>[ Half Platoon (were 35)
<br/>
<br/>[ >Platoon Command<
<br/>
<br/>
<br/>[Platoon Co
<br/>
<br/>[Platoon 2ic
<br/>
<br/>[Platoon Medic
<br/>
<br/>
<br/>
<br/>[ >x2 Rifle Squads<
<br/>
<br/>
<br/>[Squad Leader
<br/>
<br/>[x1 Machine gunner
<br/>
<br/>[x1 Machine gunner assistant
<br/>
<br/>[x1 Rifleman (AT4)
<br/>
<br/>[x2 Fire team leaders.
<br/>
<br/>[x2 Rifleman 
<br/>
<br/>[x1 Grenadier
<br/>
<br/>
<br/>[ >2 man british sniper team
ENDTAB;

NEWTAB("Preliminaries:")
<br/><font color='#FFA500' size='15'>Weather:</font>
<br/>> The weather is rainy.
<br/>
<br/><font color='#FFA500' size='15'>Forecast:</font>
<br/>> The weather for the next 24 hours will be rainy
<br/>
<br/><font color='#FFA500' size='15'>Visibility:</font>
<br/>> unlimited
ENDTAB;

NEWTAB("I. Situation:")
<br/> We have just arrived on the island of Stratis, which is currently occupied by russian forces. They are fortifying positions to the north and as we speak have three high valuable targets on the island overseeing construction on some of their newest facilities. Our objective 
<br/> is to move in and take him out.
<br/> There are multiple enemy assets in the target area some of which are known to patrol the road leading up to Camp Rogain where our suspected HVT is located. Intel has not been great over the past few weeks notwithstanding before our arrival we were informed that the area was
<br/> heavily mined and multiple Roadbloacks had been set up to prevent hostile actions from any direction. 
<br/> 
<br/> We were due to recieve a supply drop but it has fallen into enemy hands and is now being held at Kamino Firing Range.
<br/> 
ENDTAB;

NEWTAB("A. Enemy Forces:")
<br/><font color='#FFA500' size='15'>a. Composition, Location and Capabilities:</font>
<br/>> Russian VDV:
<br/> They are armed with Soviet-block Weapons, and we can asume also various assets such as ZSU, GAZ, BTR80 and various other static heavy weaponry
<br/>
<br/> Our intelligence and scout force have located a large enemy contigent at what used to be Camp Rogain and also patrolling the area of operation. 


ENDTAB;

NEWTAB("B. Friendly Forces:")
<br/><font color='#FFA500' size='15'>a. Composition and Location:</font>
<br/>> 1x Rifle Platoon (-):
<br/> We're currently located South-East of the objective, made a small camp to rest and get our bearings.
<br/> 
<br/><font color='#FFA500' size='15'>b. Attached or Organic Forces:</font>
<br/> 2 man British sniper team will be fundamental to the sucess of the mission
<br/>
ENDTAB;

NEWTAB("II. Mission:")
<br/><font color='#FFA500' size='15'>Objective</font>
<br/> Find the enemy HVT and eliminate on sight. He can be identified easily: the target is wearing a blue beret and is inside thr command building at Camp Rogain.
<br/> Try and get as close as possible to the target to confirm target elimination.  
<br/> Mines have been sighted in the area, unfortunately no mine detecting equipment was supplied on insertion so enter these fields at your own risk.
<br/> Rockets and extra ammo are in a cache at Kamino Firing Range under custody of russian forces.
ENDTAB;

NEWTAB("III. Execution:")
<br/><font color='#FFA500' size='15'>Intent:</font>
<br/>
<br/> Commander's Intent
<br/>
<br/><font color='#FFA500' size='15'>a. Concept of Operations</font>
<br/>
<br/>> 1. General Plan
<br/>
<br/> Recover weapons cache and Eliminate HVT
<br/>
<br/><font color='#FFA500' size='15'>b. Tasks/Missions to Manoeuvre Units:</font>
<br/>
<br/>> 2. Phases
<br/>
<br/> Commander's Discretion
<br/>
<br/>> 3. Schemes of Manoeuvre
<br/>
<br/> Commander's Discretion
<br/>
<br/>> 4. Supporting Fires and Weapons
<br/>
<br/> Commander's Discretion
<br/>
<br/><font color='#FFA500' size='15'>e. Coordinating Instructions:</font>
<br/>
<br/>> 1. Task Organization
<br/>
<br/> Commander's Discretion
ENDTAB;

NEWTAB("IV. Service Support:")
<br/><font color='#FFA500' size='15'>a. Support Concept:</font>
<br/>
<br/> None.
<br/>
<br/><font color='#FFA500' size='15'>b. Materiel and Services:</font>
<br/> 
<br/>> 1. Material and Supply:
<br/> 
<br/> Everyone has been issued a standard combat loadout. 
<br/>
<br/>> 2. Transportation and Maintenance:
<br/>
<br/> None.
<br/>
<br/><font color='#FFA500' size='15'>b. Materiel and Services:</font>
<br/> 
<br/> . . .
<br/> 
<br/><font color='#FFA500' size='15'>c. Medical Evacuation and Hospitalization:</font>
<br/>
<br/> Good luck!
<br/>
<br/><font color='#FFA500' size='15'>d. Personnel:</font>
<br/>
<br/>>>1. our unit is at full strength + attachments.
<br/>> 1x 3 man HQ team.
<br/>> 2x 9 Infantry squad.
<br/>> 2 British Sniper team
<br/>
<br/>>2. Replacements are NOT Avaliable
<br/>
<br/>>> Civilians
<br/>> Most likely they island has been evacuated of all civis but do not discard the posibility of civis hiding in the hills
<br/>
ENDTAB;

NEWTAB("V. Command & Signal:")
<br/><font color='#FFA500' size='15'>Radios:</font>
<br/> Squad Leaders, PSG, and the PL carries an AN/PRC 148 Radio + AN/PRC 117.
<br/> All other units carries a personal AN/PRC 343 Radio.
<br/>
<br/><font color='#FFA500' size='15'>PRR Nets:</font>
<br/>> Commander's Discretion.
<br/>
<br/><font color='#FFA500' size='15'>LRR Nets:</font>
<br/>> Channel 1 - PLT 1
<br/>
<br/><font color='#FFA500' size='15'>Recognition Signals:</font>
<br/>
<br/> Commander's Discretion.
<br/>
<br/><font color='#FFA500' size='15'>Challenge and Pass:</font>
<br/>
<br/> Commander's Discretion
<br/>
<br/><font color='#FFA500' size='15'>Succession of Command:</font>
<br/>In descending order
<br/>
<br/>> 1'6 Platoon Commander
<br/>> 1'7 Platoon 2iC
<br/>> 1'1 Squad Leader
<br/>> 1'3 Squad Leader
<br/>
<br/>- 4'1 Sniper Team. IS TO WORK HAND IN HAND WITH AMERICAN FORCES! BY NO MEANS ARE THEY UNDER PLT COMMANDER'S ORDERS AND DECISSIONS WILL BE MADE AS SEEN FIT
<br/>
ENDTAB;

NEWTAB("VI. Mission notes: (MUST READ)")
<br/><font color='#FFA500' size='15'>RESPAWN</font>
<br/>
<br/> None
<br/>
<br/><font color='#FFA500' size='15'>REVIVE</font>
<br/>
<br/> No
<br/>
<br/><font color='#FFA500' size='15'>JIP</font>
<br/>
<br/> Yes
<br/>
<br/><font color='#FFA500' size='15'>END CONDITION</font>
<br/>
<br/>>Victory
<br/> HVT IS ELIMINATED
<br/>
<br/>>Defeat
<br/> (90%) Fallback and inform HQ of the size of VDV forces
<br/>
<br/><font color='#FFA500' size='15'>USE OF ENEMY VEHICLE ASSETS</font>
<br/>
<br/> If logical use of assets is possible they may be used. Such as Driving, small arms.
<br/>
<br/><font color='#FFA500' size='15'>ACE MEDICAL</font>
<br/>
<br/>> Ace Medical Personal Aid Kit can only be used by Medics/Doctors.
<br/>> Ace Medical Personal Aid Kit can be used anywhere as long as the patient is stable.
<br/>> Ace Medical Personal Aid Kit is used up when used.
<br/>> Ace Medical Surgical Kit can only be used by Doctors.
<br/>> Ace Medical Surgical Kit can be only near or inside the Medical Truck.
<br/>> Ace Medical Surgical Kit is not used up when used.
<br/>
<br/>> Platoon Medic is set to be ACE Doctor.
<br/>> Combat Life Saver is set to be ACE Medic
<br/>
<br/><font color='#FFA500' size='15'>TECHNICAL ASPECT</font>
<br/>
<br/>> On mission start give the mission a few(!) seconds to initialize!
<br/>> Time Limit: 120min
<br/>> View Distance: 1000
<br/>> ACRE Signal loss is turned on.
<br/>> ACRE radio interference is turned on.
<br/>> Incase map is removed there is a box of maps and other necessities in the Ammobox nearby.
<br/>
<br/><font color='#FFA500' size='15'>CREDITS</font>
<br/>
<br/>> Olsen Framework;
<br/>> Graham1988
<br/>> Special Thanks to HitTheMan
<br/>> Thanks for Testing: Kail, Blue, Pill, Letuce, Myself.
<br/>
<br/>  <font color='#FFA500' size='15'>Mission by Graham1988</font>
ENDTAB;

DISPLAYBRIEFING();