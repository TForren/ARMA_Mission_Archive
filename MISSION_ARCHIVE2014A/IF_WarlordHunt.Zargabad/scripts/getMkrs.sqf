// Pickupscript
_civ = _this select 0; 
_user = _this select 1;
id = _this select 2;  

	if (side player == east) then {
		_mkr1 = createMarkerLocal ["mkrcase1", getPos case1];
		_mkr1 setMarkerColorLocal "ColorOpfor";
		_mkr1 setMarkerShapeLocal "ICON";
		_mkr1 setMarkerTypeLocal "mil_dot";
		_mkr1 setMarkerTextLocal "suitcase 1";
		
		_mkr2 = createMarkerLocal ["mkrcase2", getPos case2];
		_mkr2 setMarkerColorLocal "ColorOpfor";
		_mkr2 setMarkerShapeLocal "ICON";
		_mkr2 setMarkerTypeLocal "mil_dot";
		_mkr2 setMarkerTextLocal "suitcase 2";

		_mkr3 = createMarkerLocal ["mkrcase3", getPos case3];
		_mkr3 setMarkerColorLocal "ColorOpfor";
		_mkr3 setMarkerShapeLocal "ICON";
		_mkr3 setMarkerTypeLocal "mil_dot";
		_mkr3 setMarkerTextLocal "suitcase 3";
		
		informer4 directSay "mkrResponse";
	};  