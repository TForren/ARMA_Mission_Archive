
_teamColor = ["colorCheck_class", "Check Team Color", "", {
	private ["_str"];

	_str = "";
	switch (assignedTeam player) do {
		case "BLUE": {_str = "<t size='1.5'>You are in <br/><t color='#0000FF'>BLUE</t> team.</t> "};
		case "RED": {_str = "<t size='1.5'>You are in <br/><t color='#FF0000'>RED</t> team.</t> "};
		case "GREEN": {_str = "<t size='1.5'>You are in <br/><t color='#00FF00'>GREEN</t> team.</t> "};
		case "YELLOW": {_str = "<t size='1.5'>You are in <br/><t color='#FFFF00'>YELLOW</t> team.</t> "};
		default { };
	};
	hint parseText _str;
}, {assignedTeam player != "MAIN"}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _teamColor] call ace_interact_menu_fnc_addActionToClass;
/*
mis_obj1call = {
	[] spawn {
		enableRadio true;

		sleep 1;
		[1,"0 this is 1, message, over."] call mis_sysChat;
		//systemChat "0 this is 1, message, over.";
		sleep 2.5;
		[1,"1 this is 0, send it, over."] call mis_sysChat;
		//systemChat "1 this is 0, send it, over.";
		sleep 2.5;
		[1,"0, OBJ1 has been secured, over."] call mis_sysChat;
		//systemChat "0, OBJ1 has been secured, over.";
		sleep 5;
		[1,"1, roger, out."] call mis_sysChat;
		//systemChat "1, roger, out.";
		sleep 1;

		enableRadio false;
	};
};
["mis_obj1", mis_obj1call] call CBA_fnc_addEventHandler;

mis_obj2call = {
	[] spawn {
		enableRadio true;

		sleep 1;
		[1,"0 this is 1, message, over."] call mis_sysChat;
		//systemChat "0 this is 1, message, over.";
		sleep 2.5;
		[1,"1 this is 0, send it, over."] call mis_sysChat;
		//systemChat "1 this is 0, send it, over.";
		sleep 2.5;
		[1,"0, OBJ2 has been secured, over."] call mis_sysChat;
		//systemChat "0, OBJ2 has been secured, over.";
		sleep 5;
		[1,"1, roger, out."] call mis_sysChat;
		//systemChat "1, roger, out.";
		sleep 1;

		enableRadio false;
	};
};
["mis_obj2", mis_obj2call] call CBA_fnc_addEventHandler;

mis_checkFreq = {
	_pre = param [0,1];
	_ret = false;

	_radioList = [] call acre_api_fnc_getCurrentRadioList;
	{
		if (([_x, "ACRE_PRC148"] call acre_api_fnc_isKindOf || [_x, "ACRE_PRC152"] call acre_api_fnc_isKindOf || [_x, "ACRE_PRC117F"] call acre_api_fnc_isKindOf) && !_ret) then {
			if ([_x] call acre_api_fnc_getRadioChannel == _pre) then {
				_ret = true
			};
		};
	} forEach _radioList;

	_ret
};

mis_sysChat = {
	_pre = param [0,1];
	_msg = param [1,""];

	if ([_pre] call mis_checkFreq) then {systemChat _msg};
};
*/

_cmdVeh = ["cmdVeh_class", "Stranded Pilot", "", {}, {(player == PILOT_1 || player == PILOT_2 || player == PILOT_3) && (!alive PLAYER_HELI_1 || !canMove PLAYER_HELI_1)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _cmdVeh] call ace_interact_menu_fnc_addActionToClass;

_cmdVehSub1 = ["cmd_deploy", "Enjoy Infantry Life", "", {player setPosATL (getPosATL fw_east_respawn); [player, "VDV_RIFLEMAN", "Borov"] call FNC_GearScript;}, {(player == PILOT_1 || player == PILOT_2 || player == PILOT_3) && (!alive PLAYER_HELI_1 || !canMove PLAYER_HELI_1)}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "cmdVeh_class"], _cmdVehSub1] call ace_interact_menu_fnc_addActionToClass;