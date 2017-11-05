private ["_strASide", "_strDSide", "_str1", "_str2", "_bYouWin", "_notification"];

_strASide="Red";
_strDSide="Blue";
if (lastAttackerSide==WEST) then
{
	_strASide="Blue";
	_strDSide="Red";
};

switch (roundEnd) do
{
	case 1:
	{
		if (sidePlayer != lastAttackerSide) then
		{
			_bYouWin = true;
			_str2 = localize "STR_EnemyTeamHasBeenEliminated";
		}
		else
		{
			_bYouWin = false;
			_str2 = localize "STR_YourTeamHasBeenEliminated";
		};
	};
	
	case 2:
	{
		if (sidePlayer == lastAttackerSide) then
		{
			_bYouWin = true;
			_str2 = localize "STR_EnemyTeamHasBeenEliminated";
		}
		else
		{
			_bYouWin = false;
			_str2 = localize "STR_YourTeamHasBeenEliminated";
		};
	};

	case 3:
	{
		if (sidePlayer == lastAttackerSide) then
		{
			_bYouWin = true;
			_str2 = localize "STR_YourTeamCapturedTheZone"
		}
		else
		{
			_bYouWin = false;
			_str2 = localize "STR_EnemyTeamCapturedTheZone";
		};
	};
	
	case 4:
	{
		if (sidePlayer != lastAttackerSide) then
		{
			_bYouWin = true;
			_str2 = localize "STR_EnemyTeamRanOutOfTime";
		}
		else
		{
			_bYouWin = false;
			_str2 = localize "STR_YourTeamRanOutOfTime";
		};
	};
};

if (_bYouWin) then
{
	_str1 = localize "STR_YourTeamWon";
	_notification = "DTASNotificationSuccess";
}
else
{
	_str1 = localize "STR_YourTeamLost";
	_notification = "DTASNotificationFail";
};

[_notification, [_str1, _str2]] spawn BIS_fnc_showNotification;