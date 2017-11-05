// F3 - F3 Folk ARPS Assign Gear
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// lets strip him down to the basic
removeUniform _unit;
removeheadgear _unit;
removevest _unit;

// Assign default clothes
_uniform = _baseUniform;
_helmet = _baseHelmet;
_rig = _rigBasic;
_glasses = _baseGlasses;

// Flip through unit to assign specialized uniforms


// Riflemen
if (_typeOfUnit in _riflemen) then {
	_rig = _rigRifleman;
};

// Squad/Platoon/CO Leaders
if (_typeOfUnit in _squadLeaders) then {
	_helmet = _lightHeadwear;
	_rig = _rigSquadLeader;
};

// Team Leaders
if (_typeOfUnit in _teamLeaders) then {
	_rig = _rigTeamLeader;
};

// Grenadiers
if (_typeOfUnit in _grenadiers) then {
	_rig = _rigGrenadier;
};

// Engineers
if (_typeOfUnit in _engineers) then {
	_rig = _rigEngineer;
};

// Auto Riflemen
if (_typeOfUnit in _autoRiflemen) then {
	_rig = _rigAutoRifleman;
};

// Medics
if (_typeOfUnit in _medics) then {
	_rig = _rigMedic;
};

// Weapon Crew
if (_typeOfUnit in _weaponCrew) then {
	_rig = _rigBasic;
};

// Diver
if (_typeOfUnit in _diver) then {
	_helmet = _diverHelmet;
	_uniform = _diverUniform;
	_rig = _diverRig;
	_glasses = _diverGlasses;
};

// Pilot
if (_typeOfUnit in _pilot) then {
	_helmet = _pilotHelmet;
	_uniform = _pilotUniform;
	_rig = _pilotRig;
	_glasses = _pilotGlasses
};

// Crew
if (_typeOfUnit in _crew) then {
	_helmet = _crewHelmet;
	_uniform = _crewUniform;
	_rig = _crewRig;
	_glasses = _crewGlasses;
};


// Ghillie
if (_typeOfUnit in _ghillie) then {
	_helmet = _ghillieHelmet;
	_uniform = _ghillieUniform;
	_rig = _ghillieRig;
	_glasses = _ghillieGlasses;
};

// Spec Op
if (_typeOfUnit in _specOp) then {
	_helmet = _sfHelmet;
	_uniform = _sfUniform;
	_rig = _sfRig;
	_glasses = _sfGlasses;
};


// Add uniforms to unit
if(count _uniform > 0) then
{
	_unit forceadduniform (_uniform call BIS_fnc_selectRandom);
};
if(count _Helmet > 0) then
{
	_unit addheadgear (_helmet call BIS_fnc_selectRandom);
};

if(count _rig > 0) then
{
	_unit addvest (_rig call BIS_fnc_selectRandom);
};

if(count _glasses > 0) then
{
	_unit addGoggles (_glasses call BIS_fnc_selectRandom);
};
