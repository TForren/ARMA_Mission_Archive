/*
 =======================================================================================================================

	T8 Units Script

	Funktion:	fn_zone.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	[ _unitsArray, _marker, _owner, _actSide, _distance, _condition, _onAct, _onDeAct ] call T8U_fnc_Zone	
	
 =======================================================================================================================
*/

#include <..\MACRO.hpp>
__allowEXEC(__FILE__);

private [ "_unitsArray", "_marker", "_owner", "_distance", "_actSide", "_actType", "_onAct", "_onDeAct", "_condition", "_trigger", "_onActCompiled", "_onDeactCompiled", "_onActDebug", "_onDeActDebug" ];

_unitsArray		= param [ 0, "NO-UNITS-SET", [ "" ]];
_marker			= param [ 1, "NO-MARKER-SET", [ "" ]];
_owner			= param [ 2, "NO-SIDE-SET", [ "" ]];
_actSide		= param [ 3, "ANY", [ "" ]];
_distance		= param [ 4, 1000, [ 123 ]];
_condition		= param [ 5, "this", [ "" ]];
_onAct			= param [ 6, "", [ "" ]];
_onDeAct		= param [ 7, "", [ "" ]];

_owner			= toUpper _owner;

_actType = "PRESENT";
_actRepeat = true;

if ( _unitsArray == "NO-UNITS-SET" OR { _marker == "NO-MARKER-SET" } OR { _owner == "NO-SIDE-SET" } OR { ! ( _owner in [ "WEST", "EAST", "CIV", "GUER" ] ) } ) exitWith 
{
	private [ "_msg" ]; 
	_msg = format [ "There is a serious error in your T8U_fnc_Zone call!<br /><br />%1", _this ];
	[ _msg ] call T8U_fnc_BroadcastHint;
	false 
};

if ( T8U_var_DEBUG_hints ) then
{
	_onActDebug = format [ '[ "Zone um [ %1 ] aktiviert" ] call T8U_fnc_BroadcastHint;', _marker ];
	_onDeActDebug = format [ '[ "Zone um [ %1 ] deaktiviert" ] call T8U_fnc_BroadcastHint;', _marker ];
} else {
	_onActDebug = "";
	_onDeActDebug = "";
};

_onCreateActCompiled = format [ '[ %1, "%1" ] spawn T8U_fnc_ZoneCreate; %2 %3', _unitsArray, _onAct, _onActDebug ];
_onCreateDeactCompiled = format [ '[ "%1" ] spawn T8U_fnc_ZoneNotAktiv;', _unitsArray ];
_onDeactCompiled = format ['[] spawn { sleep %6; [ "%1", "%2", "%3" ] spawn T8U_fnc_Cache; }; %4 %5', _unitsArray, _marker, _owner, _onDeAct, _onDeActDebug, T8U_var_CacheTime ];

if ( T8U_var_DEBUG ) then { [ "fn_zone.sqf", "INIT", _this ] spawn T8U_fnc_DebugLog; };
if ( T8U_var_DEBUG ) then { [ "fn_zone.sqf", "_onCreateActCompiled, _onDeactCompiled", [ _onCreateActCompiled, _onDeactCompiled ] ] spawn T8U_fnc_DebugLog; };

_trigger = createTrigger [ "EmptyDetector", ( getMarkerPos _marker ) ];
// _trigger = createTrigger [ "EmptyDetector", ( getMarkerPos _marker ), false ];
_trigger setTriggerActivation [ _actSide, _actType, _actRepeat ];
_trigger setTriggerArea [ _distance, _distance, 0, false ];
_trigger setTriggerStatements [ _condition, _onCreateActCompiled, _onCreateDeactCompiled ];

_trigger = createTrigger [ "EmptyDetector", ( getMarkerPos _marker ) ];
// _trigger = createTrigger [ "EmptyDetector", ( getMarkerPos _marker ), false ];
_trigger setTriggerActivation [ _actSide, _actType, _actRepeat ];
_trigger setTriggerArea [ _distance + ( _distance / 4 ), _distance + ( _distance / 4 ), 0, false ];
_trigger setTriggerStatements [ _condition, "", _onDeactCompiled ];
