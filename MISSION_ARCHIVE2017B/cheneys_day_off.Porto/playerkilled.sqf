_shooter = (_this select 0);

_shooterName = format ["%1",_shooter];

_curKills = missionNamespace getVariable _shooterName;

missionNamespace setVariable [_shooterName, _curKills+1];