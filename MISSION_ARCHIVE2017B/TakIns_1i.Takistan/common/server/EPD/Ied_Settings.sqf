EPD_IED_debug=false;
hideIedSectionMarkers=true;
hideSafeZoneMarkers=true;

itemsRequiredToDisarm=["MineDetector","ToolKit","ACE_DefusalKit"];//"MineDetector" or "ToolKit" for example
betterDisarmers=["B_soldier_exp_F","B_engineer_F","B_diver_exp_F","B_recon_exp_F"];//Roles which are better at disarming

baseDisarmChance=60;//how well everybody can disarm
bonusDisarmChance=30;//increase that the betterDisarmers get

secondaryChance=50;//Chance that a secondary IED will spawn.
smallChance=40;//Chance that a small IED will be chosen.
mediumChance=40;//Chance that a medium IED will be chosen.
largeChance=20;//Chance that a large IED will be chosen.

iedSecondaryItems=["Land_Pallets_F","Land_GarbagePallet_F","Land_transport_cart_EP1","Land_Misc_Garb_Heap_EP1","Land_tires_EP1","Land_bags_stack_EP1","Land_JunkPile_F","Land_transport_crates_EP1"];
iedSmallItems=["Land_Pallets_F","Land_GarbagePallet_F","Land_transport_cart_EP1","Land_Misc_Garb_Heap_EP1","Land_tires_EP1","Land_JunkPile_F","Land_transport_crates_EP1"];
iedMediumItems=["LADAWreck","hiluxWreck","datsun01Wreck","datsun01Wreck","SKODAWreck","UAZWreck","UralWreck","Land_Misc_Garb_Heap_EP1","Land_GarbagePallet_F","Land_transport_crates_EP1"];
iedLargeItems=["LADAWreck","HMMWVWreck","Land_Wreck_Hunter_F","hiluxWreck","datsun01Wreck","datsun01Wreck","SKODAWreck","UAZWreck","UralWreck","BMP2Wreck","BRDMWreck","T72Wreck","T72WreckTurret"];

predefinedLocations=[];
iedPredefinedLocationsSize=count predefinedLocations;
allowExplosiveToTriggerIEDs=true; 
iedInitialArray=[
["Mkr_IED0",4,1,"West"],
["Mkr_IED1",4,1,"West"],
["Mkr_IED2",5,2,"West"],
["Mkr_IED3",5,2,"West"],
["Mkr_IED4",5,2,"West"],
["Mkr_IED5",5,2,"West"],
["Mkr_IED6",5,2,"West"],
["Mkr_IED7",5,2,"West"],
["Mkr_IED8",5,2,"West"]];

//Place the mapLocations, predefinedLocations, and markerNames of places you don't want any IEDs spawning
iedSafeZones=[];