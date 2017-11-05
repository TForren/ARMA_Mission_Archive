//Anything done using "player" must be past this line for JIP compatibility
waitUntil {!(isNull player)};
    // create AO limit
    // comment lines out if not needed
//if (side player == west) then { ["WESTAO"] execVM "modules\ao limit\aolimit.sqf"; }; //ao limit for west
//if (side player == east) then { ["EASTAO"] execVM "modules\ao limit\aolimit.sqf"; }; //ao limit for east
//if (side player == resistance) then { ["RESISTANCEAO"] execVM "modules\ao limit\aolimit.sqf"; }; //ao limit for resistance
["AO"] execVM "modules\ao limit\aolimit.sqf"; //AO limit for everyone