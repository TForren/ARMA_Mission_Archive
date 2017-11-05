/*HZ_fnc_setupTrench
 *  Creates a small camo trench for the enemies with a possible static weapon
 * direction faces given position of expected enemy approach
 *Takes in:
 *  [[position,targetPosition]] call HZ_fnc_setupTrench;
 *Returns:
 *  N/A
*/
[_this select 0] spawn {

private _params = (_this select 0);
private _position = _params select 0;
private _targetPosition = _params select 1;

//Systemchat format ["Creating Trench at %1",_position];

_staticWeapons = ["rhs_KORD_high_MSV","CUP_O_DSHKM_TK_INS"]; //,"CUP_O_DSHKM_TK_INS" //RHS_NSV_TriPod_MSV
_staticWeaponsLow = ["RHS_NSV_TriPod_MSV"];
_loadouts = ["I_MG","I_RIF","I_AT","I_MARK"];

_trenchBase = "PRAA_statics_woodenramp4m0" createvehicle _position;
_sandbag1 = "Land_BagFenceLong" createvehicle _position;
_sandbag2= "Land_BagFenceLong" createvehicle _position;
_bush1 = "CUP_Krovi" createvehicle _position;
_bush2 = "CUP_Krovi" createvehicle _position;

_relDir = [_trenchBase, _targetPosition] call BIS_fnc_relativeDirTo;  

_trenchBase setdir (getdir _trenchBase + _relDir + 90);
{_x setpos getpos _trenchbase} foreach [_sandbag1,_sandbag2,_bush1,_bush2];

_sandbag1 setdir (getdir _trenchBase + 100);
_sandbag2 setdir (getdir _trenchBase - 100);
_sandbag1 setpos (_sandbag1 modelToWorld [-1.3,-1.1,-0.6]);
_sandbag2 setpos (_sandbag2 modelToWorld [-1.3,1.1,-0.6]);
{_x setvectorUp [0,0,1]} foreach [_sandbag1,_sandbag2];
_bush1 setdir getdir _trenchBase + 100;
_bush2 setdir getdir _trenchBase - 100;
_bush1 setpos (_bush1 modelToWorld [-0.7,-2,-0.8]);
_bush2 setpos (_bush2 modelToWorld [-0.7,2,-0.8]); 


_trenchGroup = createGroup independent;

	_spawnPos = (getpos _trenchBase);
	_weapon = "";
	
	_newDuder1 = _trenchGroup createUnit ["CUP_I_TK_GUE_Soldier", _spawnPos, [], 0, "FORM"];
	_newDuder1 setpos (getpos _trenchBase);
	_newDuder1 setDir (getDir _trenchBase);
	_newDuder1 setpos (_newDuder1 modelToWorld[0,-1,-0.2]);
	
	_newDuder2 = _trenchGroup createUnit ["CUP_I_TK_GUE_Soldier", _spawnPos, [], 0, "FORM"];
	_newDuder2 setpos (getpos _trenchBase);
	_newDuder2 setDir (getDir _trenchBase);
	_newDuder2 setpos (_trenchBase modelToWorld[0,1,-0.2]);
	
	_duders = [_newDuder1,_newDuder2];

	if (random 1 > 0.7) then {
		
		_chosenStatic = _staticWeapons call BIS_fnc_selectRandom;
		_weapon = _chosenStatic createvehicle getpos _trenchBase;
		_weapon setdir (getdir _trenchBase - 90);
		_newDuder3 = _trenchGroup createUnit ["CUP_I_TK_GUE_Soldier", _spawnPos, [], 0, "FORM"];
		[_newDuder3, "I_RIF"] call FNC_GearScript;
		_newDuder3 moveInGunner _weapon;
		_duders = _duders + [_newDuder3];
		
		[_weapon,_newDuder3,_staticWeaponsLow,_trenchBase] spawn {
			_weapon = _this select 0;
			_newDuder = _this select 1;
			_weapons = _this select 2;
			_trenchBase = _this select 3;
			sleep 10;
			if (vehicle _newDuder == _newDuder) then { //gun fell over probably due to bad incline try mini tripod weapon
				_spawnPos = _weapon modelToWorld [(random 14) - 7,(random 14) -7, 0];
				_newWeapon = _weapons call BIS_fnc_selectRandom createvehicle _spawnPos;
				_newDuder moveinGunner _newWeapon;
				_newWeapon setdir (getdir _trenchBase - 90);
				deletevehicle _weapon; //remove fallen over weapon
			};
		}; //end spawn

	};

	{
		_x doWatch _targetPosition;
		_x setUnitPos "MIDDLE";
		_x setSkill 0.4;
		_x setRank "corporal";
		_x setSkill ["spotDistance", 1];
		dostop _x;
		[_x, _loadouts call BIS_fnc_selectRandom] call FNC_GearScript;
		TrenchUnits = TrenchUnits + [_x];
		_x setSkill ["aimShake", 1];
	} foreach _duders;
	
[_duders] spawn {
	_duders = _this select 0;
	_groupLead = (leader (group (_duders select 0)) );
	while {alive _groupLead} do {
		_nearestStuff = nearestObjects [_groupLead, ["man","Car"], 160];
		{
			if (side _x == west) then {
				_groupLead setBehaviour "COMBAT";
				_groupLead reveal[_x, 4];
				{_x setUnitPos "UP"} foreach _duders;
			};
		} foreach _nearestStuff;
		sleep 10;
	};
};

}; //end spawn block