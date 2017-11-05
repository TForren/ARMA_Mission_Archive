/*HZ_fnc_populateHouse
 *  This script will fill a house with contact.
 *  [building,enemy count] 
 *Returns:
 *  N/A
*/

[_this select 0] spawn {
private _params = (_this select 0);
private _house = _params select 0;
private _enemyCount = _params select 1;


//Squad Leader first, everyone else index >0
//_garrionUnitArray = ["B_G_Soldier_SL_F", "B_G_Soldier_F","B_G_Soldier_LAT_F","B_G_Soldier_M_F","B_G_Soldier_TL_F","B_G_Soldier_AR_F","B_G_Soldier_A_F","B_G_medic_F"];
_garrionUnitArray = ['rhs_g_Soldier_TL_F','rhs_g_Soldier_exp_F', 'rhs_g_Crew_F', 'rhs_g_engineer_F', 'rhs_g_Soldier_LAT_F', 'rhs_g_Soldier_AAT_F', 'rhs_g_Soldier_AR_F', 'rhs_g_Soldier_AAR_F', 'rhs_g_Soldier_M_F', 'rhs_g_medic_F', 'rhs_g_Soldier_F2', 'rhs_g_Soldier_F3', 'rhs_g_Soldier_F', 'rhs_g_Soldier_GL_F', 'rhs_g_Soldier_lite_F', 'rhs_g_Soldier_AT_F', 'rhs_g_Soldier_AT_F'];


_buildingPoses = [[_house]] call HZ_fnc_getBuildingPositions;

if (count _buildingPoses == 0) exitWith {hint format ["Invalid building %1", str(_house)]};


_firstRound = true; //force squad leader to spawn first
_garrisonGroup = createGroup west;
_usedPos = [];
for [{_i=0}, {_i<_enemyCount}, {_i=_i+1}] do
{
	_chosenUnit = "";
	if !(_firstRound) then {
		_chosenUnit = _garrionUnitArray call BIS_fnc_SelectRandom;
	} else {
		_chosenUnit = _garrionUnitArray select 0;
	};

	_garrisonPos = _buildingPoses call BIS_fnc_selectRandom;
	while {_garrisonPos in _usedPos} do {
		_garrisonPos = _buildingPoses call BIS_fnc_selectRandom;
	};
	_usedPos = _usedPos + [_garrisonPos];
	
	_newDuder = _garrisonGroup createUnit [_chosenUnit, _garrisonPos, [], 0, "FORM"];
	_newDUder setpos _garrisonPos;
	_newDuder setSkill 0.4;
	_newDuder setRank "Private";
	_newDuder setSkill ["spotDistance", 0.9];
	_newDuder setSkill ["spotTime", 0.9];
	doStop _newDuder;
	_newDuder setdir (_house getRelDir _newDuder) + (getdir _house);
	if (random 1 > 0.5) then {
		_newDuder setunitpos "MIDDLE";
	}
	else {
		_newDuder setUnitPos "UP";
	};
};

};