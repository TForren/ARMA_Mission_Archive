FNC_FireAtBuilding = {

	private ["_veh"];
	_veh = _this;

	gunner _veh lookAt RadarTarget;

	sleep(2.5);

	gunner _veh fireAtTarget [RadarTarget, "cannon_120mm_long"];

};

[] spawn {

	sleep 480; // 8'

	[units InfSqd3, 1] call BIS_hideUnits;
	[[APC1], 1] call BIS_hideUnits;

	sleep 180; // 3'

	[[Strider1], 1] call BIS_hideUnits;

	sleep 300; // 5'

	[units InfSqd1, 1] call BIS_hideUnits;
	[[APC2], 1] call BIS_hideUnits;

	sleep 300; // 5'

	[units InfSqd4, 1] call BIS_hideUnits;
	[[Tank], 1] call BIS_hideUnits;

	sleep 300; // 5'

	[units InfFT1, 1] call BIS_hideUnits;
	[units InfFT2, 1] call BIS_hideUnits;
	[[Strider2], 1] call BIS_hideUnits;

	sleep 180; // 3'

	[units InfSqd2, 1] call BIS_hideUnits;

};