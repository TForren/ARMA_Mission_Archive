/*HZ_fnc_setupGuards
 *  Setup an area for stealth missions
 *Takes in:
 *  [Trigger to use, faction, RTO (object), guardDelay, rtoDelay, qrfTrig ] 
 *Returns:
 *  Ambushing Hajis (doesn't return anything)
*/
if (!isServer) exitWith {};

[_this select 0] spawn {

private _params = (_this select 0);
private _trigger = _params select 0;
private _guardSide = _params select 1;
private _rto = _params select 2;
private _guardDelay = _params select 3;
private _rtoDelay = _params select 4;
private _qrfTrig = _params select 5;
private _garrisonTrig = _params select 6;
private _localObjs = _params select 7;
private _speaker = _params select 8;
private _guardArray = [];
private _guardAnims = ["STAND","KNEEL","WATCH","WATCH1","WATCH2"];
private _rtoCalled = false;
private _hqCalled = false;

[_rto] execVM "HZ\HZ_radioSounds.sqf";

/*fnc_gunFiredAlert
 * Force Alert on local RTO when gun fired
 * Takes in:
 * N/A
 * Returns:
 * Nothing
 */
fnc_gunFiredAlert = {
	_localGuards = _this select 0;
	diag_log format ["HZ: gunshot fire alerting guards: %1", str(_localGuards)];
	Systemchat format ["fired! Alerting Everyone!"];
	{
		_curGroup = _x;
		{
			_x setBehaviour "COMBAT";
			_x removeEventHandler ["Fired", 0];
		} foreach units _curGroup;
	} foreach _localGuards;
};

//collect array of all guards
{
	if (side _x == _guardSide) then {
		_guardArray = _guardArray + [_x];
		_x setskill ["spotDistance",0.4];
		_x setskill ["spotTime",0.6];
		_x setskill ["general",0.1];
		_x setVariable ["HZ_Alerted", false];
		//_x setVariable ["NOAI",true]; 
		_x setVariable ["HZ_Fired", false];
		_x setVariable ["HZ_localRTO", _rto];
		_x setVariable ["HZ_localAreaTrig",_trigger];

		
		_EHShot = _x addEventHandler ["Fired", { 
			_unit = _this select 0;
			_trig = _unit getVariable "HZ_localAreaTrig";
			_localGuards = _trig getVariable "HZ_localGuards";
			if !(_unit getVariable "HZ_Fired") then {
				[_localGuards] call fnc_gunFiredAlert;
				_unit setVariable ["HZ_Fired", true];
			} else {
				_unit removeEventHandler ["Fired", 0];
			};
			
		}]; //end EH
		
		//[_x, [1,0,0,1], 3, 1, nil, 3] call hyp_fnc_traceFire;
	};

} foreach list _trigger;

	[_guardArray] spawn {
		_guardArray = _this select 0;
		waitUntil{time > 5};
		 _guardAnims = ["STAND","KNEEL","WATCH","WATCH1","WATCH2"];
		 {
			if (count waypoints _x <= 1) then {
				_chosenAnim = _guardAnims call BIS_fnc_selectRandom;
				//[_x,_guardAnims call BIS_fnc_selectRandom,"FULL",{behaviour _this == "COMBAT"}] call BIS_fnc_ambientAnimCombat;
				[_x,_chosenAnim,"FULL",{behaviour _this == "COMBAT"}] remoteExec ["BIS_fnc_ambientAnimCombat", 0, true];
			};
		 } foreach _guardArray;
	};


sleep (random 2);
_qrfGroups = [[_qrfTrig,_guardSide]] call HZ_fnc_setupQRF;

_trigger setVariable ["HZ_localAreaAlerted",false];
_trigger setVariable ["HZ_localGuards",_guardArray];
_trigger setVariable ["HZ_localQRF",_qrfGroups];
_trigger setVariable ["HZ_garrisonTrig",_garrisonTrig];
_trigger setVariable ["HZ_localObjs",_localObjs];
_trigger setVariable ["HZ_localSpeaker",_speaker];
_trigger setVariable ["HZ_rtoCalled",_rtoCalled];
_trigger setVariable ["HZ_hqCalled",_hqCalled];

diag_log format ["HZ: Trigger %1 has been given values", str(_trigger)];
diag_log format ["HZ: HZ_localGuards: %1", str(_guardArray)];
diag_log format ["HZ: HZ_localQRF: %1", str(_qrfGroups)];
diag_log format ["HZ: HZ_garrisonTrig: %1", str(_garrisonTrig)];
diag_log format ["HZ: HZ_localObjs: %1", str(_localObjs)];
diag_log format ["HZ: HZ_localSpeaker: %1", str(_speaker)];


/*fnc_alertHQ
 * RTO has been made aware of enemy presence. This function runs to increase HQ alert level
 *Takens in:
 *  rto
 *Returns:
 *  N/A
*/
fnc_alertHQ = {
	_rto = _this select 0;
	_rtoLoc = getpos _rto;
	HQAlertLevel = HQAlertLevel + 1;
	alertLocations = alertLocations + [_rtoLoc];
	publicVariable "HQAlertLevel";
	publicVariable "alertLocations";
	
	hint format ["Enemy HQ Alert Level %1", HQAlertLevel];
};//end fnc_alertHQ


/*fnc_callRTO
 * When a unit has been alerted and has survived long enough to make the call to the RTO
 * this function is called.
 *Takens in:
 *  RTO, rtoDelay
 *Returns:
 *  N/A
*/
fnc_callRTO = {
	_rto = _this select 0;
	_rtoDelay = _this select 1;
	_startTime = time;
	_localGuards = _this select 2;

	_trig = _rto getVariable "HZ_localAreaTrig";
	_trig setVariable ["HZ_localAreaAlerted", true];
	_trig setVariable ["HZ_rtoCalled", true];
	//immediately tell everyone
	{
		_wp = (group _x) addWaypoint [position _x, 0];
		_wp setWaypointType "MOVE";
		//_x setVariable ["NOAI",1, false];
		_x setVariable ["HZ_Alerted", true];
		(group _x) setBehaviour "COMBAT";
		_x setskill ["spotDistance",0.3];
		_x setskill ["spotTime",0.6];
		_x setskill ["general",0.3];
	} foreach _localGuards;
	
	sleep 4.5;
	[getpos _rto] execVM "HZ\HZ_flares.sqf";
	[_trig getVariable "HZ_localSpeaker"] execVM "HZ\HZ_alarm.sqf";
	[[_trig getVariable "HZ_garrisonTrig",_trig getVariable "HZ_localObjs"]] call HZ_fnc_activateGarrison;
	
	systemChat format ["RTO called all Guards!"];
		
	_rto setBehaviour "COMBAT";
	
	//Time to alert command
	_rtoDelayHndl = [_rto,_startTime,_rtoDelay,_trig] spawn {
		_rto = _this select 0;
		_startTime = _this select 1;
		_rtoDelay = _this select 2;
		_trig = _this select 3;
		waitUntil{time >= (_startTime + _rtoDelay)};
		if (!alive _rto) then {
			systemChat format ["RTO Died before calling HQ!"];
		} else {
			if (!(_trig getVariable "HZ_hqCalled")) then {
				_trig setVariable ["HZ_hqCalled", true];
				[_rto] call fnc_alertHQ;
				systemChat format ["RTO called HQ!"];
			};
		};
	}; //end RTO to HQ Call spawn
	
};//end fnc_guardDelay


/*fnc_guardDelay
 * Function called as soon as a unit is on alert. Allows for player reaction time before RTO calls for alert status
 *Takens in:
 *  alerted unit, guardDelay
 *Returns:
 *  N/A
*/
fnc_guardDelay = {
	_unit = _this select 0;
	_guardDelay = _this select 1;
	_startTime = time;
	
	systemChat format ["Guard Alerted!"];
	
	_alertDelay = [_unit,_startTime,_guardDelay] spawn {
		_unit = _this select 0;
		_startTime = _this select 1;
		_guardDelay = _this select 2;
		waitUntil{time >= (_startTime + _guardDelay)};
		if (!alive _unit) then { //bloke died, no alert

			systemChat format ["Guard died before telling RTO!"];
			
		} else {//didn't die, alert
			_trig = _unit getVariable "HZ_localAreaTrig";
		
			if (!(_trig getVariable "HZ_rtoCalled")) then {
				_trig setVariable ["HZ_localAreaAlerted", true];
				systemChat format ["Guard calling RTO!"];
			};
		};
	};
};//end fnc_guardDelay

/* helper fnc for checking all obj are still alive */
fnc_allAlive = {
	_objs = _this select 0;
	_result = true;
	//systemchat format ["%1",str(_objs)];
	{
		if (!alive _x) then {
			_result = false;
		};
	} foreach _objs;
	_result;
};


//Detection array for every unit
_detectionLoop = [_rto, _guardDelay, _rtoDelay, _trigger,_localObjs] spawn {
	_rto = _this select 0;
	_guardDelay = _this select 1;
	_rtoDelay = _this select 2;
	_trigger = _this select 3;
	_localObjs = _this select 4;
	_localGuards = _trigger getVariable "HZ_localGuards";
	_localQRF = _trigger getVariable "HZ_localQRF";
	_detectedUnits = [];
	
	while {!(_trigger getVariable "HZ_localAreaAlerted") && ([_localObjs] call fnc_allAlive) } do {
		{
			if (behaviour _x == "COMBAT" && alive _x) then {
				if (_x == _rto) then {
					if (!(_trigger getVariable "HZ_rtoCalled")) then {
						[_x, _rtoDelay, _localGuards] call fnc_callRTO;
						[_x, "alert",80] call CBA_fnc_globalSay3d;
					};
				} else {
					if (!(_x getVariable "HZ_Alerted")) then {
						[_x, "alert",80] call CBA_fnc_globalSay3d;
						[_x,_guardDelay,_trigger] call fnc_guardDelay;
						_x setVariable ["HZ_Alerted", true];
					};
				};//end RTO check
				
			}; //end combat check
		} foreach _localGuards;
		
		sleep 2;
	}; //exit when alerted
	
	//collect blufor in trigger to tell QRF
	{
		if (side _x == west) then {
			_detectedUnits = _detectedUnits + [_x];
		};
	} foreach list _trigger;

	if (count _detectedUnits == 0) then {
		_detectedUnits = [_rto];
	};
	[[_detectedUnits,_localQRF,400]] call HZ_fnc_activateQRF;
	
	if (!(_trigger getVariable "HZ_rtoCalled")) then {[_rto, _rtoDelay, _localGuards] call fnc_callRTO};
};



if (true) exitWith {};
/*
handle = [] spawn { 
 while {true} do { 
  hint format["reldir: %1    dir: %2", (player getRelDir _house),getdir player]; 
  sleep 0.25; 
 }; 
}; 
*/

}; //end spawn block