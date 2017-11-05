/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-29 03:31:00
*/

private [ "_player", "_jip" ];
_player = _this select 0;
_jip = _this select 1;

//--- Params
NMD_ParamFriendlyFire = ( [ "FriendlyFire", 1 ] call BIS_fnc_getParamValue );
NMD_ParamFatigue = ( [ "Fatigue", 1 ] call BIS_fnc_getParamValue );
NMD_ParamRespawnLoadout = ( [ "RespawnLoadout", 1 ] call BIS_fnc_getParamValue );

//--- Briefing
#include "initBriefing.hpp"

//--- Player init function
NMD_playerInit = {
	
	player addAction [ "<img image='\A3\Ui_f\data\IGUI\Cfg\Actions\eject_ca.paa' /> <t color='#E6731A'>NMD Menu</t>", { createDialog "NMD_RscDisplayMenu" }, nil, -1, false, true ];

};

waitUntil { !isNull player };

//--- Add player action menu
call NMD_playerInit;

//--- Intro hint
[ [ "Sandbox", "AccessMenu" ], nil, nil, nil, nil, true, true ] call BIS_fnc_advHint;

//--- Respawn handler
player addEventHandler [ "Respawn", { 
	
	private [ "_unit", "_corpse" ];
	_unit = player;
	_corpse = _this select 1;

	//--- Respawn with same gear parameter
	if ( NMD_ParamRespawnLoadout > 0 && { !isNil "NMD_respawnLoadout" } ) then {

		[ _unit, NMD_respawnLoadout ] call NMD_fnc_loadInventory;
		NMD_respawnLoadout = nil;

	};

	//--- Cleanup corpse
	[ _corpse, 0 ] call NMD_fnc_cleanupUnit;

	//--- Add player action menu
	call NMD_playerInit;

	//--- Fatigue parameter
	if ( NMD_ParamFatigue < 1 ) then {

		player enableFatigue false;

	};

	//--- Reset respawn time
	setPlayerRespawnTime getNumber( missionConfigFile >> "respawnDelay" );

} ];

//--- Killed EH
player addEventHandler [ "Killed", { 

	private [ "_unit", "_killer" ];
	_unit = _this select 0;
	_killer = _this select 1;

	//--- Respawn with same gear parameter
	if ( NMD_ParamRespawnLoadout > 0 ) then {

		NMD_respawnLoadout = player call NMD_fnc_saveInventory;

	};

	//--- Punish friendly fire parameter
	if ( NMD_ParamFriendlyFire > 0 ) then {

		if ( isPlayer _killer && { _killer != player && side group _killer == side group player } ) then {
			
			[ 60, "NMD_fnc_setPlayerRespawnTime", _killer ] spawn BIS_fnc_MP;
			[ [ "Friendly Fire", format[ "You have been executed and a respawn penalty of 60 seconds has been applied for killing:<br />%1", name player ] ], "NMD_fnc_titleHint", _killer ] spawn BIS_fnc_MP;
			_killer setDamage 1;
		
		};

	};

} ];

//--- Fix for admin curator
[] spawn {
	
	waitUntil { !isNull findDisplay 46 };

	( findDisplay 46 ) displayAddEventHandler [ "KeyDown", {

		private [ "_key", "_curatorKeys", "_handled" ];
		_key = _this select 1;
		_curatorKeys = actionKeys "CuratorInterface";
		_handled = false;

		if ( _key in _curatorKeys && { !isMultiplayer || serverCommandAvailable "#kick" } ) then {
			
			if ( isNull getAssignedCuratorUnit NMD_curator ) then {
		
				player assignCurator NMD_curator;
				openCuratorInterface;
				_handled = true;

			};

		};

		_handled

	} ];

};