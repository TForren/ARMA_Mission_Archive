//DEBUG
/*
RydHQ_Debug = true;
RydHQ_DebugII = true;
RydHQ_ChatDebug = true;
RydHQ_HQChat = true;
RydHQ_GroupMarks = [west,east,resistance,civilian];
RydHQ_RHQCheck = true; //report classnames of combat units on map
RydHQ_DbgMon = false; //report morale and losses

RydHQ_Wait = 2; //time to wait until init. shared by all leaders
RydHQ_Fast = false; //true: leader will not wait for new cycle. can clog computation.
RydHQ_CommDelay = 1; //multiplier of delay between cycles. default 1

//
//RydHQ_Order = "DEFEND"; //set army to defend. any other value will set army back to attack mode
RydHQ_Excluded = []; //any team leaders who will not be commanded by HAL. Can be changed midmission
RydHQ_ExInfo = false; //true: leader still receives info about enemies from above excluded units

RydHQ_UnlimitedCapt = false; //true: command will never stop sending more units at objective. (never consider objs captured)
RydHQ_CaptLimit = 10; //num of allied units (not groups) near an objective needed to capture an objective

RydHQ_ResetTime = 600; // reset interval
RydHQ_ResetOnDemand = false; //true: reset is not done in cycles but rather whem manually calling RydHQ_ResetNow = true

RydHQ_CargoFind = 100; //radius for searching empty vehicles. (potential lag) 0: disabled
RydHQ_NoLandCargo = false; //true: land units will not be assigned to transport tasks

RydHQ_SubAll = false; //true: all allied groups on map wil lbe controlled by HAL minus excluded
RydHQ_subSynchro = true; //HAL control all groups whose leaders are synched with leader's unit. mutually exclusive to subAll

RydHQ_SMed = true; //medical support handling. Deals only with ambulance and medevacs
RydHQ_SFuel = true; //fuel support
RydHQ_SAmmo = true; //ammo support
RydHQ_SRep = true; //repair support
RydHQ_SupportWP = true; //missions are extended by support waypoints for support units.
RydHQ_Smoke = true; //use smoke for retreat
RydHQ_Flare = true; //use flares at base when enemies detected

RydHQ_Garrison = []; //garrison groups 
RydHQ_GarrR = 800; //radius for each garrison team leader around leader's initial position within which the group can do attack missions
RydHQ_GarrVehAb = false; //true: garrisoned motorized groups will disembark their vehicles and act as non motorized groups. 


//Unit Arrays
RydHQ_NoRecon = []; //groups who will not be used for recon
RydHQ_NoAttack = []; //not be used for attack missions
RydHQ_AOnly = []; //will only be used for attack/defense/rest missions
RydHQ_ROnly = []; //only be used for recon
RydHQ_NoFlank = []; //not be used for flanking
RydHQ_NoDef = []; //not used for defense
RydHQ_FirstToFight = []; //will not be considered reserve and will be first choice for attack missions
RydHQ_Front = false; //true: front area must be created. Leaders will only pay attention to enemies in this trigger

RydHQ_ObjHoldTime = 400; //how long to capture
RydHQ_ObjRadius1 = 300; //inner radius which ally units must be in to capture
RydHQ_ObjRadius2 = 400; //outer radius which enemy units must be outside
RydHQ_LRelocating = false; //true: leaders will relocate to last captured objective.

RydHQ_IdleOrd = false; //true: idle orders are issued

RydHQ_CivF = ["CIV_F","CIV"]; //civ factions

RydHQ_Flee = true; //morale changes will make units flee
RydHQ_Surr = true; //check every cycle 50% chance a fleeing group will surrender
RydHQ_Muu = 1; //morale multiplier for tendancy to panic or flee with low morale. 0 is unbreakable
RydHQ_Rush = false; //true: groups will never move slowly 
RydHQ_NoRec = 20; //percent change to omit recon stage. multipled by commander's recklessness value
RydHQ_RapidCapt = 10; //percent chance for capturing objective "at all costs". multipled by commander's recklessness value
RydHQ_DefendObjectives = 4; //In Defend mode, determines how many nearby groups will be considered for additional defense perimeters
RydHQ_Withdraw = 1; //multiplier of needed danger level until tactical withdraw. higer the value > more danger needed
RydHQ_Berserk = false; //leader will always keep offensive. overwrites rydHQ_order = "DEFEND"

RydHQ_DefFrontL = ["N","E"]; //defend fronts for when leaders are in DEFEND mode
RydHQ_DefFront1 = ["N",""];
RydHQ_DefFront2 = ["E",""];
RydHQ_DefFront3 = ["S",""];
RydHQ_DefFront4 = ["w",""];

RydHQ_PathFinding = 100; //experimental pathfinding waypoint resolution based on terrain for non-motorized inf. inf will try to used covered approaches
RydxHQ_SynchroAttack = false; //leaders will try to coordinate sent attacks. groups will wait for all in place before attacking

RydHQ_IDChance = 100; //percent change a unit will use the RydHQ_IdleDecoy as its idle location
RydHQ_SDChance = 100; //percent change a unit will use the RydHQ_SupportDecoy as its Support location
RydHQ_RDChance = 100; //percent change a unit will use the RydHQ_RestDecoy as its Rest location

RydHQ_SFBodyGuard = []; //specFor groups who will always guard HQ

RydHQ_CargoOnly = []; //groups that will only be used for cargo missions
Ryd_NoCargo = []; //groups that will not be used for cargo missions

RydHQ_DynForm = false; //true: groups will change their formation, behavior, speed according to danger
RydHQ_GetHQInside = false; //true: if relocating is active, hal will try to find buildings for HQ in 100m radius
RydHQ_ForceAAO = false; //true: leader will always try to take as many objectives as once


//Air
RydHQ_NoAirCargo = false; //true: air units will not be assigned to transport tasks
RydHQ_AirEvac = false; //true: air transports may be used to transport withdrawing groups
RydHQ_AmmoDrop = []; //arial groups to do ammo resupply missions. Needs RydHQ_AmmoDepot circular trigger with ammo boxes.
RydHQ_AirDist = 4000; //idle arial groups located further than this value from thier leader will reloate to their leader
RydHQ_LZ = false; //safely places invisible LZ to help helos land where they need (possible lag)
RydHQ_SlingDrop = false; //true: use arma sling load for ammo instead of paradrop

//Artillery
RydHQ_ArtyShells = 1; //multiplier for default magazines per kind of artillery

/*[[[list of arty pieces classnames (lowercase)],[list of magazines for these classes in order: primary (HE), rare (WP, Cluster…),secondary (used instead of HE – guided, laser…),smoke, illum]], …];
Same magazine class my by used for primary, rare and secondary ammunition. If some category isn’t or shouldn’t be used use "" (empty string) instead of classname.
	
RydHQ_Add_OtherArty = [
	[["rhs_2b14_82mm_vdv"],["rhs_mag_3vo18_10","rhs_mag_3vo18_10","rhs_mag_3vo18_10","",""]],
	[["rhs_bm21_msv_01"],["rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","",""]]
];

*/

