/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-23 02:38:52
*/
 
//--- Check if player is admin
if ( !( player call NMD_fnc_isAdmin ) ) exitWith {};

#include "define.inc"

private [ "_mode", "_params" ];
_mode = _this select 0;
_params = _this select 1;

switch _mode do {

	case "onLoad": {

		//--- Hide hints
		hint "";

		//--- Map draw data loop
		NMD_RscDisplayAdmin_players = [];

		NMD_RscDisplayAdmin_loop = [] spawn {

			//--- While display is active
			while { true } do {
				
				private [ "_players", "_blacklist" ];
				_players = [];
				_blacklist = [];

				{

					//--- Check if player is in blacklist
					if ( !( vehicle _x in _blacklist ) ) then {
						
						private "_icon";
						_icon = if ( vehicle _x == _x ) then { 

							"\A3\ui_f\data\map\vehicleicons\iconmanvirtual_ca.paa" 

						} else {

							_blacklist pushBack vehicle _x;
							( getText ( configFile >> "CfgVehicles" >> typeOf vehicle _x >> "icon" ) ) call BIS_fnc_textureVehicleIcon

						};

						_player = [

							_icon,
							( side group _x ) call BIS_fnc_sideColor,
							visiblePositionASL vehicle _x,
							26,
							26,
							getDir vehicle _x,
							name ( effectiveCommander vehicle _x ),
							0,
							.1

						];

						//--- Add player to players array
						_players pushBack _player;

					};

				} foreach ( [] call NMD_fnc_listPlayers );

				//--- Update global players array for draw
				NMD_RscDisplayAdmin_players = _players;
				
				sleep 1;
			};

		};

		//--- Display
		_display = ( _params select 0 );

		//--- DisplayChild Intel
		[ [ _display ], "NMD_RscDisplayChildIntel", "admin" ] call NMD_fnc_initDisplay;

		//--- Control BackgroundOverlay
		_ctrlBackgroundOverlay = _display displayCtrl IDC_RSCDISPLAYADMIN_BACKGROUNDOVERLAY;
		_ctrlBackgroundOverlay ctrlShow false;

		//--- Control Map
		_ctrlMap = _display displayCtrl IDC_RSCDISPLAYADMIN_MAP;
		_ctrlMap ctrlAddEventHandler [ "Draw",  { [ "onDrawMap", _this ] call NMD_RscDisplayAdmin } ];
		_ctrlMap ctrlAddEventHandler [ "MouseButtonDblClick",  { [ "onClickMap", _this ] call NMD_RscDisplayAdmin } ];

		//--- Control EditSearch
		NMD_RscDisplayAdmin_search = "";

		_ctrlEditSearch = _display displayCtrl IDC_RSCDISPLAYADMIN_EDITSEARCH;
		_ctrlEditSearch ctrlAddEventHandler [ "KeyUp",  { [ "onSearchChanged", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];
		_ctrlEditSearch ctrlAddEventHandler [ "SetFocus",  { [ "onSearchSetFocus", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];
		_ctrlEditSearch ctrlAddEventHandler [ "KillFocus",  { [ "onSearchKillFocus", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control ListPlayers
		NMD_RscDisplayAdmin_player = objNull;

		_ctrlListPlayers = _display displayCtrl IDC_RSCDISPLAYADMIN_LISTPLAYERS;
		_ctrlListPlayers ctrlAddEventHandler [ "LBSelChanged",  { [ "onPlayerSelChanged", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control Filters
		{

			_ctrl = _display displayCtrl _x;
			_ctrl ctrlAddEventHandler [ "ButtonClick",  format [ " [ 'onFilterChanged', [ ctrlParent ( _this select 0 ), %1 ] ] call NMD_RscDisplayAdmin ", _forEachIndex ] ];

		} forEach [
			IDC_RSCDISPLAYADMIN_FILTER1,
			IDC_RSCDISPLAYADMIN_FILTER0,
			IDC_RSCDISPLAYADMIN_FILTER2,
			IDC_RSCDISPLAYADMIN_FILTER3,
			IDC_RSCDISPLAYADMIN_FILTER4
		];

		//--- Call filter EH
		NMD_RscDisplayAdmin_filter = missionNamespace getVariable [ "NMD_RscDisplayAdmin_filter", 1 ];
		[ "onFilterChanged", [ _display ] ] call NMD_RscDisplayAdmin;

		//--- Control ButtonKick
		_ctrlButtonKick = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONKICK;
		_ctrlButtonKick ctrlAddEventHandler [ "ButtonClick",  { [ "onClickKick", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control ButtonKick
		_ctrlButtonBan = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONBAN;
		_ctrlButtonBan ctrlAddEventHandler [ "ButtonClick",  { [ "onClickBan", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control ButtonHeal
		_ctrlButtonHeal = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONHEAL;
		_ctrlButtonHeal ctrlAddEventHandler [ "ButtonClick",  { [ "onClickHeal", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control ButtonKill
		_ctrlButtonKill = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONKILL;
		_ctrlButtonKill ctrlAddEventHandler [ "ButtonClick",  { [ "onClickKill", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control CheckFrozen
		_ctrlCheckFreeze = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKFREEZE;
		_ctrlCheckFreeze ctrlAddEventHandler [ "ButtonClick",  { [ "onClickFreeze", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control CheckNeutral
		_ctrlCheckNeutral = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKNEUTRAL;
		_ctrlCheckNeutral ctrlAddEventHandler [ "ButtonClick",  { [ "onClickNeutral", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control CheckImmune
		_ctrlCheckImmune = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKIMMUNE;
		_ctrlCheckImmune ctrlAddEventHandler [ "ButtonClick",  { [ "onClickImmune", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control CheckAdmin
		_ctrlCheckAdmin = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKADMIN;
		_ctrlCheckAdmin ctrlAddEventHandler [ "ButtonClick",  { [ "onClickAdmin", [ ctrlParent ( _this select 0 ) ] ] call NMD_RscDisplayAdmin } ];

		//--- Control ButtonIntel
		_ctrlButtonIntel = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONINTEL;
		_ctrlButtonIntel ctrlAddEventHandler [ "ButtonClick",  { [ "displayChild", [ ctrlParent ( _this select 0 ), NMD_RscDisplayChildIntel, true ] ] call NMD_RscDisplayAdmin } ];

		//--- Set default control focus
		ctrlSetFocus _ctrlListPlayers;
		
	};
	
	/////////////////////////////////////////////////////////////////////////////////
	
	case "onUnload": {
	
		terminate NMD_RscDisplayAdmin_loop;
		NMD_RscDisplayAdmin_loop = nil;
		NMD_RscDisplayAdmin_players = nil;
		NMD_RscDisplayAdmin_search = nil;
		NMD_RscDisplayAdmin_player = nil;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "showNotification": {

		_display = _params select 0;
		_message = _params select 1;
		_ctrlNotification = _display displayCtrl IDC_RSCDISPLAYADMIN_NOTIFICATION;

		//--- Display the notification
		_ctrlNotification ctrlSetFade 0;
		_ctrlNotification ctrlCommit 0;
		_ctrlNotification ctrlSetText format [ _message, name NMD_RscDisplayAdmin_player ];

		//--- Fade it
		_ctrlNotification ctrlSetFade 1;
		_ctrlNotification ctrlCommit 2;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onDrawMap": {

		_ctrlMap = _params select 0;

		//--- Draw player icons
		{ _ctrlMap drawIcon _x } foreach NMD_RscDisplayAdmin_players;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onClickMap": {

		_ctrlMap = _params select 0;
		_posX = _params select 2;
		_posY = _params select 3;
		_pos = _ctrlMap ctrlMapScreenToWorld [ _posX, _posY ];
		_player = vehicle NMD_RscDisplayAdmin_player;

		if ( !isNull _player ) then {

			//--- Move the player
			_velocity = velocity _player;
			_player setPos _pos;
			_player setVelocity _velocity;

			//--- Show notification
			[ "showNotification", [ ctrlParent _ctrlMap, "Moved %1" ] ] call NMD_RscDisplayAdmin;

		};

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onSearchChanged": {

		_display = _params select 0;
		_ctrlEditSearch = _display displayCtrl IDC_RSCDISPLAYADMIN_EDITSEARCH;
		_search = ctrlText _ctrlEditSearch;

		//--- Update player list
		NMD_RscDisplayAdmin_search = _search;
		[ "updatePlayers", [ _display, NMD_RscDisplayAdmin_filter ] ] call NMD_RscDisplayAdmin;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onSearchSetFocus": {

		_display = _params select 0;
		_ctrlTextSearchPlaceholder = _display displayCtrl IDC_RSCDISPLAYADMIN_TEXTSEARCHPLACEHOLDER;
		
		//--- Hide placeholder
		_ctrlTextSearchPlaceholder ctrlShow false;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onSearchKillFocus": {

		_display = _params select 0;
		_ctrlTextSearchPlaceholder = _display displayCtrl IDC_RSCDISPLAYADMIN_TEXTSEARCHPLACEHOLDER;

		if ( NMD_RscDisplayAdmin_search == "" ) then {

			//--- Show placeholder
			_ctrlTextSearchPlaceholder ctrlShow true;

		};

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onFilterChanged": {

		_display = _params select 0;
		_ctrlListPlayers = _display displayCtrl IDC_RSCDISPLAYADMIN_LISTPLAYERS;
		_ctrlBackgroundFilter = _display displayCtrl IDC_RSCDISPLAYADMIN_BACKGROUNDFILTER;
		_curSel = if ( count _params > 1 ) then { _params select 1 } else { NMD_RscDisplayAdmin_filter };

		//--- Update player list
		[ "updatePlayers", [ _display, _curSel ] ] call NMD_RscDisplayAdmin;

		//--- Update filters visual
		_delay = if ( NMD_RscDisplayAdmin_init ) then { 0.1 } else { 0 };

		{

			_ctrl = _display displayCtrl _x;
			_color = _forEachIndex call BIS_fnc_sideColor;
			_alpha = 0.5;
			_scale = 0.75;

			if ( _forEachIndex == _curSel ) then {

				_alpha = 1;
				_scale = 1;
				NMD_RscDisplayAdmin_filter = _forEachIndex;

			};

			_ctrl ctrlSetActiveColor _color;
			_color set [ 3, _alpha ];
			_ctrl ctrlSetTextColor _color;
			_pos = [ _ctrl, _scale, _delay ] call BIS_fnc_ctrlSetScale;

			if ( _forEachIndex == _curSel ) then {

				_ctrlBackgroundFilter ctrlSetPosition _pos;
				_ctrlBackgroundFilter ctrlCommit _delay;

			};

		} forEach [
			IDC_RSCDISPLAYADMIN_FILTER1,
			IDC_RSCDISPLAYADMIN_FILTER0,
			IDC_RSCDISPLAYADMIN_FILTER2,
			IDC_RSCDISPLAYADMIN_FILTER3,
			IDC_RSCDISPLAYADMIN_FILTER4
		];
	
	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onPlayerSelChanged": {

		_display = _params select 0;
		_ctrlMap = _display displayCtrl IDC_RSCDISPLAYADMIN_MAP;
		_ctrlListPlayers = _display displayCtrl IDC_RSCDISPLAYADMIN_LISTPLAYERS;
		_ctrlTextPlayerName = _display displayCtrl IDC_RSCDISPLAYADMIN_TEXTPLAYERNAME;
		_ctrlR2TPlayer = _display displayCtrl IDC_RSCDISPLAYADMIN_R2TPLAYER;
		_ctrlButtonKick = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONKICK;
		_ctrlButtonBan = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONBAN;
		_ctrlButtonKill = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONKILL;
		_ctrlButtonHeal = _display displayCtrl IDC_RSCDISPLAYADMIN_BUTTONHEAL;
		_ctrlCheckFreeze = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKFREEZE;
		_ctrlCheckNeutral = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKNEUTRAL;
		_ctrlCheckImmune = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKIMMUNE;
		_ctrlCheckAdmin = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKADMIN;

		_curSel = lbCurSel _ctrlListPlayers;
		_uid = _ctrlListPlayers lbData _curSel;
		_player = _uid call NMD_fnc_unitByUID;

		//--- Globalize selected player
		NMD_RscDisplayAdmin_player = _player;

		//--- Player selected?
		if ( !isNull _player ) then {

			_color = [ 1, 1, 1, 1 ];
			_isAdmin = false;

			//--- Update player name
			_ctrlTextPlayerName ctrlSetText name _player;

			//--- Check/uncheck immune
			_ctrlCheckFreeze cbSetChecked ( _player getVariable [ "NMD_ModuleAdmin_frozen", false ] );

			//--- Check/uncheck neutral
			_ctrlCheckNeutral cbSetChecked ( _player getVariable [ "NMD_ModuleAdmin_neutral", false ] );

			//--- Check/uncheck immune
			_ctrlCheckImmune cbSetChecked ( _player getVariable [ "NMD_ModuleAdmin_immune", false ] );

			//--- Check if player is admin
			if ( _player call NMD_fnc_isAdmin ) then {  

				_color = [ 0.9, 0.45, 0.1, 1 ];
				_isAdmin = true;

			};

			//--- Set admin/player name color
			_ctrlTextPlayerName ctrlSetTextColor _color;

			//--- Set admin checkbox
			_ctrlCheckAdmin cbSetChecked _isAdmin;

			//--- Enable / disable kick
			_ctrlButtonKick ctrlEnable ( player != _player && serverCommandAvailable "#kick" );

			//--- Enable / disable ban
			_ctrlButtonBan ctrlEnable ( player != _player && serverCommandAvailable "#exec ban" );

			//--- Enable / disable admin checkbox
			_ctrlCheckAdmin ctrlEnable !( _player == player );

			//--- Enable player controls
			{

				_x ctrlEnable true;

			} forEach [
				_ctrlButtonKill,
				_ctrlButtonHeal,
				_ctrlCheckFreeze,
				_ctrlCheckImmune
			];

			//--- Animate map to selected player
			_delay = if ( NMD_RscDisplayAdmin_init ) then { 0 } else { 0 };
			_scale = ctrlMapScale _ctrlMap;

			if ( !ctrlMapAnimDone _ctrlMap ) then { ctrlMapAnimClear _ctrlMap };

			_ctrlMap ctrlMapAnimAdd [ _delay, _scale, ( getPosASL _player ) ];
			ctrlMapAnimCommit _ctrlMap;

		} else {

			//--- Terminate feed
			_ctrlTextPlayerName ctrlSetText "";
			_ctrlR2TPlayer ctrlSetText "";

			//--- Uncheck
			_ctrlCheckFreeze cbSetChecked false;
			_ctrlCheckImmune cbSetChecked false;
			_ctrlCheckAdmin cbSetChecked false;

			//--- Disable player controls
			{

				_x ctrlEnable false;

			} forEach [
				_ctrlButtonKick,
				_ctrlButtonBan,
				_ctrlButtonKill,
				_ctrlButtonHeal,
				_ctrlCheckFreeze,
				_ctrlCheckImmune,
				_ctrlCheckAdmin
			];

		};

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "updatePlayers": {

		_display = _params select 0;
		_ctrlListPlayers = _display displayCtrl IDC_RSCDISPLAYADMIN_LISTPLAYERS;
		_side = _params select 1;
		_search = NMD_RscDisplayAdmin_search;
		
		//--- Clear player list
		lbClear _ctrlListPlayers;

		//--- Populate player list
		{

			//--- Filter side
			if ( 

				( _side > 3 ) ||
				{ _side == ( side group _x ) call BIS_fnc_sideID }

			) then {

				_name = name _x;

				//--- Filter name
				if ( _search == "" || { [ _search, _name ] call BIS_fnc_inString } ) then {
					
					_uid = getPlayerUID _x;
					_icon = ( getText ( configFile >> "CfgVehicles" >> typeOf _x >> "icon" ) ) call BIS_fnc_textureVehicleIcon;

					//--- Add player to list
					_lbPlayer = _ctrlListPlayers lbAdd _name;
					_ctrlListPlayers lbSetPicture [ _lbPlayer, _icon ];
					_ctrlListPlayers lbSetData [ _lbPlayer, _uid ];

					//--- Set admin color
					if ( _x call NMD_fnc_isAdmin ) then {  

						_ctrlListPlayers lbSetColor [ _lbPlayer, [ 0.9, 0.45, 0.1, 1 ] ];

					};

				};

			};

		} foreach ( [] call NMD_fnc_listPlayers );

		//--- Sort player list
		lbSort _ctrlListPlayers;

		//--- Select first player in list
		_ctrlListPlayers lbSetCurSel 0;
	
	};
	
	/////////////////////////////////////////////////////////////////////////////////
	
	case "onClickKick": {

		//--- Kick player
		NMD_RscDisplayAdmin_player call NMD_fnc_adminKick;

		//--- Show notification
		[ "showNotification", [ _params select 0, "Kicked %1" ] ] call NMD_RscDisplayAdmin;
	
	};

	/////////////////////////////////////////////////////////////////////////////////
	
	case "onClickBan": {
		
		//--- Ban player
		NMD_RscDisplayAdmin_player call NMD_fnc_adminBan;

		//--- Show notification
		[ "showNotification", [ _params select 0, "Banned %1" ] ] call NMD_RscDisplayAdmin;
	
	};

	/////////////////////////////////////////////////////////////////////////////////
	
	case "onClickKill": {
		
		//--- Kill the player
		NMD_RscDisplayAdmin_player setDamage 1;

		//--- Show notification
		[ "showNotification", [ _params select 0, "Killed %1" ] ] call NMD_RscDisplayAdmin;
	
	};

	/////////////////////////////////////////////////////////////////////////////////
	
	case "onClickHeal": {
		
		//--- Heal the player
		NMD_RscDisplayAdmin_player setDamage 0;

		//--- Show notification
		[ "showNotification", [ _params select 0, "Healed %1" ] ] call NMD_RscDisplayAdmin;
	
	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onClickFreeze": {

		_display = _params select 0;
		_ctrlCheckFreeze = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKFREEZE;
		_checked = cbChecked _ctrlCheckFreeze;

		//--- Make the player immune/vulnerable
		[ NMD_RscDisplayAdmin_player, _checked ] call NMD_fnc_adminFreeze;

		//--- Show notification
		_notification = "%1 has been frozen";

		if ( !_checked ) then {

			_notification = "%1 has been unfrozen";

		};

		[ "showNotification", [ _display, _notification ] ] call NMD_RscDisplayAdmin;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onClickNeutral": {

		_display = _params select 0;
		_ctrlCheckNeutral = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKNEUTRAL;
		_checked = cbChecked _ctrlCheckNeutral;

		//--- Make the player immune/vulnerable
		[ NMD_RscDisplayAdmin_player, _checked ] call NMD_fnc_adminNeutral;

		//--- Show notification
		_notification = "%1 is now neutral";

		if ( !_checked ) then {

			_notification = "%1 is no longer neutral";

		};

		[ "showNotification", [ _display, _notification ] ] call NMD_RscDisplayAdmin;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onClickImmune": {

		_display = _params select 0;
		_ctrlCheckImmune = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKIMMUNE;
		_checked = cbChecked _ctrlCheckImmune;
		_player = NMD_RscDisplayAdmin_player;

		//--- Make the player immune/vulnerable
		[ _player, _checked ] call NMD_fnc_adminImmune;

		//--- Show notification
		_notification = format [ "%1 is now immune", name _player ];

		if ( !_checked ) then {

			_notification = format [ "%1 is now vulnerable", name _player ];

		};

		[ "showNotification", [ _display, _notification ] ] call NMD_RscDisplayAdmin;

	};

	/////////////////////////////////////////////////////////////////////////////////

	case "onClickAdmin": {

		_display = _params select 0;
		_ctrlListPlayers = _display displayCtrl IDC_RSCDISPLAYADMIN_LISTPLAYERS;
		_ctrlCheckAdmin = _display displayCtrl IDC_RSCDISPLAYADMIN_CHECKADMIN;
		_curSel = lbCurSel _ctrlListPlayers;
		_checked = cbChecked _ctrlCheckAdmin;
		_player = NMD_RscDisplayAdmin_player;
		_color = [ 1, 1, 1, 1 ];
		_notification = "%1 is no longer an administrator";

		if ( _checked ) then {

			//--- Add admin
			_player call NMD_fnc_addAdmin;

			_color = [ 0.9, 0.45, 0.1, 1 ];
			_notification = "%1 is now an administrator";

		} else {

			//--- Remove admin
			_player call NMD_fnc_removeAdmin;

		};

		_ctrlListPlayers lbSetColor [ _curSel, _color ];
		[ "showNotification", [ _display, _notification ] ] call NMD_RscDisplayAdmin;

	};

	/////////////////////////////////////////////////////////////////////////////////
	
	case "displayChild": {
	
		_display = _params select 0;
		_fnc = _params select 1;
		_show = _params select 2;

		//--- Disable controls
		{

			( _display displayCtrl _x ) ctrlEnable !_show;

		} forEach [
			IDC_RSCDISPLAYADMIN_MAP,
			IDC_RSCDISPLAYADMIN_GROUPPLAYERS,
			IDC_RSCDISPLAYADMIN_GROUPPLAYER,
			IDC_RSCDISPLAYADMIN_BUTTONINTEL,
			1
		];

		//--- Show overlay
		_ctrlBackgroundOverlay = _display displayCtrl IDC_RSCDISPLAYADMIN_BACKGROUNDOVERLAY;
		_ctrlBackgroundOverlay ctrlShow _show;

		//--- Call child function
		_event = if ( _show ) then { "onShow" } else { "onHide" };
		[ _event, [ _display ] ] call _fnc;

		//--- Focus player list on hide
		if ( !_show ) then {

			_ctrlListPlayers = _display displayCtrl IDC_RSCDISPLAYADMIN_LISTPLAYERS;
			ctrlSetFocus _ctrlListPlayers;

		};
	
	};
	
};
