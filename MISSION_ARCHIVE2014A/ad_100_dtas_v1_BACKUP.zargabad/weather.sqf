private ["_rain", "_date"];

0 setFog (fogParam / 10);
0 setOvercast (overcastParam / 10);
//_rain = (rainParam / 10);
//0 setRain _rain;


hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;


switch (sandStormParam) do {
    case 1: {
		0 setFog [.6, 0.05, 0];
		hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]];
		[player, -1.0, .5, true] call BIS_fnc_sandstorm;
		setWind [4, 5, true];
	};
    case 2: {
		0 setFog [.7, 0.04, 0];
		hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.10], [0.8, 0.74, 0.63, 0.10], [0.8, 0.74, 0.63, 0.10]];
		[player, -1.0, .8, true] call BIS_fnc_sandstorm;
		setWind [8, 5, true];
	};    
	case 3: {
		0 setFog [1, 0.04, 0];
		hndl ppEffectAdjust [.5, 1.0, 0.0, [0.82, 0.69, 0.43, 0.20], [0.8, 0.74, 0.63, 0.40], [0.8, 0.74, 0.63, 0.30]];
		[player, -1.0, 1.0, true] call BIS_fnc_sandstorm;
		setWind [15, 10, true];
	};

};

hndl ppEffectCommit 0;

sleep 5;
skipTime 1;
sleep 5;
_date = date;
_date set [3, (_date select 3) - 1];
setDate _date;

while {true} do
{
	//0 setRain _rain;
//	0 setFog (fogParam / 10);
	0 setOvercast (overcastParam / 10);
	sleep 1;
};