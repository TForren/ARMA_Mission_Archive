private ["_paramName", "_paramValue", "_i", "_currentMarker"];

// Create a mission entry for the server and client RPT file, easier to debug when you know what mission created the error
diag_log text ""; 
diag_log text format["|=============================   %1   =============================|", missionName]; // stamp mission name
diag_log text "";

for [{_i = 0}, {_i < count paramsArray}, {_i = _i +1 }] do
{
	_paramName =(configName ((missionConfigFile >> "Params") select _i));
	_paramValue = (paramsArray select _i);
	missionNameSpace setVariable [_paramName, _paramValue];
};

timeLimit = timeLimit * 60;

[] call compile preprocessFileLineNumbers "setdate.sqf";

_markerPrefixCharArray = toArray "mrkZone";
_maxi = count _markerPrefixCharArray;
{
	_markerCharArray = toArray _x;
	_equal = (count _markerCharArray) >= _maxi;
	_i = 0;
	while {_equal && _i < _maxi} do
	{
		if ((_markerCharArray select _i) != (_markerPrefixCharArray select _i)) then
		{
			_equal = false;
		};
		_i = _i + 1;
	};
	if (_equal) then
	{
		_x setMarkerAlpha 0;
	};
} forEach allMapMarkers;

preInitDone = true;