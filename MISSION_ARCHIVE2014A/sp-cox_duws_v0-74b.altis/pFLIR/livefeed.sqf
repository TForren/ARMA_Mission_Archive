// pFLIRenable = player addaction ["<t color='#a9ff59'>Activate FLIR</t>","pflir\livefeed.sqf","", 0,false,true,"","_target == _this"];

trucPIPtarget = "Land_Sack_F" createVehicle ([0,0,0]);        // PAS OUBLIER DE SUPPRIMER LE TRUC
trucPIPtarget attachTo [player,[0,2000,1]];
trucPIPtarget hideobject true;

_lol = [player, trucPIPtarget, player,2] call BIS_fnc_liveFeed;
BIS_liveFeed attachTo [player,[0,1,1]];
BIS_liveFeed camPrepareFOV 0.2;
BIS_liveFeed camCommitPrepared 0;
player removeAction pFlirEnable;

sleep 1;
pFLIRdisable = player addaction ["<t color='#a9ff59'>Deactivate FLIR</t>","pflir\livefeedexit.sqf","", 0,false,true,"","_target == _this"];

