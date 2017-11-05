Private ["_defaultInsertionMarker", "_aRadiusMarker", "_xOffset", "_yOffset", "_pos", "_taskMessageTitle", "_taskMessageText", "_endTime"];

fnc_findFlatEmpty = compile preprocessFileLineNumbers "fnc_findflatempty.sqf";

fnc_roundEndMessage = compile preprocessFileLineNumbers "roundendmsg.sqf";

execVM "capturetriggermsg.sqf";
execVM "afkkiller.sqf";

nameTagMaxDistance = 60;
execVM "cursornames\cursornames_init.sqf";

player setVariable ["shortName", "-", true];
preferDriver = false;
player setVariable ["preferDriver", preferDriver, true];
player setVariable ["vehicleRole", [objNull, false]];
isPlaying = false;

isGroupLeader = false;

// Run key press handler (disable spacebar scanning, group joining)
disableSerialization;
waituntil {!(IsNull (findDisplay 46))};
fnc_keyUp = compile preprocessFileLineNumbers "keyup.sqf";
_display = findDisplay 46;
_display displayAddEventHandler ["keyUp", "_this call fnc_keyUp"];
_display displayAddEventHandler ["onMouseButtonUp", "_this call fnc_keyUp"];
_display displayAddEventHandler ["onJoystickButton", "_this call fnc_keyUp"];

//Player actions
fnc_addActions =
{
	player addAction [localize "STR_UnStuck", "unstuck.sqf", [], 0, false, true, "", "(sidePlayer != attackerSide) && isPlaying && ((time + timeLimit - endTime) < 30) && ((time + timeLimit - endTime) > 8)"];
	if (isIDF) then
	{
		player addAction [localize "STR_RemoveMitsnefet", "mitsnefettoggle.sqf", [false], 0, false, true, "", "(vehicle player == player) && ((toLower (headGear player)) == mitsnefetHelmet)"];
		player addAction [localize "STR_PutOnMitsnefet", "mitsnefettoggle.sqf", [true], 0, false, true, "", "(vehicle player == player) && ((toLower (headGear player)) == 'IDF_Helmet_CQB_Golani')"];
	};
};

basePos = getPos player;
_xOffset = (getPos player select 0) - (markerPos "respawn_west" select 0);
_yOffset = (getPos player select 1) - (markerPos "respawn_west" select 1);
if (sidePlayer == EAST) then
{
	_xOffset = (getPos player select 0) - (markerPos "respawn_east" select 0);
	_yOffset = (getPos player select 1) - (markerPos "respawn_east" select 1);
};

spectateUnit = player;
isSpectating = false;

fnc_switchCamera =
{
	if (spectateUnit == player) then
	{
		isSpectating = false;
	};
	spectateUnit switchCamera "INTERNAL";
};

fnc_nextSpectateUnit =
{
	private ["_step", "_unitArr", "_oldUnit", "_unitArrCount", "_i", "_oldUnitIndex", "_nextUnit"];
	
	_step = 1;
	if ((count _this) > 0) then
	{
		_step = _this select 0;
	};
	_unitArr = allUnits;
	_unitArrCount = count _unitArr;
	_oldUnit = spectateUnit;
	spectateUnit = player;
	_i = 0;
	if (_step < 0) then
	{
		_i = _unitArrCount - 1;
	};
	_oldUnitIndex = -1;
	_search = true;
	while {_search && (spectateUnit == player)} do
	{
		if (_i == _oldUnitIndex) then
		{
			_search = false;
		};
		if (_oldUnitIndex >= 0) then
		{
			_nextUnit = _unitArr select _i;
			if
			(
				(alive _nextUnit)
				&&
				(side _nextUnit == sidePlayer)
				&&
				(isPlayer _nextUnit)
				&&
				((_nextUnit distance (markerPos "respawn_west")) > 100)
				&&
				((_nextUnit distance (markerPos "respawn_east")) > 100)
			) then
			{
				spectateUnit = _nextUnit;
				_search = false;
			};
		}
		else
		{
			if ((_unitArr select _i) == _oldUnit) then
			{
				_oldUnitIndex = _i;
			};
		};
		
		_i = _i + _step;
		
		if (_i >= _unitArrCount) then
		{
			_i = 0;
			if (_oldUnitIndex < 0) then
			{
				_oldUnitIndex = _unitArrCount - 1;
			};
		};
		if (_i < 0) then
		{
			_i = _unitArrCount - 1;
			if (_oldUnitIndex < 0) then
			{
				_oldUnitIndex = 0;
			};
		};
	};
		
	isSpectating = true;
	[] call fnc_switchCamera;
	//if (spectateUnit != player) then
	//{
	//	player sideChat format [localize "STR_SpectatingFrom", name spectateUnit];
	//};
};

