/*
	Author: Jiri Wainar

	Description:
	Play set of ambient animations on given unit AND allows the unit to leave the ambient state and engage enemy or move away.

	Remarks:
	* Function controls BIS_fnc_ambientAnim; check that function [Remarks] section for more info of how to use it.
	* Unit automatically leaves the animation loop if there is an enemy in 300m he knows about.

	Parameter(s):
	0: OBJECT - unit the anim & gear changes are going to be applied to
	1: STRING (optional, default "STAND") - animation set id, describing what the unit's action looks like.
	   > "STAND" 			- standing still, slightly turning to the sides. Needs a rifle!
	   > "STAND_IA"			- default a3 animations for standing, rifle lowered
	   > "SIT_LOW"			- sitting on the ground, with weapon.
	   > "KNEEL"			- kneeling, with weapon.
	   > "LEAN"			- standing while leaning (on wall)
	   > "WATCH"/"WATCH1"/"WATCH2"	- standing and turning around

	2: STRING (optional, default "RANDOM") - equipment level id, describing how heavily is the unit equipped.
	   > "NONE"  		- no goggles, headgear, vest, weapon
	   > "LIGHT"  		- no goggles, headgear, vest
	   > "MEDIUM" 		- no goggles, headgear
	   > "FULL"  		- no goggles
	   > "ASIS" (default)	- no touches to the gear
	   > "RANDOM" 		- gear is randomized according to the animation set

	3: CODE or STRING (optional, default {false}) - condition that if true frees the unit from the animation loop

	4: STRING (optional, default "COMBAT") - behaviour the unit should go to, when freed.

	Returns:
	-

	Example:
	[this,"STAND","FULL",{(player distance _this) < 5}] call BIS_fnc_ambientAnimCombat;
*/

if (!isServer) exitWith {};

//do the immediate operations ----------------------------------------------------------------------
private["_unit","_animset","_gear","_cond","_behaviour"];
private["_acceptableStates","_acceptableGear","_transAnim"];

_unit  	 	= _this param [0, objNull, [objNull]];
_animset 	= _this param [1, "STAND", [""]];
_gear  	 	= _this param [2, "ASIS", [""]];
_cond	 	= _this param [3, {false}, ["",{}]];
_behaviour 	= _this param [4, "COMBAT", [""]];

_acceptableStates =
[
	"STAND",
	"STAND_IA",
	"SIT_LOW",
	"KNEEL",
	"LEAN",
	"WATCH",
	"WATCH1",
	"WATCH2"
];

_acceptableGear =
[
	"NONE",
	"LIGHT",
	"MEDIUM",
	"FULL",
	"ASIS",
	"RANDOM"
];

if !(_animset in _acceptableStates) exitWith
{
	format["Definition of animset '%1' dosn't exist. Possible animsets are %2.",_animset,_acceptableStates] call BIS_fnc_error;
};

if !(_gear in _acceptableGear) exitWith
{
	format["Definition of gearset '%1' dosn't exist. Possible gearsets are %2.",_gear,_acceptableGear] call BIS_fnc_error;
};

if (typeName _cond == typeName "") then
{
	_cond = compile _cond;
};

//execute the ambient anim
[_unit,_animset,_gear,nil,nil,false] call FNC_ambientAnim;

//transition animation
_transAnim = "AmovPercMstpSrasWrflDnon";

[_unit,_cond,_transAnim,_behaviour] spawn
{
	private["_unit","_cond","_transAnim","_animHandle","_behaviour","_unitPos"];

	_unit 		= _this select 0;
	_cond 		= _this select 1;
	_transAnim 	= _this select 2;
	_behaviour 	= _this select 3;

	//wait for system to initialize on the unit
	waitUntil
	{
		sleep 0.1;

		_animHandle = _unit getVariable ["BIS_EhAnimDone", -1];

		(_animHandle > -1)
	};

	//wait for unlock condition evals to true
	waitUntil
	{
		sleep 0.1;

		(behaviour _unit == "COMBAT") || {(damage _unit > 0) || {(_unit call _cond) || {(_unit call BIS_fnc_enemyDetected)}}}
	};

	_unitPos = unitPos _unit;

	//remove the Ai handcuffs
	{_unit enableAI _x} forEach ["ANIM", "AUTOTARGET", "FSM", "MOVE", "TARGET"];
	_unit setBehaviour _behaviour;
	_unit setUnitPos "UP";
	detach _unit;

	//unlock the unit from it's ambient animation
	_unit removeEventHandler ["AnimDone",_animHandle];
	[_unit,_transAnim] remoteExec ['playMoveNow'];
	
	//_unit playMoveNow _transAnim;

	sleep ((random 3) + 3);

	//return to the default or previously set unit pos
	_unit setUnitPos _unitPos;
};