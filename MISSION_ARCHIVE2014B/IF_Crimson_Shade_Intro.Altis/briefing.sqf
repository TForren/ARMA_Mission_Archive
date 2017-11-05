#define NEWTAB(NAME) \
player createDiaryRecord ["Diary",[NAME,"

#define ENDTAB \
"]];

//See "VI. Mission notes:" for inspiration about briefing syntax
//"<br />" makes line switches

waitUntil {!(isNull player)};//This is needed for JIP compatibility since this code is spawned not called

NEWTAB("Game Mastering")
This is the introduction mission to the Crimson Shade Campaign. Although no options are present in the Intro, all future missions will have parameters that should
be set to the results of the previous mission. Otherwise, the in-game mission is not designed for game mastering and should only be manipulated for technical, 
administrative or diagnostic purposes.
ENDTAB;

NEWTAB("VI. Mission notes:")
Mission by Hoizen.<br />
Mission ends when FOB trucks are at the airfield, supply convoy destroyed, and enemy QRF eliminated.<br />
<br />
ENDTAB;

switch (side player) do { //Checks what team the player is on
case WEST: { //If player is WEST he receives this briefing

NEWTAB("V. Command & Signal:")
Everyone has a 152.<br />
Every leader has a 1523G Long Range.<br />
<br />
Suggested Callsigns:<br />
Command: HQ<br />
1st Squad: 1'1<br />
2nd Squad: 1'2<br />
3rd Squad: 1'3<br />
<br />

ENDTAB;

NEWTAB("IV. Service Support:")
None.
ENDTAB;

NEWTAB("III. Execution:")
HQ's discretion.<br />
ENDTAB;

NEWTAB("II. Mission:")
Strike an opfor held airfield to be used as a FOB for future missions.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
US Navy Seal Platoon with HQ<br />
1x USSOCOM Navy Seal Platoon with HQ<br />
2x Speed Boats<br />
1x Diver Team<br />
1x SDV<br />

-Ghosthawk squadron will drop friendly forces and supply trucks on JTAC's call once airfield is secure. <br />
ENDTAB;

NEWTAB("A. Enemy Forces:")
-African mercenary security contractors. Platoonsize +.<br />
-CSAT QRF
ENDTAB;

NEWTAB("I. Situation:")
Today marks the beginning of the Crimson Shade campaign over the island of Altis. Task Force KNIGHT will be assaulting the 
Mazi Bay by boat and will be tasked with securing the airfield as our future headquarters. Once TF KNIGHT has cleared the airfield and the surrounding 
area of all possible hostiles, logistics chooppers SEA LION, NEPTUNE, and FALCON and will drop supply trucks on scene as well as HELION with ranger 
team MIRE 1'1 to begin construction of the FOB. We must have at least 2 out of the 3 supply trucks to have a fully functional FOB. If we lose one, we 
cannot guarantee full FOB support for future operations. Losing more than 1 is unacceptable and the mission will be considered a failure. Meanwhile, 
SPECTER 1'3 will be tasked with locking down the northern road heading toward Chalkeia. Recon Team Razor has reported a supply convoy on its way to 
what we are assuming will be the airfield. SPECTER 1'3 will intercept the convoy and destroy any their supply trucks. <br/>
Keep in mind that we have remained under the radar for once. Expect light resistance. The resistance you do encounter will be standard every-day sentries. 
This should be a quick and clean operation kick-off. Once the airfield is secure and the convoy is eliminated, KNIGHT will regroup with SPECTER around Panagia to 
repel any QRFs from the North. ENDTAB;
};

case EAST: { //If player is EAST he receives this briefing

NEWTAB("V. Command & Signal:")
Co’s discretion
ENDTAB;

NEWTAB("IV. Service Support:")
One Mi-8 transport helicopter<br />
Each Senior rifleman has 1x satchel charge for destroying the cache. <br />
3x BTR 70s for resupply (BTRs cannot be used)<br />
ENDTAB;

NEWTAB("III. Execution:")
Co’s discretion
ENDTAB;

NEWTAB("II. Mission:")
You are tasked with finding and destroying the stolen cache located somewhere inside of the city of Thirsk.<br /> 
You are also tasked to Inflict maximum casualties as possible on the local rebels.<br />
ENDTAB;

NEWTAB("B. Friendly Forces:")
A platoon of dismounted Russian infantry and one Mi-8 helicopter for transport.
ENDTAB;

NEWTAB("A. Enemy Forces:")
Local guerrilla rebels, possible armed civilians located in and around the city of Thirsk.<br />
They will be using weaponry similar to ours and may contain some AA assets.<br /> 
Enemy size is unknown<br />
ENDTAB;

NEWTAB("I. Situation:")
Local rebels attacked another platoon that was stationed at Thirsk Airbase.<br /> 
They have stolen their weaponry and handed them out to civilians to start a revolt in the city of Thirsk.
ENDTAB;
};
};