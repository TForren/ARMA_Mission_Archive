// These are the available fortifications. Add or take as you wish.

// Action text      - The text displayed by the action.
// Classname        - The classname of the object to be placed.
// Distance         - Minimum distance of the object from the player, in metres.
// Direction        - Direction the object will be rotated initially, in degrees (minimum 0, maximum 360).
// Direction range  - The range you can turn the object, in degrees (minimum 0, maximum 360).
//                    This means that the player will be able to set the direction of the object between `direction - direction_range / 2` and `direction + direction_range / 2` degrees.
//                    For example given 180 direction and 60 direction range, player will be able turn the object between 150 and 210 degrees.
// Code             - A piece of code that will be executed when the object placement is confirmed.
//                    Set it to {}, if you don't want to use it. The unit who confirmed the placement and the object placed, are passed as arguments to the code.
//                    An example code that hints the players name could look like {hint str (_this select 0);}.

//[player, [4,2]] call plank_api_fnc_forceAddFortifications;

plank_deploy_fortData = [

	// Action text                      |  Classname                            |  Distance     |  Direction     |  Direction Range  |  Code
	//--------------------------------------------------------------------------------------------------------------------------------------
	["slum wall",				"Land_SlumWall_01_s_2m_F",			2,		0,		360,		{(_this select 1) call HZ_fnc_initObject}],
	["Garbage (Bags)",				"Land_GarbageBags_F",			2,		0,		360,		{(_this select 1) call HZ_fnc_initObject}],
	["Garbage (Pallet)",			"Land_GarbagePallet_F",			2,		0,		360,		{(_this select 1) call HZ_fnc_initObject}],
	["Garbage (Washing Machine)",	"Land_GarbageWashingMachine_F",	2,		0,		360,		{(_this select 1) call HZ_fnc_initObject}],
	["portable light",			"Land_PortableLight_single_F",		2,		180,	360,		{(_this select 1) call HZ_fnc_initObject}]


];
