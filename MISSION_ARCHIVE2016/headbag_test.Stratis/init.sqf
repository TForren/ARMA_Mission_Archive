[] spawn {
	_headgearon = false;
	while {true} do {
		{
			if ((headGear _x == "mgsr_headbag") && !_headgearon) then {
				_headgearon = true;
				systemchat "headgear on first time";
				cutText ["","BLACK OUT", 3];
				sleep 3;
			} else {
				if ((headGear _x == "mgsr_headbag") && _headgearon) then {
					systemchat "headgear on loop";
					cutText ["","BLACK FADED", 1];
				};
			};
			if ((headGear _x != "mgsr_headbag") && _headgearon) then {
				systemchat "headgear off";
				cutText ["","WHITE IN",4];
				_headgearon = false;
			};
		} foreach allUnits;
		sleep 1;
	};
};

