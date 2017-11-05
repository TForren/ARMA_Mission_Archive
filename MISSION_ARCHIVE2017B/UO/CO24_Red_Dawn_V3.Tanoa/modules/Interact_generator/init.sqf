if (!isDedicated) then {

	"" spawn {

		sleep 0.01;
		
	_action = [
	"vip_cyanide", 
	"Hack Terminal", 
	"", 
	{Hack=true;
	publicVariable "Hack"}, 
	{true}
] call ace_interact_menu_fnc_createAction;


[radar, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
	};
};