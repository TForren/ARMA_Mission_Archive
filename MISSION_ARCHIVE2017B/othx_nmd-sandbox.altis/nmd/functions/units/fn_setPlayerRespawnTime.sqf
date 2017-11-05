/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 11:18:17
*/
 
private[ "_interval" ];

_interval = [ _this, 0, getNumber ( missionConfigFile >> "respawnDelay" ), [0] ] call BIS_fnc_param;

setPlayerRespawnTime _interval;

true