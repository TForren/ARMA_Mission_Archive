  Battlefield Re-Spawn System 
  By BangaBob 
  Version: 0.2
  Download: http://forums.bistudio.com/showthread.php?173436-Battlefield-Re-spawn-System-(BRS)

  SYNTAX:
	null= [[RS objects],Player side,Squad spawn,Enemy Radius,Debug] execVM "BRS\BRS_launch.sqf";
	
  Optional Parameters:
	RS objects			Array			Additional re-spawn positions. Add object names into array.
	Player side			side			Define side that optional parameters apply to.
	Squad spawn			Boolean			Allow player to re-spawn on squad. Default true.
	Enemy Radius		Integer			Distance from enemy units for re-spawn. 0m by default.
	debug				Boolean			Switch killed eventhandler with fired. False by default
	
  Examples:
	null= [] execVM "BRS\BRS_launch.sqf";
	null= [[],WEST,TRUE,50] execVM "BRS\BRS_launch.sqf";
	null= [[WEST_Base,Common_Base],WEST,FALSE,0] execVM "BRS\BRS_launch.sqf";
	null= [[East_Base,Common_Base],EAST,true,30] execVM "BRS\BRS_launch.sqf";	
	this addAction ["Battlefield Re-spawn System", "BRS\BRS_launch.sqf", [[West_Base,Common_Base],west,true,25]];


