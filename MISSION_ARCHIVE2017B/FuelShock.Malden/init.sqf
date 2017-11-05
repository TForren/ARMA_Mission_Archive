
#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel

		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			#include "customization\endConditions.sqf" //DO NOT REMOVE
			
			//The time limit in minutes variable called FW_TimeLimit is set in customization/settings.sqf, to disable the time limit set it to 0
			if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 
				
				FW_TimeLimitMessage call FNC_EndMission;
				
			};
		};	
	};
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE


{
	commandModule addCuratorEditableObjects [[_x],true ];
	commandModule addCuratorEditableObjects [[vehicle _x],true ];
} foreach allunits;


if (side player == east) then {
	_markerstr = createMarker ["intelPos",chosenPos];
	_markerstr setMarkerShape "ICON";
	_markerstr setMarkerType "hd_dot";
	_markerstr setMarkerText "Intel";
} else {
	intel hideObject true;
};


{
	{
		hideObject _x;
		hideObject (vehicle _x);
		_x enableSimulation false;
		(vehicle _x) enableSimulation false;
		commandModule removeCuratorEditableObjects [[_x],true ];
		commandModule removeCuratorEditableObjects [[vehicle _x],true ];
	} foreach units (group _x);
} foreach [r1l,r2l,r3l];

if (isServer) then {
	reinforce = false;
	while {!reinforce} do {
		bluCount = {side _x == west} count allunits;
		if (bluCount < 65) then {
			{
				{
					_x hideObject false;
					(vehicle _x) hideObject false;
					(vehicle _x) enableSimulation true;
					commandModule addCuratorEditableObjects [[_x],true ];
					commandModule addCuratorEditableObjects [[vehicle _x],true ];				
				} foreach units (group _x);
			} foreach [r1l,r2l,r3l];

		}; //end if
		sleep 10;
	};
};



//#include "HZ\HZ_init.sqf"
