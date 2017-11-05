while {true} do {
    sleep 15;
if ((({side _x == East && (_x distance objective) < 100} count allUnits) + ({side _x == East && (_x distance specpen) < 300} count allUnits)) == (({side _x == East && (_x distance objective) > 0} count allUnits))) then {obj = true};

if (obj) then {[-2, {execVM "scripts\end1.sqf";}] call CBA_fnc_globalExecute;};
};