fnc_respawn =
{
	private ["_bGiveWeapons"];
	_bGiveWeapons = _this select 0;
	if (!alive player) then
	{
		waitUntil {alive player};
		[] call fnc_addActions;
	}
	else
	{
		waitUntil {alive player};
	};
	player setVariable ["preferDriver", preferDriver, true];
	player setVariable ["vehicleRole", [objNull, false]];
	[_bGiveWeapons] call fnc_assignGear;
};

fnc_reveal =
{
	{(group player) reveal _x;} forEach ((getPos player) nearObjects ["B_SupplyCrate_F", 50]);
	if (sidePlayer == WEST) then
	{
		(group player) reveal westMenuFlag;
	}
	else
	{
		(group player) reveal eastMenuFlag;
	};
};

trgCapMsg setTriggerArea [capRad, capRad, 0, false];

_defaultInsertionMarker = createMarkerLocal ["mrkDefaultInsertion", [1, 1]];
_defaultInsertionMarker setMarkerShapeLocal "ICON";
_defaultInsertionMarker setMarkerTypeLocal "mil_start";
_defaultInsertionMarker setMarkerTextLocal format [localize "STR_DefaultInsertion", localize "STR_Jeeps"];
_defaultInsertionMarker setMarkerColorLocal "COLORGREEN";
_defaultInsertionMarker setMarkerSizeLocal [1.1, 1.1];
_defaultInsertionMarker setMarkerAlphaLocal 0;

_aRadiusMarker = createMarkerLocal ["mrkAZone", [1, 1]];
_aRadiusMarker setMarkerShapeLocal "ELLIPSE";
_aRadiusMarker setMarkerBrushLocal "Border";
_aRadiusMarker setMarkerColorLocal "COLORRED";
_aRadiusMarker setMarkerSizeLocal [minDist, minDist];
_aRadiusMarker setMarkerAlphaLocal 0;

objPosHandlerClient =
{
	trgCapMsg setPos objPos;
	if ((!roundInProgress) && (attackerSide == sidePlayer) && ([player] call fnc_isLeaderWithGroup)) then
	{
		hint (localize "STR_SelectInsertionMethod");
	};
};
"objPos" addPublicVariableEventHandler objPosHandlerClient;

defaultInsertionPosHandler =
{
	private ["_dx", "_dy", "_dir"];
	if (sidePlayer == attackerSide) then
	{
		_dx = (objPos select 0) - (defaultInsertionPos select 0);
		_dy = (objPos select 1) - (defaultInsertionPos select 1);
		_dir = atan (_dy/_dx);
		if (_dx<0) then
		{
			_dir = _dir + 180;
		};
		if (_dx==0) then
		{
			if (_dy>0) then
			{
				_dir = 90;
			}
			else
			{
				_dir = -90;
			};
		};
		_dir = 90 - _dir;

		"mrkDefaultInsertion" setMarkerPosLocal defaultInsertionPos;
		"mrkDefaultInsertion" setMarkerDirLocal _dir;
		"mrkDefaultInsertion" setMarkerAlphaLocal 1;
	};
};
"defaultInsertionPos" addPublicVariableEventHandler defaultInsertionPosHandler;

waitUntil {!(isNil "fnc_isLeaderWithGroup")};

vehArrHandler =
{
	{
		clearItemCargo _x
	} forEach vehArr;
	{player reveal _x} forEach vehArr;
	[] call fnc_vehicleAllowDamage;
};
"vehArr" addPublicVariableEventHandler vehArrHandler;

