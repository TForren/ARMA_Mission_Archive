/*HZ_fnc_entrenchArea
 * cover an area in enemy camo trenches using HZ_fnc_setupTrench
 * direction faces given position of expected enemy approach
 *Takes in:
 *  [[trigger,trenchGroupCount,outpostCount,patrolCount,targetPosition]] call HZ_fnc_entrenchArea;
 *Returns:
 *  N/A
*/
if (!isServer) exitWith {};

private _params = _this select 0;
private _trig = _params select 0;
private _trenchGroupCount = _params select 1;
private _outpostCount = _params select 2;
private _patrolCount = _params select 3;
private _targetPosition = _params select 4;

trenchLocs = [];
TrenchUnits = [];

for [{_i=0}, {_i<_trenchGroupCount}, {_i=_i+1}] do
{
	_goodSpot = false;
	_randomLoc = [0,0,0];
	_chosenPos = [0,0,0];
	
	while {!_goodSpot} do {
		_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
		_chosenPos = [_randomLoc, 0, 100, 1, 0, 0.3, 0] call BIS_fnc_findSafePos;
		if (artilleryArea distance _chosenPos < 600) then {
			_goodSpot = true;
		};
	};
	
	[_chosenPos,3, _targetPosition] call HZ_fnc_setupTrenchGroup;

	trenchLocs = trenchLocs + [_chosenPos];
	
};

_outpostVehicles = ["LOP_AM_OPF_UAZ_DshKM","LOP_AM_OPF_UAZ","LOP_AM_OPF_Landrover"];
_loadouts = ["O_MG","O_RIF","O_RAT","O_AT","O_AAT","O_MARK"];


for [{_i=0}, {_i<_outpostCount}, {_i=_i+1}] do
{
	_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
	_chosenPos = [_randomLoc, 0, 70, 1, 0, 0.3, 0] call BIS_fnc_findSafePos;

	_outpost = "ShedSmall" createvehicle _chosenPos;
	_outpost setDir (random 360);
	
	_chosenVeh = _outpostVehicles call BIS_fnc_selectRandom;
	_chosenVehPos = [_randomLoc, 2, 10, 1, 0, 0.3, 0] call BIS_fnc_findSafePos;
	_veh = _chosenVeh createVehicle _chosenVehPos;
	
	trenchLocs = trenchLocs + [_chosenPos];
	
	_outpostGroup = createGroup east;

	_newDuder1 = _outpostGroup createUnit ["O_Soldier_F", _chosenPos, [], 0, "FORM"];
	_newDuder1 setpos (_newDuder1 modelToWorld [(random 10),(random 5),-1.5]);	
	_newDuder2 = _outpostGroup createUnit ["O_Soldier_F", _chosenPos, [], 0, "FORM"];
	_newDuder2 setpos (_newDuder2 modelToWorld [(random 10),(random 5),-1.5]);
	{
		doStop _x;
		[_x, _loadouts call BIS_fnc_selectRandom] call FNC_GearScript;
	} foreach [_newDuder1,_newDuder2];
};


for [{_i=0}, {_i<_patrolCount}, {_i=_i+1}] do
{
	[[trenchLocs]] call HZ_fnc_setupPatrol;
	
};

[] spawn {
	sleep 1.5;
	_opforAlerted = false;	
	
	_qrfGroups = [[qrfTrig1,east]] call HZ_fnc_setupQRF;

	_opforUnits = [];
	
	{
		if (side _x == east) then {
			_opforUnits = _opforUnits + [_x];
		};
	} foreach allUnits;

	while {!_opforAlerted} do {
		{
			if (behaviour _x == "COMBAT") then {
				_opforAlerted = true;
			};
		} foreach _opforUnits;
		sleep 5;
	};
	
	_initPos = [[west,false]] call HZ_fnc_avgSideLoc;
	[[_initPos,_qrfGroups,400]] call HZ_fnc_activateQRF;
};


