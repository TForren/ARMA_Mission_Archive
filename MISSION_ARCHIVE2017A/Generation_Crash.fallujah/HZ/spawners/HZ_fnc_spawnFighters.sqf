_tempGroup = createGroup east;
_tempGroup setGroupId ["Extra Milita Group"];
for "_i" from 0 to 4 do
{
	
	_loadouts = ["I_SL","I_FTL","I_MG","I_RPG","I_RPGA","I_RAT","I_RIF","I_MED","I_MARK"];
	_chosenLoadout = _loadouts call BIS_fnc_selectRandom;
	//_chosenFace = _faces call BIS_fnc_selectRandom;
	//_chosenDuder = _classnames call BIS_fnc_selectRandom;
	_spawnpos = [spawnPos, 1, 50, 1, 0, 20, 0] call BIS_fnc_findSafePos;
	
	_newDuder = _tempGroup createUnit ["LOP_AM_OPF_Infantry_Rifleman_4", _spawnpos, [], 0, "FORM"];
	[_newDuder,_chosenLoadout] call FNC_GearScript;
	_newDuder setpos _spawnpos;
	_newDuder call FNC_TrackUnit;
	commandModule addCuratorEditableObjects [[_newDuder],true ];
	//_newDuder setFace _chosenFace;
};
