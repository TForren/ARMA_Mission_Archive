EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";null=[] execVM "eos\core\spawn_fnc.sqf";onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};
/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorRed";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1.7;	// 1 is default
EOS_KILLCOUNTER=false;		// Counts killed units

null = [["mkr1"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr2"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr3"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr4"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr5"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr6"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr7"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr8"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr9"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr10"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr12"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr11"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr13"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr14"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr15"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr16"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr17"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr18"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr19"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr20"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr21"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr22"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr23"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr24"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr25"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr26"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr27"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr28"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr29"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr30"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr31"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr32"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr33"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr34"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr35"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr36"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr37"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr38"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr39"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr40"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr41"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr42"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr43"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr44"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr45"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr46"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr47"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr48"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr49"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr50"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr51"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr52"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr53"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr54"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr55"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr56"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr57"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr58"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr59"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr60"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr61"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr62"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr63"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr64"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr65"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr66"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr67"],[5,1],[2,2,75],[1,3,30],[1,30],[2,30],[1,30],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr68"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr69"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr70"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr71"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr72"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr73"],[3,1],[1,1,60],[0,0],[0],[0],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr74"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["mkr75"],[4,1],[1,1,75],[1,3,30],[0,0],[0,0],[1,30],[0,0],[5,0,500,EAST,FALSE]] call EOS_Spawn;
null = [["pmkr1"],[0,0,0],[3,1,45],[0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn;
null = [["pmkr2"],[1,1,35],[3,1,45],[0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn;
null = [["pmkr3"],[0,0,0],[3,1,45],[0,0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn;
null = [["pmkr4"],[0,0,0],[1,2,45],[0,0,0],[0,0],[2,25],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn;
null = [["pmkr5"],[0,0,0],[1,2,45],[0,0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn;
null = [["pmkr6"],[0,0,0],[2,2,45],[0,0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn;
null = [["pmkr7"],[0,0,0],[2,2,40],[0,0,0],[0,0],[3,45],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn; //NORTHWEST MOUNTAIN PATROL 1
null = [["pmkr8"],[0,0,0],[2,2,45],[0,0,0],[0,0],[1,25],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn; //NORTHWEST MOUNTAIN PATROL 2
null = [["pmkr9"],[0,0,0],[2,2,40],[0,0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn; //NORTHWEST MOUNTAIN FOREST PATROL
null = [["pmkr10"],[0,0,0],[3,1,45],[0,0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn; //SOUTHWEST MOUNTAIN PATROL 1
null = [["pmkr11"],[0,0,0],[3,1,45],[0,0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn; //SOUTHWEST MOUNTAIN PATROL 2
null = [["pmkr12"],[0,0,0],[3,1,45],[0,0,0],[0,0],[0,0],[0,0,0],[5,1,500,EAST,FALSE]] call EOS_Spawn; //SOUTHWEST MOUNTAIN PATROL 3