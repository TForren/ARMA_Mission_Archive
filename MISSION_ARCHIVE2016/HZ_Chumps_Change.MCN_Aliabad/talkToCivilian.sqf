// Pickupscript
_civ = _this select 0; 
_user = _this select 1;
_id = _this select 2;  
_topic = (_this select 3) select 0;

hint _topic;

_temperment = (random 1);



askSearch = {
	_temperment = _this select 0;
	
	_civ directSay "weatherConvo";
	
};

askWeather = {
	_temperment = _this select 0;
	
	_civ directSay "weatherConvo";
	
};

switch (_topic) do {
    case "search": {
		[_temperment] call askSearch;
	};
    case "weather": {
		[_temperment] call askWeather;
	};
    case "day": {
		[_temperment] call askDay;
	};
    case "terrorist": {
		[_temperment] call askTerrorist;
	};
    default {};
};
