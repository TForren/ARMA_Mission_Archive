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
_cmdVeh = ["cmdVeh_class", "Platoon Truck", "", {}, {player == PLT_DRIVER && player distance PLT_TRUCK > 100}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _cmdVeh] call ace_interact_menu_fnc_addActionToClass;

_cmdVehSub1 = ["cmd_deploy", "Teleport to Platoon Truck", "", {player moveInAny PLT_TRUCK}, {player == PLT_DRIVER && player distance PLT_TRUCK > 100}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions", "cmdVeh_class"], _cmdVehSub1] call ace_interact_menu_fnc_addActionToClass;

_cmdVehSub2 = ["cmd_rearm", "Rearm Personal Equipment", "", {_loadout = (player getVariable ["FW_Loadout", ""]);[player,_loadout] call FNC_GearScript;}, {vehicle player == player && player distance PLT_TRUCK < 5} ] call ace_interact_menu_fnc_createAction;
[PLT_TRUCK, 0, ["ACE_MainActions"], _cmdVehSub2] call ace_interact_menu_fnc_addActionToObject;