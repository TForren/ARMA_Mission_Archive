private ["_group", "_i", "_units", "_unitsCount", "_varName", "_deleteTime", "_locked"];
{
	_group = _x;
	if (!(isNull _group)) then
	{
		if ((count (units _group)) == 0) then
		{
			_deleteTime = _group getVariable "deleteTime";
			if (isNil "_deleteTime") then
			{
				_deleteTime = time + 10;
				_group setVariable ["deleteTime", _deleteTime];
			};
			if (_deleteTime > time) then
			{
				deleteGroup _group;
			};
		}
		else
		{
			// If group doesn't have a leader, pick a new one.
			if ([_group] call fnc_needsLeader) then
			{
				_i = 0;
				_units = units _group;
				_unitsCount = count units _group;
				_varName = "";
				while {(_varName == "") && (_i < _unitsCount)} do
				{
					_varName = vehicleVarName (_units select _i);
					_i = _i + 1;
				};
				if (_varName != "") then
				{
					_group setVariable ["groupLeader", _varName, true];
				};
			};
			
			// If group unlock variable is undefined, set it to unlocked.
			_locked = _group getVariable "isGroupUnlocked";
			if (isNil "_locked") then
			{
				_group setVariable ["isGroupUnlocked", true, true];
			};
			
			// If group doesn't have a TFR channel, assign it one.
			if (isTFR) then
			{
				if ((count units _group) < ([] call fnc_minGroupSize)) then
				{
					if ((_group getVariable ["TFRChannel", -1]) != 1) then
					{
						_group setVariable ["TFRChannel", 1, true];
						_group setVariable ["TFRManualChannel", false, true];
					};
				}
				else
				{
					if
					(
						(_group getVariable ["TFRChannel", -1] == -1)
						||
						(
							(_group getVariable ["TFRChannel", -1] == 1)
							&&
							(!(_group getVariable ["TFRManualChannel", false]))
						)
					) then
					{
						_usedChannels = [true, false, false, false, false, false, false, true];
						{
							_testedGroup = _x;
							if (side _testedGroup == side _group) then
							{
								_usedChannels set [(_testedGroup getVariable ["TFRChannel", 1]) - 1, true];
							};
						} forEach allGroups;
						_newChannel = 1;
						_i = 1;
						while {(_i < 7) && (_newChannel == 1)} do
						{
							if (!(_usedChannels select _i)) then
							{
								_newChannel = _i + 1;
							};
							_i = _i + 1;
						};
						_group setVariable ["TFRChannel", _newChannel, true];
						_group setVariable ["TFRManualChannel", false, true];
					};
				};
			};
		};
	};
} forEach allGroups;