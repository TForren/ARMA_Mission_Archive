// F3 - ORBAT Notes
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================
 
// Define needed variables
private ["_orbatText", "_groups", "_precompileGroups"];
_orbatText = "<br />NOTE: The ORBAT below is only accurate at mission start.<br />
Leadership elements will change based on casualties or as the need arises.<br />
<br />";
_groups = [];
_hiddenGroups = [];
 
{
    // Add to ORBAT if side matches, group isn'span class="re5"> t already listed, and group has players
    if ((side _x == side group player) && !(_x in _groups) && ({_x in playableUnits} count units _x) > 0) then {
    //if ((side _x == side group player) && !(_x in _groups)) then {
        _groups = _groups + [_x];
    };
} forEach allGroups;
 
// Remove groups we don't want to show
_groups = _groups - _hiddenGroups;
 
// Loop through the group, print out group ID, leader name and medics if present
{
    //Add spacing
    _orbatText = _orbatText + "<br />";
   
    // Highlight the player's group with a different color (based on the player's side)
    _color = "#FFFFFF";
    if (_x == group player) then {
        _color = switch (side player) do {
             case west: {"#0080FF"};
             case east: {"#B40404"};
             case independent: {"#298A08"};
             default {"#8904B1"};
        };
    };
 
    _groupleader = leader _x;
 
    _leaderRole = roleDescription _groupleader;
 
    _orbatText = _orbatText + format ["<font color='%3'>%1 - %2</font>", _leaderRole, name leader _x,_color] + "<br />";
 
   
    //Hardcoded FTL/medic detection for east/west. Adjust unit class names if required by your loadouts.
    {
        if (typeOf _x == "B_medic_F" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|-- %1 [M]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "B_Soldier_TL_F" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|---> %1 [FTL]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "O_medic_F" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|-- %1 [M]",name _x] + "<br />";
        };
    } forEach units _x;
   
    {
        if (typeOf _x == "O_Soldier_SL_F" && {_x != leader group _x}) then {
            _orbatText = _orbatText + format["|---> %1 [FTL]",name _x] + "<br />";
        };
    } forEach units _x;
   
   
} forEach _groups;
 
 
//Vehicle detection below here. Unsure if working.
_veharray = [];
{
 
    if ({vehicle _x != _x} count units _x > 0 ) then {
        {
            if (vehicle _x != _x && {!(vehicle _x in _veharray)}) then {
            _veharray set [count _veharray,vehicle _x];
            };
        } forEach units _x;
    };
 
} forEach _groups;
 
if (count _veharray > 0) then {
 
_orbatText = _orbatText + "<br />VEHICLE CREWS + PASSENGERS<br />";
 
    {
        _orbatText = _orbatText + "<br />" + format["%1 ",getText (configFile >> "CfgVehicles" >> (typeOf _x) >> "displayname")];
 
        if (getNumber(configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier") > 0) then {
            _orbatText = _orbatText + format ["[%1/%2]",getNumber(configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier") - (_x emptyPositions "CARGO"),getNumber(configfile >> "CfgVehicles" >> typeof _x >> "transportSoldier")];
        };
 
        _orbatText =_orbatText + "<br />";
        {
            if ((assignedVehicleRole _x select 0) != "CARGO") then {
                _orbatText = _orbatText + format["|- %1",name _x];
                if (driver vehicle _x == _x) exitWith {_orbatText =_orbatText +" [D] <br />"};
                if (gunner vehicle _x == _x) exitWith {_orbatText =_orbatText +" [G] <br />"};
                if (commander vehicle _x == _x) exitWith {_orbatText =_orbatText +" [C] <br />"};
                _orbatText =_orbatText +" [G] <br />"
            };
        } forEach crew _x;
 
        _groupList = [];
 
 
        {
            if (!(group _x in _groupList) && {(assignedVehicleRole _x select 0) == "CARGO"} count (units group _x) > 0) then {
                _groupList set [count _groupList,group _x];
            };
        } forEach crew _x;
 
        if (count _groupList > 0) then {
            {
                _orbatText =_orbatText + format["|- %1", _x] + " Passengers <br />";
            } forEach _groupList;
        };
 
    } forEach _veharray;
 
};
 
// Insert final result into subsection ORBAT of section Notes
player createDiaryRecord ["diary", ["--ORBAT--", _orbatText]];