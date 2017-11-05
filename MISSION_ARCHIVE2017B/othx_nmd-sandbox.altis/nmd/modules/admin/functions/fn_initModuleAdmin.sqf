/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-15 07:22:33
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-22 09:53:05
*/

private "_mode";
_mode = [ _this, 0, "", [""] ] call BIS_fnc_param;

switch _mode do {

	case "preInit": {
		//--- Server
		if ( isServer ) then {

			//---Admins array
			NMD_ModuleAdmin_admins = [ "76561198008775797" ];

		};

	};

	case "postInit": {

		//--- Client
		if ( hasInterface ) then {

			//--- Wait for player
			waitUntil { !isNull player };

			//--- Send server admin init request
			[ player, "NMD_fnc_adminInitPlayer", false ] call BIS_fnc_MP;

			//--- Respawn EH
			NMD_ModuleAdmin_respawn = player addEventHandler [ "respawn", { 
				
				//--- Re-freeze player if frozen before respawn
				if ( player getVariable [ "NMD_ModuleAdmin_frozen", false ] ) then {
					
					[ player, true ] call NMD_fnc_adminFreeze;

				};

				//--- Make player neutral if set before respawn
				if ( player getVariable [ "NMD_ModuleAdmin_neutral", false ] ) then {
					
					[ player, true ] call NMD_fnc_adminNeutral;

				};

				//--- Make player invulnerable if set before respawn
				if ( player getVariable [ "NMD_ModuleAdmin_immune", false ] ) then {
					
					[ player, true ] call NMD_fnc_adminImmune;

				};

			} ];

		};

	};

};