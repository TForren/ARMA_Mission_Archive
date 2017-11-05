/*---------------------------------------------*/

_cities = call SL_fnc_urbanAreas;

{

	_markers = [];
	_markers_cnt = 0;

	_cityName = _x select 0;
	_cityPos = _x select 1;
	_cityRadA = _x select 2;
	_cityRadB = _x select 3;
	_cityType = _x select 4;
	_cityAngle = _x select 5;

	if(_cityRadB > _cityRadA) then {
		_cityRadA = _cityRadB;
	};

	_buildings = [_cityPos,_cityRadA] call SL_fnc_findBuildings;

	{

		if ( [_x] call SL_fnc_buildingPositions >= 2 ) then {


			_pos = _x call getGridPos;
			_mkr = str _pos;

			if (getMarkerPos _mkr select 0 == 0) then {
				_mkr = createMarkerLocal[_mkr, _pos];
				_mkr setMarkerShapeLocal "RECTANGLE";
				_mkr setMarkerTypeLocal "Border";
				_mkr setMarkerSizeLocal [50,50];
				_mkr setMarkerColor "ColorBlack";
				_mkr setMarkerAlpha 0;

				_markers set [_markers_cnt, _mkr];
				_markers_cnt = _markers_cnt + 1;
			};

		};


	} forEach _buildings;

	_trigE = createTrigger ["EmptyDetector", _cityPos ];
	_trigE setTriggerActivation ["WEST", "PRESENT", false];
	_trigE setTriggerArea [_cityRadA, _cityRadA, 0, false];
	_trigE setTriggerStatements ["this", format["%1 call SL_fnc_createTriggers",_markers], ""];

} forEach _cities;