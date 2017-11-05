/* HZ_fnc_wreckRoads
 * populates roads with vehicle wrecks with debris (including some ace repair items)
 * ARGUMENTS: [Trigger,num of wrecks, num of debris, include military wrecks, include fire sources]
 * RETURNS: Nothing
 * 
 *  [[townArea,[blackListedHouse]]] call HZ_fnc_markBuildings;
*/
[(_this select 0)] spawn {
	_params = (_this select 0);
	_areaCenter = (getpos (_params select 0));
	_areaX = (triggerArea (_params select 0)) select 0;  
	_areaY = (triggerArea (_params select 0)) select 1;
	_blackList = _params select 1;
	{
		if !(_x in _blackList) then {
			//systemchat format ["object: %1",_x];
			_bbr = boundingBoxReal _x;
			_p1 = _bbr select 0;
			_p2 = _bbr select 1;
			//systemchat format ["box: %1, %2",_p1,_p2];
			_maxWidth = abs ((_p2 select 0) - (_p1 select 0)) / 2;
			_maxLength = abs ((_p2 select 1) - (_p1 select 1)) / 2;
			
			_markerstr = createMarker [format ["BuildingMarker%1",count buildingMarkers], getpos _x];
			buildingMarkers = buildingMarkers + [_markerstr];
			_markerstr setMarkerShape "RECTANGLE";
			_markerstr setMarkerColor "ColorGrey";
			_markerstr setMarkerBrush "SolidFull";
			//systemchat format ["size: %1, %2",_maxWidth,_maxLength];
			_markerstr setMarkerSize [_maxWidth,_maxLength];
			_markerstr setMarkerDir (getDir _x);
		};
	} foreach nearestObjects [_areaCenter, ["building"], (selectMax [_areaX,_areaY])];
	deletevehicle (_params select 0);
}; //end spawn

