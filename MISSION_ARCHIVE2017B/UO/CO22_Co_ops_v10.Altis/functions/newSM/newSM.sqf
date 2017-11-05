SMInProgress = false;

_m = createMarker ["SMMarker", [0,0,0]];
_m setMarkerShape "ICON";
_m setMarkerType "hd_destroy";
_m setMarkerColor "colorRed";
_m setMarkerText "Side Mission - Kill Officer";
_m setMarkerAlpha 0;


newSMArrayPositions = [
    [3898.33,12295.6,-0.0777054],
    [6829.24,16050.2,0.00537109],
    [8319.73,10057.5,-0.000366211],
    [8409.97,18245.3,-0.0607452],
    [12304.7,8867.68,0.00975037],
    [12443.3,15195.3,0.00401306],
    [12795,16705.1,-0.0269699],
    [12815.3,16633.5,-0.104042],
    [13808.5,18967.4,-0.0881844],
    [14227.7,21210.6,-0.622147],
    [14296,13031.5,0.000890732],
    [16590.6,19041.6,0.0501595],
    [16839.5,12044.1,0.0367432],
    [17314.2,13185.2,0.00620842],
    [17475.9,13071.8,-0.0253887],
    [17478.1,13210.2,-0.00349426],
    [20601.7,20131.5,0.134674],
    [21050.3,19296.9,0.0485153],
    [23485.1,21095.7,0.0941925]
];

newSMArray = [
    BH_fnc_officerMurderSM
];

[{
    if (!SMInProgress) then {
        _nextSM = selectRandom newSMArray;
        _nextSMPosI = floor random (count newSMArrayPositions);
        _nextSMPos = newSMArrayPositions select _nextSMPosI;
        newSMArrayPositions deleteAt _nextSMPosI;
        SMInProgress = true;
        [_nextSMPos] call _nextSM;
    };

}, 60, []] call derp_fnc_addPerFrameHandler;