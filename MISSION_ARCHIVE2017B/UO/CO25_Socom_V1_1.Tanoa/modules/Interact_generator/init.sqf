if (!isDedicated) then {

	"" spawn {

		sleep 0.01;

		//////////////////////////   SDV //////////////////////////////
	_action = [
	"Rescue", 
	"Teleport SDV", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	sdv1 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[sdv1, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
////////////////////
	_action2 = [
	"Rescue", 
	"Teleport SDV", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	sdv2 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[sdv2, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;
////////////////////////
	_action3 = [
	"Rescue", 
	"Teleport SDV", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	sdv3 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[sdv3, 0, ["ACE_MainActions"], _action3] call ace_interact_menu_fnc_addActionToObject;
//////////////////
	_action4 = [
	"Rescue", 
	"Teleport SDV", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	sdv4 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[sdv4, 0, ["ACE_MainActions"], _action4] call ace_interact_menu_fnc_addActionToObject;
/////////////////////
	_action5 = [
	"Rescue", 
	"Teleport SDV", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	sdv5 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[sdv5, 0, ["ACE_MainActions"], _action5] call ace_interact_menu_fnc_addActionToObject;
/////////////////////////
	_action6 = [
	"Rescue", 
	"Teleport SDV", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	sdv6 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[sdv6, 0, ["ACE_MainActions"], _action6] call ace_interact_menu_fnc_addActionToObject;
///////////////////////////// SDV ///////////////////////////

////////////////////////////  BOAT  /////////////////////////
	_action11 = [
	"Rescue", 
	"Teleport Boat", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	boat1 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[boat1, 0, ["ACE_MainActions"], _action11] call ace_interact_menu_fnc_addActionToObject;
//////////////////////////
	_action12 = [
	"Rescue", 
	"Teleport Boat", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	boat2 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[boat2, 0, ["ACE_MainActions"], _action12] call ace_interact_menu_fnc_addActionToObject;
////////////////////////////
	_action13 = [
	"Rescue", 
	"Teleport Boat", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	boat3 setpos _pos;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[boat3, 0, ["ACE_MainActions"], _action13] call ace_interact_menu_fnc_addActionToObject;
/////////////////////////// BOAT   ///////////////////////////////

////////////////////////// Laptop Actions /////////////////////////
	_action22 = [
	"Rescue", 
	"Teleport HALO", 
	"", 
	{openMap true;

	onMapSingleClick {
	onMapSingleClick {};
	player setpos _pos;
	_height = 1000;
	[player,_height] spawn BIS_fnc_halo;
	hint '';
	openMap false;
	true
	};
	
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[flagpole, 0, ["ACE_MainActions"], _action22] call ace_interact_menu_fnc_addActionToObject;

	_action23 = [
	"Rescue", 
	"Start Drug Lab Objective", 
	"", 
	{Drug_Trig=true; publicVariable "Drug_Trig"; "Drug_Marker" setMarkerColor "ColorRed";
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[flagpole, 0, ["ACE_MainActions"], _action23] call ace_interact_menu_fnc_addActionToObject;

	_action24 = [
	"Rescue", 
	"Start Assasin Objective", 
	"", 
	{Assasin_Trig=true; publicVariable "Assasin_Trig"; "Assasin_Marker" setMarkerColor "ColorRed";
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[flagpole, 0, ["ACE_MainActions"], _action24] call ace_interact_menu_fnc_addActionToObject;

	_action25 = [
	"Rescue", 
	"Start Radar Objective", 
	"", 
	{Radar_Trig=true; publicVariable "Radar_Trig"; "Radar_Marker" setMarkerColor "ColorRed";
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[flagpole, 0, ["ACE_MainActions"], _action25] call ace_interact_menu_fnc_addActionToObject;

	_action26 = [
	"Rescue", 
	"Start Airport Objective", 
	"", 
	{Airport_Trig=true; publicVariable "Airport_Trig"; "Airport_Marker" setMarkerColor "ColorRed";
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[flagpole, 0, ["ACE_MainActions"], _action26] call ace_interact_menu_fnc_addActionToObject;

////////////////////////////////////Laptop Actions ////////////////////////////////////////

///////////////////////////////////crate actions /////////////////////////////////////////
	_action27 = [
	"Rescue", 
	"Take Drugs", 
	"", 
	{player setdamage 1;
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[crate1, 0, ["ACE_MainActions"], _action27] call ace_interact_menu_fnc_addActionToObject;

	_action28 = [
	"Rescue", 
	"Take Drugs", 
	"", 
	{player setdamage 1;
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[crate2, 0, ["ACE_MainActions"], _action28] call ace_interact_menu_fnc_addActionToObject;

	_action29 = [
	"Rescue", 
	"Take Drugs", 
	"", 
	{player setdamage 1;
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[crate3, 0, ["ACE_MainActions"], _action29] call ace_interact_menu_fnc_addActionToObject;

	_action30 = [
	"Rescue", 
	"Take Drugs", 
	"", 
	{player setdamage 1;
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[crate4, 0, ["ACE_MainActions"], _action30] call ace_interact_menu_fnc_addActionToObject;

////////////////////////////////////crate actions /////////////////////////////////////

/////////////////////////////////// Airport actions //////////////////////////////////
	_action31 = [
	"Rescue", 
	"Take Intelligence", 
	"", 
	{Intel_Trig1=true; publicVariable "Intel_Trig1";
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[airport_intel1, 0, ["ACE_MainActions"], _action31] call ace_interact_menu_fnc_addActionToObject;

_action32 = [
	"Rescue", 
	"Take Intelligence", 
	"", 
	{Intel_Trig2=true; publicVariable "Intel_Trig2";
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[airport_intel2, 0, ["ACE_MainActions"], _action32] call ace_interact_menu_fnc_addActionToObject;

_action33 = [
	"Rescue", 
	"Take Intelligence", 
	"", 
	{Intel_Trig3=true; publicVariable "Intel_Trig3";
	}, 
	{true}
] call ace_interact_menu_fnc_createAction;

[airport_intel3, 0, ["ACE_MainActions"], _action33] call ace_interact_menu_fnc_addActionToObject;

/////////////////////////////////// Airport actions //////////////////////////////////
	};
};