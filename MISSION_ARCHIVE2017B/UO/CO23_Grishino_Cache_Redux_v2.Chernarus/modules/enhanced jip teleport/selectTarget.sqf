_group = group player;

_result = player;

if ((!(leader _group getVariable ["frameworkDead", false])) && (leader _group != player)) then { //If the player isn't the group leader, and the group leader is alive, we can teleport to the palyer.
    _result = leader _group;
}
else
{
    _highestRanked = player;
    _highestRank = 0;
    _closest = player;
    _closestDistance = 10000000;
    {
        if (!(_x getVariable ["frameworkDead", false]) && (_x != player)) then {
            if (rankID _x > _highestRank) then {
                _highestRanked = _x;
                _highestRank = rankID _x;
            };
            
            if (_x distance player < _closestDistance && (_x != player)) then {
                _closest = _x;
                _closestDistance = _x distance player;
            };
        };
    } forEach units _group;
    
    
    if (_highestRanked != player) then {
        _result = _highestRanked;
    } else {
        _result = _closest;
    };
};

_result