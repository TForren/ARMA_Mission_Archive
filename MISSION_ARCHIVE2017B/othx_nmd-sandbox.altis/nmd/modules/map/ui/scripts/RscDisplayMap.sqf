/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-19 13:53:58
*/
 
#include "define.inc"

private [ "_mode", "_params" ];
_mode = _this select 0;
_params = _this select 1;

switch _mode do {

	case "onLoad": {

		//--- Map draw data loop
		NMD_RscDisplayMap_players = [];

		NMD_RscDisplayMap_loop = [] spawn {

			//--- While display is active
			while { true } do {
				
				private [ "_players", "_blacklist" ];
				_players = [];
				_blacklist = [];

				{

					if ( side group _x == side group player ) then { 

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

					};

				} foreach ( [] call NMD_fnc_listPlayers );

				//--- Update global players array for draw
				NMD_RscDisplayMap_players = _players;
				
				sleep 1;
			};

		};

		//--- Random clouds
		_cloudTextures = [
			"\A3\data_f\mrak_01_ca.paa",
			"\A3\data_f\mrak_02_ca.paa",
			"\A3\data_f\mrak_03_ca.paa",
			"\A3\data_f\mrak_04_ca.paa"
		];

		//--- Generate cloud texture array
		NMD_RscDisplayMap_clouds = [];
		_mapSize = [] call BIS_fnc_mapSize;
		_cloudsGrid = 500;
		_cloudsMax = ( _mapSize / _cloudsGrid )* overcast;
		_cloudsSize = ( _cloudsGrid / 2 ) + ( _cloudsGrid* overcast );

		for "_i" from 1 to (_cloudsMax) do {

			NMD_RscDisplayMap_clouds pushBack [

				_cloudTextures call bis_fnc_selectrandom,
				( random _mapSize ),
				( ( _mapSize / _cloudsMax )* _i ),
				random 360,
				_cloudsSize + ( _cloudsSize* overcast ),
				[ 1, 1, 1, 0.25 ]
					
			];

		};
	
		//--- Controls
		_display = ( _params select 0 );

		//--- Control FadeEffect
		_ctrlFade = _display displayCtrl IDC_RSCDISPLAYMAP_FADEEFFECT;
		_ctrlFade ctrlSetFade 1;
		_ctrlFade ctrlCommit 0.75;

		//--- Control TextElevation
		_ctrlTextElevation = _display displayCtrl IDC_RSCDISPLAYMAP_TEXTELEVATION;
		_ctrlTextGrid ctrlSetText str ( round ( getTerrainHeightASL getPosASL player ) );

		//--- Control TextGrid
		_ctrlTextGrid = _display displayCtrl IDC_RSCDISPLAYMAP_TEXTGRID;
		_ctrlTextGrid ctrlSetText ( mapGridPosition getPosASL player );
		
		//--- Control Map
		_ctrlMap = _display displayCtrl IDC_RSCDISPLAYMAP_MAP;
		_ctrlMap ctrlAddEventHandler [ "Draw",  { [ "onDrawMap", _this ] call NMD_RscDisplayMap } ];
		_ctrlMap ctrlAddEventHandler [ "MouseMoving",  { [ "onMouseMove", _this ] call NMD_RscDisplayMap } ];

		if ( vehicle player == player || { effectiveCommander ( vehicle player ) == player  } ) then {

			_ctrlMap ctrlSetTooltip "Click to teleport to cursor";
			_ctrlMap ctrlAddEventHandler [ "MouseButtonClick",  { [ "onClickMap", _this ] call NMD_RscDisplayMap } ];

		} else {

			_ctrlMap ctrlSetTooltip "Only the commander of this vehicle can teleport";

		};

	};

	/////////////////////////////////////////////////////////////////////////////////
	
	case "onUnload": {

		terminate NMD_RscDisplayMap_loop;
		NMD_RscDisplayMap_loop = nil;
		NMD_RscDisplayMap_clouds = nil;
		NMD_RscDisplayMap_players = nil;

	};
	
	/////////////////////////////////////////////////////////////////////////////////
	
	case "onDrawMap": {

		_ctrlMap = ( _params select 0 );
		_time = diag_ticktime;

		//--- Draw player icons
		{ _ctrlMap drawIcon _x } foreach NMD_RscDisplayMap_players;

		//--- Draw clouds
		_cloudSpeed = sin _time* ( 1138 + 2000* overcast );
		{

			_texture = _x select 0;
			_posX = _x select 1;
			_posY = _x select 2;
			_dir = _x select 3;
			_size = _x select 4;
			_color = _x select 5;

			_ctrlMap drawIcon [

				_texture,
				_color,
				[
					_posX + _cloudSpeed,
					_posY
				],
				_size,
				_size,
				_dir + ( _time* _foreachindex ) / ( count NMD_RscDisplayMap_clouds* 3 ),
				"",
				false

			];

		} foreach NMD_RscDisplayMap_clouds;

	};
	
	/////////////////////////////////////////////////////////////////////////////////
	
	case "onClickMap": {
	
		_ctrlMap = ( _params select 0 );
		_position = _ctrlMap ctrlMapScreenToWorld [ ( _params select 2 ), ( _params select 3 ) ];

		closeDialog 1;

		_position spawn {
			
			cuttext [ "","BLACK OUT" ];
			2 fadesound 0;
			sleep 2;

			_velocity = velocity ( vehicle player );
			( vehicle player ) setPosATL ( _this + [ ( ( getPosATL vehicle player ) select 2 ) ] );
			( vehicle player ) setVelocity _velocity;
			
			2 fadesound 1;
			cuttext [ "","BLACK IN" ];

		};
		
	};

	/////////////////////////////////////////////////////////////////////////////////
	
	case "onMouseMove": {

		_display = ctrlParent ( _params select 0 );
		_ctrlMap = ( _params select 0 );
		_ctrlTextLocation = _display displayCtrl IDC_RSCDISPLAYMAP_TEXTLOCATION;
		_ctrlTextElevation = _display displayCtrl IDC_RSCDISPLAYMAP_TEXTELEVATION;
		_ctrlTextGrid = _display displayCtrl IDC_RSCDISPLAYMAP_TEXTGRID;

		_position = _ctrlMap ctrlMapScreenToWorld [ ( _params select 1 ), ( _params select 2 ) ];

		//--- Set location
		_location = nearestLocations [ _position, [ "CityCenter", "NameCity", "NameCityCapital", "NameVillage" ], 1000 ];
		_location = if ( count _location > 0 ) then { text ( _location select 0 ) } else { "" };
		_ctrlTextLocation ctrlSetText _location; 

		//--- Set elevation
		_ctrlTextElevation ctrlSetText format[ "%1m", round getTerrainHeightASL _position ];

		//--- Set grid
		_ctrlTextGrid ctrlSetText format[ "%1", mapGridPosition _position ];
		
	};
	
};
