trucks = ["LIB_opelblitz_ammo","LIB_opelblitz_fuel","LIB_opelblitz_parm"];publicVariable "trucks";
truckspawnPos = [supplyTruckspawn1,supplyTruckspawn2,supplyTruckspawn3,supplyTruckspawn4,supplyTruckspawn5]; publicVariable "truckspawnPos";
truckmovePos = [supplyTruckPos1,supplyTruckPos2,supplyTruckPos3,supplyTruckPos4]; publicVariable "truckmovePos";
truckallPos = truckspawnPos + truckmovePos;
truckMax = 2; publicVariable "truckMax";
curTrucks = 0; publicVariable "curTrucks";
spawnedTrucks = 0; publicVariable "spawnedTrucks";
destroyedTrucks = 0;publicVariable "spawnedTrucks";
[] spawn {
	while {true} do {
		_chosenTruck = trucks call BIS_fnc_selectRandom;	
		_chosenSpawn = truckspawnPos call BIS_fnc_selectRandom;
		
		if ( (curTrucks < truckMax) && (spawnedTrucks < 10)) then {
			_hndl = [_chosenTruck,_chosenSpawn] spawn {
				_chosenTruck = _this select 0;
				_chosenSpawn = _this select 1;
				_vic = createVehicle [_chosenTruck, getpos _chosenSpawn, [], 0, "NONE"];
				_EHkilledIdx = _vic addEventHandler ["killed", {destroyedTrucks = destroyedTrucks + 1;publicVariable "destroyedTrucks";}];
				createVehicleCrew _vic;
				{_x call FNC_TrackUnit;} forEach crew _vic;
				_vic call FNC_TrackUnit;
				_vic addEventHandler ["Killed", "[format ['%1 destroyed',_vic],100] call HZ_fnc_addReqPoints"];
				curTrucks = curTrucks + 1; publicVariable "curTrucks";
				spawnedTrucks = spawnedTrucks + 1; publicVariable "spawnedTrucks";
				
				while {alive _vic} do {
					_startTime = time;
					_destination = getpos (truckallPos call BIS_fnc_selectRandom);
					_wp = (group _vic) addWaypoint [_destination, 0];
					[(group _vic), 0] setWaypointSpeed "LIMITED";
					[(group _vic), 0] setWaypointBehaviour  "SAFE";
					waitUntil{sleep 10;((_vic distance _destination < 20) || ((time - _startTime) > (8*60)) )};
				};
				curTrucks = curTrucks - 1; publicVariable "curTrucks";
			};
		};
		
		sleep 60;
	};
	
};