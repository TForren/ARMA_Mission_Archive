/* HZ_fnc_wreckRoads
 * populates roads with vehicle wrecks with debris (including some ace repair items)
 * ARGUMENTS: [Trigger,num of wrecks, num of debris, include military wrecks, include fire sources]
 * RETURNS: Nothing
 * 
 * [[wreckArea,50,30,true,true]] call HZ_fnc_wreckRoads;
*/

if (!isServer) exitWith {}; //Fuck off, clients.

[(_this select 0)] spawn {
_params = (_this select 0);
_civWrecks = ['Land_Wreck_Skodovka_F', 'Land_Wreck_Truck_F', 'Land_Wreck_Car2_F', 'Land_Wreck_Car_F', 'Land_Wreck_Car3_F', 'Land_Wreck_Offroad_F', 'Land_Wreck_Offroad2_F', 'Land_Wreck_UAZ_F', 'Land_Wreck_Ural_F', 'Land_Wreck_Truck_dropside_F', 'Land_Wreck_Van_F', 'RDS_Lada_Wreck', 'hiluxWreck', 'datsun01Wreck', 'datsun02Wreck', 'SKODAWreck', 'UAZWreck', 'UralWreck'];
_milWrecks = ['Land_Wreck_HMMWV_F', 'Land_Wreck_Hunter_F', 'Land_Wreck_T72_hull_F', 'BMP2Wreck', 'BRDMWreck', 'JeepWreck1', 'JeepWreck2', 'JeepWreck3', 'T72Wreck'];
_debris = ['Land_Garbage_square3_F', 'Land_Garbage_square5_F', 'Land_Garbage_line_F', 'ACE_Track', 'ACE_Wheel', 'Fire'];
_burningFire = ['FireLit','Land_Fire_barrel_burning'];

_areaCenter = (getpos (_params select 0));
_areaX = (triggerArea (_params select 0)) select 0;  
_areaY = (triggerArea (_params select 0)) select 1;
_wreckCount = _params select 1;
_debrisCount = _params select 2;
_includeMilWrecks = _params select 3;
_includeFire = _params select 4;

_roads = (_areaCenter nearRoads (selectMax [_areaX,_areaY]));

_localwrecks = [];

_availableWrecks = _civWrecks;
if (_includeMilWrecks) then {
	_availableWrecks = _availableWrecks + _milWrecks;
};

for [{_i=0}, {_i<_wreckCount}, {_i=_i+1}] do
{
	_chosenWreck = _availableWrecks call BIS_fnc_SelectRandom;
	_bufferDist = sizeOf _chosenWreck;
	_chosenRoad = _roads call BIS_fnc_selectRandom;
	_wreckDir = getDir _chosenRoad; 
	//random wreck facing on road
	_addVal = 0;
	if (random 1 > 0.5) then {
		_addVal = 170 + (random 25);
	} else {
		_addVal = (random 25);
	};
	_wreckDir = _wreckDir + _addVal;
	_spawnPos = [getpos _chosenRoad, 0.6, 8, 1, 0, 0.25, 0] call BIS_fnc_findSafePos;
	_attempts = 0;
	_failed = false;
	while {!(isOnRoad _spawnPos) && !_failed} do {
		_spawnPos = [getpos _chosenRoad, 0, 9, 1, 0, 0.25, 0] call BIS_fnc_findSafePos;
		_attempts = _attempts + 1;
		systemChat format ["Attempt %1",_attempts];
		if (_attempts > 30) then {
			_failed = true;
		};
	};//end while
	
	if !(_failed) then {
		systemChat format ["Found Pos %1",_spawnPos];
		systemChat format ["Spawning a %1",_chosenWreck];
		_wreckObj = _chosenWreck createVehicle _spawnPos;
		_wreckObj setDir _wreckDir;
		_localwrecks = _localwrecks + [_wreckObj];
	};
};//for from 0 to wreckCount


//Spawning debris around spawned wrecks
for [{_i=0}, {_i<_debrisCount}, {_i=_i+1}] do
{
	_chosenWreck = _localwrecks call BIS_fnc_selectRandom;
	_chosenDebris = _debris call BIS_fnc_selectRandom;
	if ((random 1 > 0.9) && _includeFire) then {
		_chosenDebris = _burningFire call BIS_fnc_selectRandom;
	};
	_spawnedDebris = _chosenDebris createvehicle (_chosenWreck modelToWorld [random 3,random 3,0]);
};

wrecks = wrecks + _localwrecks;

}; //end spawn

