//////////////////////////////////////////////////////////
// addBirdDamageEH.sqf 
// Created by: johnnyboy
//
// Give object a boost when sticks in shallow water
//
// nul = [bird] execVM "JBOY_Dog\addBirdDamageEH.sqf";
//////////////////////////////////////////////////////////
if (!isServer)  exitwith {};
params["_bird"];
if (_bird isKindOf "Fowl_Base_F") then                       
{
        _bird removeAllEventHandlers "HandleDamage";
        _bird addEventHandler ["HandleDamage", 
        { 
            private ["_return"];
            _bird = _this select 0; 
            _selection = _this select 1; 
            _passedDamage = _this select 2; 
            _source	= _this select 3; 
            _projectile = _this select 4; 
            //diag_log["damage",_bird,_selection,_passedDamage,_source,_projectile];
            // Remote exect to run all clients
            [[_bird],"JBOY\featherEffect.sqf"] remoteExec ["execVM",2];
            if (!alive _bird) then {
                detach _bird;
            };
            _return = _passedDamage;
           _return
        }];
};