if (isServer) then {
    waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};
    [ALIVE_factionDefaultAirTransport, "SUD_NATO", ["SUD_UH60"]] call ALIVE_fnc_hashSet;
    [ALIVE_factionDefaultAirTransport, "SUD_USSR", ["SUD_MI8"]] call ALIVE_fnc_hashSet;
};