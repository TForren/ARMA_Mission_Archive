private ["_missionText", "_ui", "_timeText", "_isCapturing"];

_timeText = _this select 0;

_isCapturing = [player] call fnc_isCapturing;

disableSerialization;

_ui = uiNamespace getVariable "DTASHUD";

(_ui displayCtrl 1001) ctrlSetText _timeText;
if (isSpectating) then
{
	_missionText = name spectateUnit;
}
else
{
	_missionText = localize "STR_Attacking";
	if (_isCapturing) then
	{
		_missionText = localize "STR_Capturing";
	};
	if (sidePlayer != attackerSide) then
	{
		_missionText = localize "STR_Defending";
		if (_isCapturing) then
		{
			_missionText = localize "STR_Holding";
		};
	};
	if (!roundInProgress) then
	{
		_missionText = localize "STR_Planning";
	};
	if (roundInProgress && (!isPlaying)) then
	{
		_missionText = localize "STR_Waiting";
	};
};
(_ui displayCtrl 1002) ctrlSetText _missionText;

(_ui displayCtrl 1101) ctrlSetText str scoreW;
(_ui displayCtrl 1102) ctrlSetText str scoreE;