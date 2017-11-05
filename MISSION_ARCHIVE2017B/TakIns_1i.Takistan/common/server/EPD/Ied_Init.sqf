// Written by Brian Sweeney - [EPD] Brian
if(isServer)then{
iedsAdded=false;
publicVariable "iedsAdded";

iedDictionary=call Dictionary_fnc_new;
publicVariable "iedDictionary";

lastIedExplosion=[0,0,0];
publicVariable "lastIedExplosion";
};

ehExplosiveSuperClasses=["RocketCore","MissileCore","SubmunitionCore","GrenadeCore","ShellCore"];
publicVariable "ehExplosiveSuperClasses";

explosiveSuperClasses=["TimeBombCore","BombCore","Grenade"];
publicVariable "explosiveSuperClasses";

projectilesToIgnore=["SmokeShell","FlareCore","IRStrobeBase","GrenadeHand_stone","Smoke_120mm_AMOS_White","TMR_R_DG32V_F"];
publicVariable "projectilesToIgnore";

call compile preprocessFileLineNumbers "common\server\EPD\Ied_Settings.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\ExplosionFunctions.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\CreationFunctions.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\ExplosionEffects.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\CreationAuxiliaryFunctions.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\ExplosivesHandler.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\Disarm.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\DictionaryFunctions.sqf";
call compile preprocessFileLineNumbers "common\server\EPD\IED\TriggerCheck.sqf";


iedSecondaryItemsCount=count iedSecondaryItems;
iedSmallItemsCount=count iedSmallItems;
iedMediumItemsCount=count iedMediumItems;
iedLargeItemsCount=count iedLargeItems;

if(isServer)then{
call GET_PLACES_OF_INTEREST;
iedSafeRoads=[];
	{_locationAndSize=(_x)call GET_CENTER_LOCATION_AND_SIZE;
	_roads=((_locationAndSize select 0)nearRoads(_locationAndSize select 1));
	iedSafeRoads=(iedSafeRoads - _roads) + _roads;//removes duplicates first
	}forEach iedSafeZones;
	_handles=[];
	_nextHandleSpot=0;
{switch(toUpper(_x select 0))do{
	case "ALL":{
		_keys=iedAllMapLocations call Dictionary_fnc_keys;
		_side=_x select 1;
		{_handles set[_nextHandleSpot,[[_x,_side]]spawn CREATE_IED_SECTION];
		_nextHandleSpot=_nextHandleSpot + 1;
		}forEach _keys;
	};
	case "ALLCITIES":{
		_keys=iedCityMapLocations call Dictionary_fnc_keys;
		_side=_x select 1;
		{_handles set[_nextHandleSpot,[[_x,_side]]spawn CREATE_IED_SECTION];
		_nextHandleSpot=_nextHandleSpot + 1;
		}forEach _keys;
	};
	case "ALLVILLAGES":{
		_keys=iedVillageMapLocations call Dictionary_fnc_keys;
		_side=_x select 1;
		{_handles set[_nextHandleSpot,[[_x,_side]]spawn CREATE_IED_SECTION];
		_nextHandleSpot=_nextHandleSpot + 1;
		}forEach _keys;
	};
	case "ALLLOCALS":{
		_keys=iedLocalMapLocations call Dictionary_fnc_keys;
		_side=_x select 1;
		{_handles set[_nextHandleSpot,[[_x,_side]]spawn CREATE_IED_SECTION];
		_nextHandleSpot=_nextHandleSpot + 1;
		}forEach _keys;
	};
default	{
	_handles set[_nextHandleSpot,[_x]spawn CREATE_IED_SECTION];
	_nextHandleSpot=_nextHandleSpot + 1;};
	};
}forEach iedInitialArray;

waitUntil{sleep .5;[_handles]call CHECK_ARRAY;};

publicVariable "iedDictionary";

iedsAdded=true;
publicVariable "iedsAdded";
};
waitUntil{sleep 1;(!isNull player and iedsAdded)};
[]call ADD_DISARM_AND_PROJECTILE_DETECTION;