currentVehHandler =
{
	private ["_veh", "_roleIndex", "_slotIndex"];
		
	_veh = (_this select 0) select 0;
	_roleIndex = (_this select 0) select 1;
	
	bKeepPlayerInBox = false;
	
	// Place the player near the vehicle, just in case getting the the vehicle gets messed up.
	player setPos ([getPos _veh, 3] call fnc_findFlatEmpty);
	
	// Get in the vehicle.
	if (_roleIndex == 0) then
	{
		player moveInDriver _veh;
	}
	else
	{
		_slotIndex = _roleIndex - 1;
		if (((toLower (typeOf _veh)) == (toLower "B_Heli_Light_01_F")) || ((toLower (typeOf _veh)) == (toLower "B_SDV_01_F"))) then
		{
			_slotIndex = _slotIndex - 1;
		};
		if (_slotIndex < 0) then
		{
			player moveInTurret [_veh, [0]];
		}
		else
		{
			player moveInCargo [_veh, _slotIndex];
		};
	};
};
"currentVeh" addPublicVariableEventHandler
{
	[_this select 1] call currentVehHandler;
};

waitUntil {!(isNil "objPos")};
[] call objPosHandlerClient;

waitUntil {!(isNil "defaultInsertionPos")};
[] call defaultInsertionPosHandler;

waitUntil {alive player && (!isNil "nextAttackerSide")};
[] call objPosHandlerClient;

[] call compile preprocessFileLineNumbers "hud_create.sqf";

fnc_HUDUpdate = compile preprocessFileLineNumbers "hud_update.sqf";

execVM "timerupdateclient.sqf";

player addEventHandler ["Killed",
{
	private ["_killer"];
	_killer = _this select 1;
	
	if (sidePlayer == side _killer) then
	{
		TKer = _killer;
		publicVariable "TKer";
		[TKer] call TKerPVHandler;	
	};
	
	//[] spawn
	//{
		//private ["_playerVarName"];
		//waitUntil {alive player};
		// Try to fix player variable name not updating correctly for JIPs, which breaks the group management scripts.
		//_playerVarName = vehicleVarName player;
		//missionNameSpace setVariable [_playerVarName, player];
		//publicVariable _playerVarName;
	//};
}];

TKerPVHandler =
{
	private ["_killer"];

	_killer = _this select 0;
	
	if (side _killer == sidePlayer) then
	{
		player sideChat format [localize "STR_TKMessage", name _killer];
	};
};
"TKer" addPublicVariableEventHandler
{
	[_this select 1] call TKerPVHandler;
};

player setVariable ["playerAllowDamage", false, true];
bKeepPlayerInBox = true;

currentClass = ["", ""];
currentAClass = aClasses select 0;
currentDClass = dClasses select 0;
hasMitsnefet = false;

if (alive player) then
{
	[] call fnc_addActions;
};
[false] call fnc_respawn;

execVM "uniformfix.sqf";

[] spawn
{
	private ["_xPos", "_yPos", "_sight"];
	_xPos = (markerPos "respawn_east") select 0;
	_yPos = (markerPos "respawn_east") select 1;
	if (sidePlayer == WEST) then
	{
		_xPos = (markerPos "respawn_west") select 0;
		_yPos = (markerPos "respawn_west") select 1;
	};
	
	while {true} do
	{
		if (bKeepPlayerInBox && (alive player) && (((abs((getPos player select 0) - _xPos)) > 14) || ((abs ((getPos player select 1) - _yPos)) > 10))) then
		{
			player setPos [_xPos, _yPos];
			player setVelocity [0, 0, 0];
		};
		
		if (player getVariable "groupKicked") then
		{
			[] call fnc_groupLeave;
		};
		
		if (isSpectating && ((isNull spectateUnit) || {!(alive spectateUnit)})) then
		{
			[] call fnc_nextSpectateUnit;
		};
		
		if ((alive player) && gearAssigned) then
		{
			if ((player hasWeapon "launch_RPG32_F") && (backpack player != "")) then
			{
				removeBackpack player;
				[] spawn {hintC (localize "STR_CannotCarryBackpackAndRPG");};
			};
		
			if (player hasWeapon "LMG_Zafir_F") then
			{
				_sight = (primaryWeaponItems player) select 2;
				if (_sight != "") then
				{
					player removePrimaryWeaponItem _sight;
					player addItem _sight;
					[] spawn {hintC (localize "STR_CannotAttachSightsToZafir");};
				};
			};
		
			if (((vehicle player) != player) && (sidePlayer != attackerSide)) then
			{
				player action ["GetOut", vehicle player];
				[] spawn {hintC (localize "STR_VehicleIsLocked");};
			};
		};
		
		sleep .01;
	};
};

while {isNil "roundInProgress"} do
{
	waitUntil {!isNil "roundInProgress" || !alive player};
	if (!alive player) then
	{
		[false] call fnc_respawn;
	};
};

