FNC_tp_to_mhq = {
    if (!isNull MHQ && {alive MHQ}) then {
        if ((MHQ emptyPositions "cargo") == 0) then {
            if ((speed MHQ) < 5) then {
                player setpos ([MHQ, 4, getDir MHQ - 45] call BIS_fnc_relPos);
            }
            else {
                hint "can't teleport to MHQ, it's occupied and driving";
            }
        }
        else {
            player moveInCargo MHQ;
        };
    }
    else {
        hint "MHQ is destroyed! Wait for it to respawn";
    };
};

FNC_tp_to_mhq2 = {
    if (!isNull MHQ2 && {alive MHQ2}) then {
        if ((MHQ2 emptyPositions "cargo") == 0) then {
            if ((speed MHQ2) < 5) then {
                player setpos ([MHQ2, 6, getDir MHQ2 - 180] call BIS_fnc_relPos);
            }
            else {
                hint "can't teleport to MHQ, it's occupied and driving";
            }
        }
        else {
            player moveInCargo MHQ2;
        };
    }
    else {
        hint "MHQ is destroyed! Wait for it to respawn";
    };
};


if (isServer) then {

    private _marker = createMarker ["MHQ_marker", [getpos MHQ select 0, getpos MHQ select 1]];
    _marker setMarkerShape "ICON";
    _marker setMarkerType "b_hq";
    _marker setMarkerText "MHQ 1";
    _marker setMarkerSize [0.5, 0.5];
    _marker setMarkerColor "ColorWEST";
    
    
    private _marker2 = createMarker ["MHQ_marker2", [getpos MHQ2 select 0, getpos MHQ2 select 1]];
    _marker2 setMarkerShape "ICON";
    _marker2 setMarkerType "b_hq";
    _marker2 setMarkerText "MHQ 2";
    _marker2 setMarkerSize [0.5, 0.5];
    _marker2 setMarkerColor "ColorWEST";

    [{
        _marker = _this select 0 select 0;
        _marker2 = _this select 0 select 1;
        if (!isNull MHQ) then {
            if (alive MHQ) then {
                private _pos = getPosWorld MHQ;
                _marker setMarkerPos [_pos select 0, _pos select 1];
                _marker setMarkerColor "ColorWEST";
            }
            else {
                _marker setMarkerColor "ColorGrey";
            };
        };
        if (!isNull MHQ2) then {
            if (alive MHQ2) then {
                private _pos = getPosWorld MHQ2;
                _marker2 setMarkerPos [_pos select 0, _pos select 1];
                _marker2 setMarkerColor "ColorWEST";
            }
            else {
                _marker2 setMarkerColor "ColorGrey";
            };
        };
    }, 5, [_marker, _marker2]] call derp_fnc_addPerFrameHandler;
};