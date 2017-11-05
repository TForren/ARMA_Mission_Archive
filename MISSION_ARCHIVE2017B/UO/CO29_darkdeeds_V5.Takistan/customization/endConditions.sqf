_westCasualty = "US" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "Insurgent"
_eastCasualty = "iraqi" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "MSV"

if (_westCasualty >= 80) exitWith {
    
    "Mission Failure<br />US forces combat ineffective." call FNC_EndMission;
    
};

_eastCount = [east,150,obj] call FNC_AreaCount;
if(_eastCount <= 3 && (!(alive HVT))) then {
    if(extraction == 0) then {  
    hint"Radio message: Objective complete Extraction is on route";
    ["RHS_CH_47F_light", "spawn", 10, "land","({(vehicle _x) isKindOf ""Helicopter""} count playableUnits) == ({side _x == west}count playableUnits)", "extract"] call FNC_Extract;    
    sleep (15);
    ["RHS_CH_47F_light", "spawn", 10, "land1","({(vehicle _x) isKindOf ""Helicopter""} count playableUnits) == ({side _x == west}count playableUnits)", "extract1"] call FNC_Extract;
    extraction = 1;
    };
    _westCount = [west,300,obj2] call FNC_AreaCount;
        if(_westcount > 2) exitWith{
            "US Major victory<br />HVT eliminated, Plt safely extracted" call FNC_EndMission;
        };

};

if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
    
    "TIME LIMIT REACHED!" call FNC_EndMission;
    
};

sleep (30); //This determines how frequently the end conditions should be checked in seconds