//classnames
RHQ_SpecFor = ["rhs_vdv_recon_efreitor","rhs_vdv_recon_rifleman_lat","rhs_vdv_recon_grenadier","rhs_vdv_recon_arifleman"];
RHQ_Recon = ["rhs_pchela1t_vvsc"];
RHQ_FO = ["rhs_msv_emr_marksman","rhs_msv_emr_sergeant","rhs_msv_officer"];
RHQ_Inf = ["rhs_msv_emr_marksman","rhs_msv_emr_sergeant","rhs_msv_officer","rhs_msv_emr_efreitor","rhs_msv_emr_grenadier_rpg","rhs_msv_emr_strelok_rpg_assist","rhs_msv_emr_machinegunner","rhs_msv_emr_machinegunner","rhs_msv_emr_LAT","rhs_msv_emr_aa"];
//excludes
RHQs_Cars = ["rhs_bm21_msv_01"];

//support
RydHQ_SupportWP = true;

RHQ_Support = ["rhs_gaz66_repair_msv","rhs_gaz66_ammo_msv","RHS_Ural_Fuel_MSV_01"];
RHQ_Rep = ["rhs_gaz66_repair_msv"];
RHQ_Fuel = ["RHS_Ural_Fuel_MSV_01"];
RHQ_Ammo = ["rhs_gaz66_ammo_msv"];

