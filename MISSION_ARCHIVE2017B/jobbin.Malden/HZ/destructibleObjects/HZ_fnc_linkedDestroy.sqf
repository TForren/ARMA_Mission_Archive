 /*
 For the case of objects being ontop of each other, force destroy children of master object.
 */
//[this,[bar1,bar2,bar3,bar4,bar5,bar6,bar7,bar8]] call HZ_fnc_linkedDestroy;
_gameLogic = _this select 0;
_masterObj = _this select 1;

if (count (synchronizedObjects _gameLogic) == 0 || !(isServer)) exitWith {};

_masterObj setVariable ["HZ_linkedChildren",(synchronizedObjects _gameLogic)];


//