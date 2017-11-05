_trenchGroup = (group _this);

_trenchGroup spawn {

	{
		_x setVariable ["ASR_AI_Exclude", true];
		_x setSkill ["courage", 0.1];
		dostop _x;
		_x disableAI "MOVE";
		_x addEventHandler ["killed", "{_x enableAI 'MOVE'} foreach (units (group (_this select 0)))"];
	} foreach units _this;
	
	while {true} do
	{
		{
			_x setVariable ["aiStand", true, false];

			if (morale _x < 0.3) then
			{
				_x setVariable ["aiStand", false, false];
			};

			if (_x getVariable "aiStand") then
			{
				_x setUnitPos "Up";
			}
			else
			{
				_x setUnitPos "Middle";
			};

			sleep 0.1;
		} forEach units _this;

		sleep 5;
	};
};
