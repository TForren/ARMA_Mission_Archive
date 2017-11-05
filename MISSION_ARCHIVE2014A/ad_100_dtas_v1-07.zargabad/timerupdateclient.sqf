private ["_lastTime", "_actualDisplayedTime", "_seconds", "_minutes", "_displayString"];

timeLeftPVHandler =
{
	endTime = time + (_this select 0);
	timerUpdated = true;
};
"timeLeft" addPublicVariableEventHandler
{
	[_this select 1] call timeLeftPVHandler;
};

waitUntil {!isNil "timeLeft"};
waitUntil {!isNil "fakeExtraDefenderTime"};

endTime = time + timeLeft;

while {true} do
{
	timerUpdated = false;
	
	_lastTime = floor (endTime - time);
	_actualDisplayedTime = _lastTime;
	if (sidePlayer != attackerSide) then
	{
		_actualDisplayedTime = _lastTime + fakeExtraDefenderTime;
	};
	_seconds = floor (_actualDisplayedTime mod 60);
	_minutes = floor (_actualDisplayedTime / 60);
	if (_actualDisplayedTime < 0) then
	{
		_seconds = 0;
		_minutes = 0;
	};
	_displayString = format ["%1:%2%3", _minutes, floor (_seconds / 10), floor (_seconds mod 10)];
	[_displayString] call fnc_HUDUpdate;
	waitUntil {timerUpdated || ((endTime - time) < _lastTime)};
};