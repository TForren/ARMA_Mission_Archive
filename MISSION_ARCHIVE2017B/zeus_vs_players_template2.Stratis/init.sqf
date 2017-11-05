disableSerialization;

//call {player execVM "text.sqf"; };

if (player == ZeusCommander) then {
	
	fnc_blackScreen = {
		_blackScreened = _this getVariable "blackScreen";
		//Screen isn't black
		if !_blackScreened then {
			cutText ["","BLACK",0,true]; //black it
		//screen is black
		} else {
			cutText ["","BLACK IN",1,true]; //remove black
		};
		//flip boolean
		_this setvariable ["blackScreen",!_blackScreened];
	};

	ZeusCommander setvariable ["blackScreen",false];
	waituntil {!(IsNull (findDisplay 312))};  
	_keyDown = (findDisplay 312) displayAddEventHandler ["KeyDown","hint str _this; if (_this select 1 == 50) then {ZeusCommander call fnc_blackScreen;}"];
};

#include "HZ\HZ_init.sqf";
