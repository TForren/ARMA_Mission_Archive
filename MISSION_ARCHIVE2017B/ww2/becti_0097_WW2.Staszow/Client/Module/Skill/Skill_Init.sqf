/*
  # HEADER #
	Script: 		Client\Module\Skill\Skill_Init.sqf
	Description:	Enables different skills for various player unit types.
	Author: 		Benny (ported from WFBE by Sari)
	Creation Date:	26-05-2014
	Revision Date:	26-05-2014
*/

//--- Functions 
CTI_SK_FNC_Apply = compileFinal preprocessFile "Client\Module\Skill\Skill_Apply.sqf";

//--- Define which classname belong to which Skill group
CTI_SK_ENGINEERS = ['SG_sturmtrooper_sapper','LIB_SOV_assault_sergeant','I_engineer_F'];
CTI_SK_OFFICERS = ['LIB_GER_hauptmann','LIB_SOV_captain','I_officer_F'];
CTI_SK_SOLDIERS = ['LIB_GER_unterofficer','LIB_SOV_sergeant','I_Soldier_TL_F'];
CTI_SK_SPECOPS = [];
CTI_SK_SPOTTERS = ['LIB_GER_scout_sniper','LIB_SOV_scout_sniper_autumn','I_sniper_F'];
CTI_SK_SABOTEUR = [];

//--- Binoculars.
missionNamespace setVariable ["CTI_Binoculars", ["Binocular", "Rangefinder", "Laserdesignator", "Laserdesignator_02"]];

//--- Skills Variables
CTI_SK_LASTUSE_REPAIR = -1200;
CTI_SK_LASTUSE_MASH = -1200;
CTI_SK_LASTUSE_LOCKPICK = -1200;
CTI_SK_LASTUSE_SPOT = -1200;
CTI_SK_LASTUSE_SUPERSATCHEL = -1200;

//--- Skills Timeout 
CTI_SK_RELOAD_REPAIR = 65;
CTI_SK_RELOAD_MASH = 600;
CTI_SK_RELOAD_LOCKPICK = 25;
CTI_SK_RELOAD_SPOT = 8;
CTI_SK_RELOAD_SUPERSATCHEL = 180;

//--- Find the player TYPE 
CTI_SK_TYPE = [];
//if (typeOf player in CTI_SK_ENGINEERS) then {CTI_SK_TYPE = CTI_SK_TYPE + ["Engineer"]};
//if (typeOf player in CTI_SK_OFFICERS) then {CTI_SK_TYPE = CTI_SK_TYPE + ["Officer"]};
if (typeOf player in CTI_SK_SOLDIERS) then {CTI_SK_TYPE = CTI_SK_TYPE + ["Soldier"]};
//if (typeOf player in CTI_SK_SPECOPS) then {CTI_SK_TYPE = CTI_SK_TYPE + ["SpecOps"]};
if (typeOf player in CTI_SK_SPOTTERS) then {CTI_SK_TYPE = CTI_SK_TYPE + ["Spotter"]};
//if (typeOf player in CTI_SK_SABOTEUR) then {CTI_SK_TYPE = CTI_SK_TYPE + ["Saboteur"]};

//--- Special one time init - the soldier can hire more units than the others leader
if ('Soldier' in CTI_SK_TYPE) then {missionNamespace setVariable ['CTI_AI_PLAYER_TEAMS_GROUPSIZE',(missionNamespace getVariable "CTI_AI_PLAYER_TEAMS_GROUPSIZE") + (missionNamespace getVariable "CTI_AI_PLAYERS_TEAMS_SOLDIER_GROUPSIZE")]};