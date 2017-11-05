asr_ai3_main_setskills = 0;

BLUFOR_obj1Flag = false;
BLUFOR_obj2Flag = false;

if (isServer) then {

	setViewDistance 1500;

	FW_TimeLimit = 120;
	FW_TimeLimitMessage = "MISSION FAILED - TIME LIMIT EXCEEDED!";

	[west, "CAF", "player"] call FNC_AddTeam;
	[east, "AFRF", "ai"] call FNC_AddTeam;

	{
		if (side _x == west) then {
			_x setskill ["aimingAccuracy",0.4];
			_x setskill ["aimingShake",0.5];
			_x setskill ["aimingSpeed",0.8];
			_x setskill ["endurance",1.0];
			_x setskill ["spotDistance",1.0];
			_x setskill ["spotTime",1.0];
			_x setskill ["courage",1.0];
			_x setskill ["reloadSpeed",1.0];
			_x setskill ["commanding",0.8];
		};
	} forEach (allUnits - playableUnits);



	[{
		["ace_addCargo", [boomBox, truck1_b, 1]] call CBA_fnc_localEvent;
	}, 1] call CBA_fnc_waitAndExecute;

	//VKing Markers
	_blu1 = [getMarkerPos "21plt",west,["infantry"],3,1,[west,east],"21"] call vk_fnc_addMarker;
	_blu2 = [getMarkerPos "22plt",west,["infantry"],3,1.25,[west,east],"22"] call vk_fnc_addMarker;
	_blu3 = [getMarkerPos "23plt",west,["infantry"],3,1,[west,east],"23"] call vk_fnc_addMarker;
	_bluC = [getMarkerPos "bcoy",west,["infantry","hq"],4,1,[west,east],"B"] call vk_fnc_addMarker;

	_red1 = [getMarkerPos "eacoy",east,["infantry"],4,1,[west,east]] call vk_fnc_addMarker;

	["mis_obj1_flag", {BLUFOR_obj1Flag = true; publicVariable "BLUFOR_obj1Flag"}] call CBA_fnc_addEventHandler;
	["mis_obj2_flag", {BLUFOR_obj2Flag = true; publicVariable "BLUFOR_obj2Flag"}] call CBA_fnc_addEventHandler;

	//Boom
	[] spawn {
		{
			rbatt1 removeMagazine _x;
		} forEach magazines rbatt1;
		sleep (180 + (random (180)));

		while {alive rbatt1} do {
			_roundType = "";

			if ((random (1)) < 0.5) then
			{
				_roundType = "rhs_mag_3vo18_10";
			}
			else
			{
				if (daytime > 20.00 || daytime < 4.00) then
				{
					_roundType = "rhs_mag_3vs25m_10";
				}
				else
				{
					_roundType = "rhs_mag_3vo18_10";
				};
			};
			rbatt1 addMagazine _roundType;
			_pos = [[[position target1,100]],[]] call BIS_fnc_randomPos;
			rbatt1 doArtilleryFire [_pos,_roundType,1];
			sleep (6 + (random (4)));
			_pos = [[[position target1,100]],[]] call BIS_fnc_randomPos;
			rbatt1 doArtilleryFire [_pos,_roundType,1];
			sleep (6 + (random (4)));
			_pos = [[[position target1,100]],[]] call BIS_fnc_randomPos;
			rbatt1 doArtilleryFire [_pos,_roundType,1];
			sleep (6 + (random (4)));

			rbatt1 removeMagazines _roundType;
			sleep (180 + (random (180)));
			false
		};
	};

	//Boom, Boom
	[] spawn {
		{
			rbatt2 removeMagazine _x;
		} forEach magazines rbatt2;
		sleep (180 + (random (180)));

		while {alive rbatt2} do {
			_roundType = "";

			if ((random (1)) < 0.5) then
			{
				_roundType = "rhs_mag_3vo18_10";
			}
			else
			{
				if (daytime > 20.00 || daytime < 4.00) then
				{
					_roundType = "rhs_mag_3vs25m_10";
				}
				else
				{
					_roundType = "rhs_mag_3vo18_10";
				};
			};
			rbatt2 addMagazine _roundType;
			_pos = [[[position target1,100]],[]] call BIS_fnc_randomPos;
			rbatt2 doArtilleryFire [_pos,_roundType,1];
			sleep (6 + (random (4)));
			_pos = [[[position target1,100]],[]] call BIS_fnc_randomPos;
			rbatt2 doArtilleryFire [_pos,_roundType,1];
			sleep (6 + (random (4)));
			_pos = [[[position target1,100]],[]] call BIS_fnc_randomPos;
			rbatt2 doArtilleryFire [_pos,_roundType,1];
			sleep (6 + (random (4)));
			
			rbatt2 removeMagazines _roundType;
			sleep (180 + (random (180)));
			false
		};
	};
	
	//Legacy stuff because why the fuck not?
	[] execVM "customization\ai\setupAI.sqf";
};

if (!isDedicated) then {

	FW_DebugMessagesEnabled = true;
	
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon";

	setViewDistance 1500;

	[] execVM "customization\custom_actions.sqf";

};