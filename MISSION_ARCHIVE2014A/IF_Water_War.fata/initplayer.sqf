//------------------------------
// Script: initplayer.sqf
// Writer: Cuel
// Created: 2013-03-10
// Edited: 2013-03-14
//------------------------------

Equip_Player = {
	switch (side player) do {
		case blufor: {
			"machete" setmarkeralphalocal 0;
			"sickle" setmarkeralphalocal 0;
			"shotel" setmarkeralphalocal 0;
		};
		case opfor: {
			"infantry" setmarkeralphalocal 0;
			"pilots" setmarkeralphalocal 0;
		};
		default {};
	};
	player addItem "FirstAidKit";
};
[] call Equip_Player;

/*
player addEventHandler ["Respawn",{
	(_this select 1) spawn {
		sleep 3; 
		hidebody _this;
		sleep 5;
		deleteVehicle _this;
	};
	[] spawn Equip_Player;
}];
*/
waitUntil {time > 0};
player switchMove "amovpercmstpslowwrfldnon";

//[] execVM "markAssassins.sqf";
//[] execVM "markBlufor.sqf";