RydHQ_FirstToFight = [(group squad1),(group squad2),(group squad3)];

//RydHQ_AmmoDrop = [(group supportHelo)];
//RydxHQ_Slingdrop = false;

//RydHQ_NoAttack = [(group supportHelo)];

RydHQ_Debug = false;
RydHQB_Debug = true;
RydHQC_Debug = true;

RydHQ_ChatDebug = false;
/*RydHQ_DebugII = true;
RydHQB_DebugII = true;
RydHQC_DebugII = true;
*/

//RydHQ_GroupMarks = [west,east,independent];

RydHQ_SubAll = false;
RydHQB_SubAll = false;
RydHQC_SubAll = false;

RydHQ_SubSynchro = true;
RydHQB_SubSynchro = true;
RydHQC_SubSynchro = true;

RydHQ_Surr = false;
RydHQB_Surr = false;
RydHQC_Surr = false;

RydHQ_NoRec = 10000;
RydHQB_NoRec = 10000;
RydHQC_NoRec = 10000;

RydHQ_RapidCapt = 500;
RydHQB_RapidCapt = 500;
RydHQC_RapidCapt = 500;

RydHQ_CargoFind = 1;
RydHQB_CargoFind = 1;
RydHQC_CargoFind = 1;

RydHQ_LRelocating = false;
RydHQB_LRelocating = true;
RydHQC_LRelocating = true;

RydHQ_CaptLimit = 2;
RydHQB_CaptLimit = 2;
RydHQC_CaptLimit = 2;

RydHQ_ObjHoldTime = 6;
RydHQB_ObjHoldTime = 6;
RydHQC_ObjHoldTime = 6;

RydHQ_ObjRadius1 = 300;
RydHQ_ObjRadius2 = 500; 
RydHQB_ObjRadius1 = 300;
RydHQB_ObjRadius2 = 500; 
RydHQC_ObjRadius1 = 300;
RydHQC_ObjRadius2 = 500; 

RydHQ_GetHQInside = false;
RydHQB_GetHQInside = true;
RydHQC_GetHQInside = true;

RydHQ_ResetTime = 200;
RydHQB_ResetTime = 200;
RydHQC_ResetTime = 200;

RydHQ_IdleOrd = false;
RydHQB_IdleOrd = false;
RydHQC_IdleOrd = false;

RydHQ_Berserk = true;
RydHQB_Berserk = true;
RydHQC_Berserk = false;

RydHQ_Fast = true;
RydHQB_Fast = true;
RydHQC_Fast = true;

RydHQ_PathFinding = 0;

RydHQ_Rush = true;

RydHQ_UnlimitedCapt = true;

RydHQ_ForceAAO = true;

//RydBBa_HQs = [leaderHQ,leaderHQB,leaderHQC];

//RydBB_Active = true;
//RydBB_Debug = true;

RydxHQ_AIChatDensity = 10000;

//RydBBa_Str = [];
//RydBBb_Str = [];

//RydBB_CustomObjOnly = true;
//RydBB_BBOnMap = false;

RydART_Safe = 100;

RydHQ_Add_OtherArty = [
    [["rhs_2b14_82mm_vdv"],["rhs_mag_3vo18_10","rhs_mag_3vo18_10","rhs_mag_3vo18_10","",""]],
    [["rhs_bm21_msv_01"],["rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","rhs_mag_40Rnd_122mm_rockets","",""]]
];

RydHQ_Wait = 600; 

