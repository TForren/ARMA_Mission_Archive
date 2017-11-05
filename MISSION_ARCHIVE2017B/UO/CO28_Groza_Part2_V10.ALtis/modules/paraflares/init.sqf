	["Paraflares >",["paraflares"],"vehicle player == player"] call fmn_flexi_addMain;
	["paraflares", "Launch White Paraflare", "[1] spawn lynx_fnc_paraflare;", "vehicle player == player && 'FlareWhite_F' in (magazines player)", "Paraflares"] call fmn_flexi_addSub;
	["paraflares", "Launch Green Paraflare", "[2] spawn lynx_fnc_paraflare;", "vehicle player == player && 'FlareGreen_F' in (magazines player)", "Paraflares"] call fmn_flexi_addSub;
	["paraflares", "Launch Yellow Paraflare", "[3] spawn lynx_fnc_paraflare;", "vehicle player == player && 'FlareYellow_F' in (magazines player)", "Paraflares"] call fmn_flexi_addSub;
	["paraflares", "Launch Red Paraflare", "[4] spawn lynx_fnc_paraflare;", "vehicle player == player && 'FlareRed_F' in (magazines player)", "Paraflares"] call fmn_flexi_addSub;
	
	["Paraflares", "Paraflares", "[1] spawn lynx_fnc_paraflare;", TYPE, ICON, ON OPENED, USE SORTER] call cse_fnc_createRadialInteraction_F;
		
		//Return Complete
	true
	