if (!roundInProgress) then
{
	player setVariable ["playerAllowDamage", false, true];
	bKeepPlayerInBox = true;
}
else
{
	if (missingModsMessage == "") then
	{
		hintC localize "STR_WaitNextRound";
	};
};

waitUntil {!isNil "isACE"};
ace_sys_spectator_can_exit_spectator = true;

if (roundInProgress) then
{
	ace_sys_spectator_exit_spectator = nil;
	if (isACE) then
	{
		[] spawn ace_fnc_startSpectator;
	}
	else
	{
		[] call fnc_nextSpectateUnit;
	};
	while {roundInProgress} do
	{
		waitUntil {!roundInProgress || !alive player};
		if (!alive player) then
		{
			[false] call fnc_respawn;
		};
	};
};

//waitUntil {!isNil "setupReady"};

while {true} do
{
	ace_sys_spectator_exit_spectator = true;
	if (!isACE) then
	{
		spectateUnit = player;
		[] call fnc_switchCamera;
	};
	
	while {!roundInProgress} do
	{
		waitUntil {roundInProgress || !alive player};
		if (!alive player) then
		{
			[false] call fnc_respawn;
		};
	};
	
	onMapSingleClick "";
	"mrkAZone" setMarkerAlphaLocal 0;
	
	lastAttackerSide = attackerSide;

	player setVelocity [0,0,0];
	if (sidePlayer == attackerSide) then
	{
		if ((vehicle player == player) && (isNil "currentVeh")) then
		{
			waitUntil {!isNil "currentVeh"};
			if (vehicle player == player) then
			{
				[currentVeh] call currentVehHandler;
			};
		};
	}
	else
	{
		_pos = [(objPos select 0) + _xOffset, (objPos select 1) + _yOffset];
		_pos = [_pos, 3] call fnc_findFlatEmpty;
		bKeepPlayerInBox = false;
		player setPos _pos;
	};
	
	player setDamage 0;
	if (isACE) then
	{
		player call ace_sys_wounds_fnc_RemoveUncon;
	};
	
	[] spawn
	{
		private ["_endTime"];
		_endTime = time + 30;
		waitUntil {(!(alive player)) || (!roundInProgress) || (time > _endTime)};
		if ((time > _endTime) && (alive player) && roundInProgress) then
		{
			player setVariable ["playerAllowDamage", true, true];
		};
	};
	
	[true] call fnc_respawn;
	
	isPlaying = true;
	
	if (sidePlayer == attackerSide) then
	{
		_taskMessageTitle = "STR_CaptureTheZone";
		_taskMessageText = "STR_CaptureTheZoneLong";
	}
	else
	{
		_taskMessageTitle = "STR_DefendTheZone";
		_taskMessageText = "STR_DefendTheZoneLong";
	};
	["DTASNotificationAssigned", [localize _taskMessageTitle, localize _taskMessageText]] spawn BIS_fnc_showNotification;
	
	if (missingModsMessage != "") then
	{
		[] spawn
		{
			removeAllWeapons player;
			removeUniform player;
			removeBackPack player;
			removeVest player;
			removeHeadGear player;
			removeAllAssignedItems player;
			player setDamage 1;
			hintC missingModsMessage;
		};
	};
	
	waitUntil {!(alive player) || !roundInProgress};
	isPlaying = false;
	player setVariable ["playerAllowDamage", false, true];
	[false] call fnc_respawn;
	waitUntil {alive player};
	bKeepPlayerInBox = true;
	if (roundInProgress) then
	{
		ace_sys_spectator_exit_spectator = nil;
		if (isACE) then
		{
			[] spawn ace_fnc_startSpectator;
		}
		else
		{
			[] call fnc_nextSpectateUnit;
		};
	}
	else
	{
		if (vehicle player != player) then
		{
			player action ["Eject", vehicle player];
		};
		player setPos basePos;
		player setVelocity [0,0,0];
		player setDamage 0;
		if (isACE) then
		{
			player call ace_sys_wounds_fnc_RemoveUncon;
		};
	};
	while {roundInProgress} do
	{
		waitUntil {!roundInProgress || (!(alive player))};
		if (!alive player) then
		{
			[false] call fnc_respawn;
		};
	};
	(group player) setVariable ["groupReady", false];
	"mrkDefaultInsertion" setMarkerAlphaLocal 0;
	[] call fnc_reveal;
	[] call fnc_roundEndMessage;
};