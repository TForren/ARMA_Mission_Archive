/*
_teamColor = ["colorCheck_class", "Check Team Color", "", {
	_str = "";
	switch (assignedTeam player) do {
		case "BLUE": {_str = "<t size='1.5'>You are in <br/><t color='#0000FF'>BLUE</t> team.</t> "};
		case "RED": {_str = "<t size='1.5'>You are in <br/><t color='#FF0000'>RED</t> team.</t> "};
		case "GREEN": {_str = "<t size='1.5'>You are in <br/><t color='#00FF00'>GREEN</t> team.</t> "};
		case "YELLOW": {_str = "<t size='1.5'>You are in <br/><t color='#FFFF00'>YELLOW</t> team.</t> "};
		default { };
	};
	hint parseText _str;
}, {}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _teamColor] call ace_interact_menu_fnc_addActionToClass;
*/

mis_obj1call = {
	[] spawn {
		enableRadio true;
		sleep 1;
		coyhq_b globalChat "2 this is 22, message, over.";
		sleep 2.5;
		coyhq_b globalChat "22 this is 2, send it, over.";
		sleep 2.5;
		coyhq_b globalChat "2, OBJ1 has been secured, over.";
		sleep 5;
		coyhq_b globalChat "22, roger, out.";
		sleep 1;

		enableRadio false;
	};
};
["mis_obj1", mis_obj1call] call CBA_fnc_addEventHandler;

mis_obj2call = {
	[] spawn {
		enableRadio true;
		sleep 1;
		coyhq_b globalChat "2 this is 22, message, over.";
		sleep 2.5;
		coyhq_b globalChat "22 this is 2, send it, over.";
		sleep 2.5;
		coyhq_b globalChat "2, OBJ2 has been secured, over.";
		sleep 5;
		coyhq_b globalChat "22, roger, out.";
		sleep 1;

		enableRadio false;
	};
};
["mis_obj2", mis_obj2call] call CBA_fnc_addEventHandler;

_cmdVeh = ["cmdVeh_class", "Platoon Truck", "", {}, {player == plt22_plthq_driver && player distance truck1_b > 100}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _cmdVeh] call ace_interact_menu_fnc_addActionToClass;

_cmdVehSub1 = ["cmd_deploy", "Teleport to Platoon Truck", "", {player moveInAny truck1_b}, {player == plt22_plthq_driver && player distance truck1_b > 100}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "cmdVeh_class"], _cmdVehSub1] call ace_interact_menu_fnc_addActionToClass;

_cmdVehSub2 = ["cmd_rearm", "Rearm Personal Equipment", "", {_loadout = (player getVariable ["FW_Loadout", ""]);[player,_loadout] call FNC_GearScript;}, {vehicle player == player && player distance truck1_b < 5} ] call ace_interact_menu_fnc_createAction;
[truck1_b, 0, ["ACE_MainActions"], _cmdVehSub2] call ace_interact_menu_fnc_addActionToObject;

_cmdRadio = ["cmdRadio_class", "Radio Messages", "", {}, {player distance blufor_obj1 < 25 || player distance blufor_obj2 < 25}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _cmdRadio] call ace_interact_menu_fnc_addActionToClass;

_cmdRadioSub1 = ["cmd_obj1", "Report OBJ1 Secured", "", {["mis_obj1"] call CBA_fnc_globalEvent;[{["mis_obj1_flag"] call CBA_fnc_serverEvent;},16] call CBA_fnc_waitAndExecute;}, {player distance blufor_obj1 < 25}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "cmdRadio_class"], _cmdRadioSub1] call ace_interact_menu_fnc_addActionToClass;
_cmdRadioSub2 = ["cmd_obj2", "Report OBJ2 Secured", "", {["mis_obj2"] call CBA_fnc_globalEvent;[{["mis_obj2_flag"] call CBA_fnc_serverEvent;},16] call CBA_fnc_waitAndExecute;}, {player distance blufor_obj2 < 25}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "cmdRadio_class"], _cmdRadioSub2] call ace_interact_menu_fnc_addActionToClass;