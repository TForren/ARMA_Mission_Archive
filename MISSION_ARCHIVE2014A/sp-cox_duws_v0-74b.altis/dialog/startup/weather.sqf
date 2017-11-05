//0 setFog [0.1, 0.09, 10]
// 1�re valeur: --> INTENSITE BROUILLARD
// 2�me valeur: rester entre 0.01(haut) et 0.1(bas)  --> hauteur brouillard
// 3�me valeur: mieux vaut rester � 10 --> hauteur de base

//  fog
// tropical --> intensit� (0.3 - 0.9) Hauteur totalement variable
// mediter  --> intensit� (0.5 - 0.0)
// temp�r�  --> intensit� (0.75 - 0.0)
// temp�r� froid  --> intensit� (0.75 - 0.0)
// aride 0

// 0 setOvercast 0.9
// temp�r� 0.3 - 0.8
// temp�r� froid 0.4 - 0.8
// tropical 0 - 1
// medit 0 - 0.6
// aride 0 - 0.3




_weather_loop = true;
if (isMultiplayer) then {
_handle = [] execVM "dialog\startup\weather_broadcast.sqf";
};

switch (weather_type) do
{
    case "tropical":
    {
    while {_weather_loop} do {
    _wait_after = random 1800; // EN SECONDES
    
    _fog_time = random 60; // EN MINUTES !!
    _fog_time = (_fog_time * 60); // transforme en secondes
    _fog_intensity = random 6;
    _fog_intensity = (_fog_intensity / 10); // transforme en dix�mes
    _fog_intensity = (_fog_intensity + 0.3); // donne la valeur min
	if (_fog_intensity<0.01) then {_fog_intensity = 0.01};
    _fog_height = random 1;
    _fog_height = (_fog_height / 10); // transforme en centiemes 
	if (_fog_height<0.1) then {_fog_height = 0.1};	
	diag_log format ["DUWS DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];
    _fog_time setFog [_fog_intensity, _fog_height, 10];

    _overcast_intensity = random 1;
    0 setOvercast _overcast_intensity;

    _wait_total = _fog_time + _wait_after;
    _wait_total_minute = _wait_total / 60;
    sleep (_wait_total);
    }; //end while
    }; //end case




    case "arid":
    {
      while {_weather_loop} do {
      _wait_after = random 1800; // EN SECONDES
    
     _fog_time = random 60; // EN MINUTES !!
     _fog_time = (_fog_time * 60); // transforme en secondes	
	 
     1 setFog [0.01, 0.01, 0.01];
    
     _overcast_intensity = random 3;
     _overcast_intensity = (_overcast_intensity / 10); // transforme en dixi�mes
     0 setOvercast _overcast_intensity;
	 
	 _fog_time = 0;
     _wait_total = _fog_time + _wait_after;
     _wait_total_minute = _wait_total / 60;
     sleep (_wait_total);
    }; //end while
    };
    
    case "temperate":
    {
    while {_weather_loop} do {
    _wait_after = random 1800; // EN SECONDES
    
    _fog_time = random 60; // EN MINUTES !!
    _fog_time = (_fog_time * 60); // transforme en secondes
    _fog_intensity = random 8;
    _fog_intensity = (_fog_intensity / 10); // transforme en dix�mes
	if (_fog_intensity<0.01) then {_fog_intensity = 0.01};	
    _fog_height = random 1;
    _fog_height = (_fog_height / 10); // transforme en centiemes
	if (_fog_height<0.1) then {_fog_height = 0.1};	
	diag_log format ["DUWS DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];	
    _fog_time setFog [_fog_intensity, _fog_height, 10];
    
    _overcast_intensity = random 5;
    _overcast_intensity = (_overcast_intensity / 10); // transforme en dixi�mes
    _overcast_intensity = (_overcast_intensity + 0.3);  // ajoute la val min
    0 setOvercast _overcast_intensity;

    _wait_total = _fog_time + _wait_after;
    _wait_total_minute = _wait_total / 60;
    sleep (_wait_total);
    }; //end while
    };
    
    
    case "temperate_cold":
    {
      while {_weather_loop} do {
      _wait_after = random 1800; // EN SECONDES
    
     _fog_time = random 60; // EN MINUTES !!
     _fog_time = (_fog_time * 60); // transforme en secondes
     _fog_intensity = random 8;
     _fog_intensity = (_fog_intensity / 10); // transforme en dix�mes
	 if (_fog_intensity<0.01) then {_fog_intensity = 0.01};	 
     _fog_height = random 1;
     _fog_height = (_fog_height / 10); // transforme en centiemes
	if (_fog_height<0.1) then {_fog_height = 0.1};	
	diag_log format ["DUWS DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];	
     _fog_time setFog [_fog_intensity, _fog_height, 10];
    
     _overcast_intensity = random 4;
     _overcast_intensity = (_overcast_intensity / 10); // transforme en dixi�mes
     _overcast_intensity = (_overcast_intensity + 0.4);  // ajoute la val min
     0 setOvercast _overcast_intensity;

     _wait_total = _fog_time + _wait_after;
     _wait_total_minute = _wait_total / 60;
     sleep (_wait_total);
    }; //end while
    };
    
    
    case "mediterranean":
    {
      while {_weather_loop} do {
      _wait_after = random 1800; // EN SECONDES
    
     _fog_time = random 60; // EN MINUTES !!
     _fog_time = (_fog_time * 60); // transforme en secondes
     _fog_intensity = random 5;
     _fog_intensity = (_fog_intensity / 10); // transforme en dix�mes
     if (_fog_intensity<0.01) then {_fog_intensity = 0.01};	 
     _fog_height = random 1;
     _fog_height = (_fog_height / 10); // transforme en centiemes
	if (_fog_height<0.1) then {_fog_height = 0.1};	
	diag_log format ["DUWS DEBUG: %3 setFog [%1, %2, 10]", _fog_intensity, _fog_height, _fog_time];	
     _fog_time setFog [_fog_intensity, _fog_height, 10];
    
     _overcast_intensity = random 6;
     _overcast_intensity = (_overcast_intensity / 10); // transforme en dixi�mes
     0 setOvercast _overcast_intensity;

     _wait_total = _fog_time + _wait_after;
     _wait_total_minute = _wait_total / 60;
     sleep (_wait_total);
    }; //end while
    };
};