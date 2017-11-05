["CAS Rearm", "A script for reloading CAS aircraft.", "TinfoilHate"] call FNC_RegisterModule;

//_ret = [this,["rhs_weap_CMFlareLauncher","RHS_weap_zpl20","rhs_weap_s5","rhs_weap_fab250"],["rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250","rhs_mag_ub16_pod","rhs_mag_plamen_pod","rhs_mag_s5_16","120Rnd_CMFlare_Chaff_Magazine","rhs_mag_20x102_hei_210"],60] spawn casRearm_fnc_aircraft;

//_ret = [this,["rhs_weap_CMFlareLauncher","RHS_Weap_GSh23Lx2","rhs_weap_fab250"],["rhs_mag_upk23_pod","rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250","rhs_mag_fab250","rhs_mag_AM23_500","168Rnd_CMFlare_Chaff_Magazine"],60] spawn casRearm_fnc_aircraft;

//_ret = [this,(this weaponsTurret [-1]),(this magazinesTurret [-1]),60] spawn casRearm_fnc_aircraft;

	casRearm_fnc_aircraft = {
		_aircraft = _this select 0;
		_weapons = _this select 1;
		_loadout = _this select 2;
		_rearmTime = _this select 3;

		if (isServer) then {
			_aircraft setVariable ["casRearm_weps",_weapons,true];
			_aircraft setVariable ["casRearm_mags",_loadout,true];
			_aircraft setVariable ["casRearm_time",_rearmTime,true];

			[{
				_plane = _this select 0;
				_weps = _plane getVariable "casRearm_weps";
				_mags = _plane getVariable "casRearm_mags";

				{_plane removeWeaponTurret [_x,[-1]]} forEach (_plane weaponsTurret [-1]);
				{_plane removeMagazineTurret [_x,[-1]]} forEach (_plane magazinesTurret [-1]);

				{_plane addMagazineTurret [_x,[-1]]} forEach _mags;

				_plane setVariable ["casRearm_tempWeps",_weps,false];
				[{
					_array = _this select 0;
					_plane = _array select 0;
					_weps = _array select 1;

					{
						if !(_x in (_plane weaponsTurret [-1])) then {
							_plane addWeaponTurret [_x,[-1]];

							_weps = _weps - [_x];
						};
					} forEach _weps;
					_plane setVariable ["casRearm_tempWeps",_weps,false];

					if (count _weps == 0) then {[_this select 1] call CBA_fnc_removePerFrameHandler; _plane setVariable ["casRearm_tempWeps",null,false];};
				}, 0, [_plane,_plane getVariable "casRearm_tempWeps"]] call CBA_fnc_addPerFrameHandler;
			}, [_aircraft], 1] call CBA_fnc_waitAndExecute;

			casRearm_fnc_airRearm = {
				_trig = thisTrigger;
				_trigProgress = _trig getVariable "casRearm_var_inProgress";

				if (isNil "_trigProgress") then {_trig setVariable ["casRearm_var_inProgress",false,false]};
				if (_trigProgress) exitWith {};

				_plane = _trig;
				{
					if (_x isKindOf "Air") exitWith {_plane = _x};
				} forEach thislist;

				if (_plane == _trig) exitWith {};

				_weps = _plane getVariable "casRearm_weps";
				_mags = _plane getVariable "casRearm_mags";
				_time = _plane getVariable "casRearm_time";
				_qart = _time / 4;

				_trig setVariable ["casRearm_var_inProgress",true,false];

				_pilot = driver _plane;

				["casRearm_event_airRearm_setFuel", [_plane,0], driver _plane] call CBA_fnc_targetEvent;
				["casRearm_event_airRearm_setVel", [driver _plane,[0,0,0]], driver _plane] call CBA_fnc_targetEvent;

				["casRearm_event_airRearm_ack", ["Beginning rearm process..."], _pilot] call CBA_fnc_targetEvent;

				[{
					["casRearm_event_airRearm_ack", ["Rearm: 25% Complete"], _this] call CBA_fnc_targetEvent;
				}, _pilot, _qart] call CBA_fnc_waitAndExecute;

				[{
					["casRearm_event_airRearm_ack", ["Rearm: 50% Complete"], _this] call CBA_fnc_targetEvent;
				}, _pilot, (_qart * 2)] call CBA_fnc_waitAndExecute;

				[{
					["casRearm_event_airRearm_ack", ["Rearm: 75% Complete"], _this] call CBA_fnc_targetEvent;
				}, _pilot, (_qart * 3)] call CBA_fnc_waitAndExecute;

				[{
					private ["_plane","_pilot"];

					_plane = _this select 0;
					_pilot = _this select 1;

					_plane setDamage 0;

					["casRearm_event_airRearm_setMagazines", [_plane]] call CBA_fnc_globalEvent;
					["casRearm_event_airRearm_setFuel", [_plane,1]] call CBA_fnc_globalEvent;
					["casRearm_event_airRearm_ack", ["Rearm: 100% Complete"], _pilot] call CBA_fnc_targetEvent;
				}, [_plane,_pilot], _time] call CBA_fnc_waitAndExecute;

				[{!((_this select 0) in list (_this select 1))}, {
					(_this select 1) setVariable ["casRearm_var_inProgress",false,false];
				}, [_plane,_trig]] call CBA_fnc_waitUntilAndExecute;
			};
		};
	};

	casRearm_fnc_airRearm_ack = {
		_msg = _this select 0;
		hint format["%1",_msg];
	};
	["casRearm_event_airRearm_ack", casRearm_fnc_airRearm_ack] call CBA_fnc_addEventHandler;

	casRearm_fnc_airRearm_setVel = {
		_pilot = _this select 0;
		_vel = _this select 1;

		(vehicle _pilot) setVelocity _vel;
	};
	["casRearm_event_airRearm_setVel", casRearm_fnc_airRearm_setVel] call CBA_fnc_addEventHandler;

	casRearm_fnc_airRearm_setFuel = {
		_plane = _this select 0;
		_fuelLevel = _this select 1;

		_plane setFuel _fuelLevel;
	};
	["casRearm_event_airRearm_setFuel", casRearm_fnc_airRearm_setFuel] call CBA_fnc_addEventHandler;

	casRearm_fnc_airRearm_setMagazines = {
		_plane = _this select 0;
		_mags = _plane getVariable "casRearm_mags";

		{_plane removeMagazineTurret [_x,[-1]]} forEach (_plane magazinesTurret [-1]);

		{_plane addMagazineTurret [_x,[-1]]} forEach _mags;
	};
	["casRearm_event_airRearm_setMagazines", casRearm_fnc_airRearm_setMagazines] call CBA_fnc_addEventHandler;