if (isServer) then {
	randomNum = floor (random 3);
	chosenPos = [0,0,0];
	chosenDir = 10;
	switch (randomNum) do {
		case 0: { chosenPos = [5361.62,4148.37,4.75974] }; 
		case 1: { chosenPos = [6512.94,3645.23,1.0811] };
		case 2: { chosenPos = [5809.94,3652.54,1.17547] };
	};
	[] spawn {
		waitUntil{sleep 1;time > 2;};
		intel setpos chosenPos;
	};
	publicVariable "chosenPos";
};
if (side player == east) then {
	_markerstr = createMarker ["intelPos",chosenPos];
	_markerstr setMarkerShape "ICON";
	_markerstr setMarkerType "hd_dot";
	_markerstr setMarkerText "Intel";
} else {
	intel hideObject true;
};


#define preinit

#include "core\script_macros.hpp"

FW_DebugMessages = [];
FW_Modules = [];

PREP(notTrackUnit);
PREP(debugMessage);
PREP(randomRange);
PREP(trackAsset);
PREP(canLinkItem);
PREP(canAttachItem);
PREP(addItemOrg);
PREP(addItemRandomOrg);
PREP(addItemRandomOrgPercent);
PREP(addItemVehicleOrg);
PREP(addItemVehicleRandomOrg);
PREP(removeAllGear);
PREP(removeAllVehicleGear);
PREP(registerModule);
PREP(checkClassname);
PREP(makeUnitsList);


FNC_Briefing = compile preprocessFileLineNumbers "customization\briefing.sqf";

FNC_Menu = compile preprocessFileLineNumbers "core\menu.sqf";

#include "modules\modules.sqf" //DO NOT REMOVE
