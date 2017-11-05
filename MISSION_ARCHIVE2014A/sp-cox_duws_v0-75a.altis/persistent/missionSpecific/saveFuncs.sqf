
//Variable names are in the format: PlayerID_VarName
//example:
//123456_position
//where 123456 is the players ID.

fn_SaveStat =
{
	_varName = _this select 0;
	_varValue = _this select 1;
	_playerID = _this select 2;
	
	_combinedVarName = format["%1%2", _playerID, _varName];
	
	profileNameSpace setVariable [_combinedVarName,_varValue];
};

fn_LoadStat =
{
	_varName = _this select 0;
	_playerID = _this select 1;
	
	_combinedVarName = format["%1%2", _playerID, _varName];
	
	_varValue = profileNameSpace getVariable (_combinedVarName);
	if(isNil "_varValue") exitWith {};
	[_varName,_varValue] call fn_SetStat;
};

//ADD VARIABLES TO THIS ARRAY THAT NEED SPECIAL SCRIPTING TO LOAD
specialVarLoads =
[
	"weaponsPlayer",
	"magazinesPlayer",
	"gogglesPlayer",
	"vestPlayer",
	"outfit",
	"hat",
	"backpackPlayer",
	"positionPlayer",
	"directionPlayer",
	
	"supports"
];

//THIS FUNCTIONS HANDLES HOW STATS ARE LOADED
fn_SetStat =
{
	_varName = _this select 0;
	_varValue = _this select 1;
	_player = _this select 2;
	
	if(isNil '_varValue') exitWith {};
	if(_varName in specialVarLoads) then
	{
		if(_varName == 'positionPlayer') then {_player setPosATL _varValue};
		if(_varName == 'directionPlayer') then {_player setDir _varValue};
		if(_varName == 'gogglesPlayer') then {removeGoggles _player; _player addGoggles _varValue;};
		if(_varName == 'vestPlayer') then {removeVest _player; _player addVest _varValue;};
		if(_varName == 'outfit') then {removeUniform _player; _player addUniform _varValue;};
		if(_varName == 'hat') then {removeHeadGear _player; _player addHeadGear _varValue;};
		if(_varName == 'weaponsPlayer') then {if(count _varValue > 0) then {removeAllWeapons _player; {_player addWeapon _x} forEach _varValue;};};
		if(_varName == 'magazinesPlayer') then {if(count _varValue > 0) then {{_player removeMagazine _x} forEach (magazines _player); {_player addMagazine _x} forEach _varValue; reload _player};};
		if(_varName == 'backpackPlayer') then {_player addBackpack _varValue;};
	}
	else
	{
		call compile format ["%1 = %2",_varName,_varValue];
	};
};

//==================================================================================================================================================================================================
saveFuncsLoaded = true;