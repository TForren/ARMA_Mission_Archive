#include "..\..\defines.hpp"
/*
* Author: BlackHawk
* Kill an officer.
*
* Arguments:
* 0: Position of the AO marker <ARRAY>
*
* Return Value:
* Nothing
*
* Conditions:
* Win: Kill the officer.
* Fail: none.
*/
params ["_SMPos", "_missionID"];

_spawnedUnits = [];
_SMsize = 100;

//officer + bodyguards
private _randomPos = ([_SMPos,  _SMsize, "(1 - sea)"] call derp_fnc_randomPos) param [0];
private _officerGroup = [_randomPos, EAST, (configfile InfantryGroupsCFGPATH (selectRandom InfantryGroupList))] call BIS_fnc_spawnGroup;
private _officer = _officerGroup createUnit [(selectRandom OFFICERSMTarget), _randomPos, [], 0, "NONE"];
[_SMPos, nil, units _officerGroup, -1, 1, false] call derp_fnc_AIOccupyBuilding;
_officerGroup selectLeader _officer;

{
    _spawnedUnits pushBack _x;
} foreach (units _officerGroup);

//units inside buildings
for "_x" from 1 to 2 do {

    private _group = [_SMPos, east, (configfile UrbanGroupsCFGPATH (selectRandom UrbanGroupsList))] call BIS_fnc_spawnGroup;
    private _returnedUnits = [_SMPos, nil, (units _group), _SMsize, 2, false] call derp_fnc_AIOccupyBuilding;

    { deleteVehicle _x } foreach _returnedUnits;

    {
        _spawnedUnits pushBack _x;
    } foreach (units _group);
};

//AA
private _randomPos = ([_SMPos, _SMsize, "(1 - sea)"] call derp_fnc_randomPos) param [0];
private _infantryGroup = [_randomPos, EAST, (configfile InfantryGroupsCFGPATH (selectRandom AAGroupsList))] call BIS_fnc_spawnGroup;

[_infantryGroup, _SMPos, _SMsize] call BIS_fnc_taskPatrol;

{
    _spawnedUnits pushBack _x;
} foreach (units _infantryGroup);


//Main infantry
for "_x" from 1 to 2 do {
    private _randomPos = ([_SMPos, _SMsize, "(1 - sea)"] call derp_fnc_randomPos) param [0];
    private _infantryGroup = [_randomPos, EAST, (configfile InfantryGroupsCFGPATH (selectRandom InfantryGroupList))] call BIS_fnc_spawnGroup;

    [_infantryGroup, _SmPos, _SMsize] call BIS_fnc_taskPatrol;

    {
        _spawnedUnits pushBack _x;
    } foreach (units _infantryGroup);
};


////////////
//set skill
[_spawnedUnits] call derp_fnc_AISkill;




"SMMarker" setMarkerPos _SMPos;
"SMMarker" setMarkerAlpha 1;

{
    _x addCuratorEditableObjects [_spawnedUnits, false];
} forEach allCurators;

//------------------- PFH
[{
    params ["_args", "_pfhID"];
    _args params ["_SMPos", "_officer", "_spawnedUnits", "_smID"];

    if (!alive _officer) then {
        SMInProgress = false;
        "SMMarker" setMarkerAlpha 0;
        [{
            params ["_spawnedUnits", "_smID"];

            {
                if !(isNull _x) then {
                    deleteVehicle _x;
                };
            } foreach _spawnedUnits;

            [_smID, true] call BIS_fnc_deleteTask;

        }, [_spawnedUnits, _smID], 600] call derp_fnc_waitAndExecute;

        derp_successfulSMs = derp_successfulSMs + 1;
        call derp_fnc_smRewards;
        _pfhID call derp_fnc_removePerFrameHandler;

    };
}, 10, [_SMPos, _officer, _spawnedUnits, _smID]] call derp_fnc_addPerFrameHandler;
