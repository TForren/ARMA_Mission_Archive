//Written by beta
//Setup AI routines

//trenchUnits = [];
//paraflareGroups = [];

sleep 5; //wait until mission starts

//trench AI
[] execVM "customization\ai\aiTrench.sqf";

//paraflare AI
[] execVM "customization\ai\aiParaflare.sqf";

//glowstick AI
//[] execVM "customization\ai\seeGlowstick.sqf";

//AI targets gathering
//[] execVM "customization\ai\aiTargets.sqf";
