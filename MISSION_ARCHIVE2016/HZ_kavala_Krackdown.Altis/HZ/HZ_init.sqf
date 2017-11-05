
//Clients will get these

//utility
HZ_fnc_avgUnitLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_avgUnitLoc.sqf";



//Stuff only the server will use
if (isServer) then {

HZ_fnc_randomLoc = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_randomLoc.sqf";
HZ_fnc_getBuildingPositions = compile preprocessfilelinenumbers "HZ\utility\HZ_fnc_getBuildingPositions.sqf";
HZ_fnc_populateHouse = compile preprocessfilelinenumbers "HZ\HZ_fnc_populateHouse.sqf";
HZ_fnc_garrisonContact = compile preprocessfilelinenumbers "HZ\HZ_fnc_garrisonContact.sqf";

};



[] spawn {
	_FIAGroups = [];

	{
		if (side _x == west) then {
			if !((group _x) in _FIAGroups) then {
				_FIAGroups = _FIAGroups + [group _x];
			};
		};
		
	} foreach allUnits;



	while {true} do {
		{
			if (count units _x <= (random 3)) then {
				if ((random 1 > 0.5) && (vehicle (leader _x)) == (leader _x)) then {
					{
						_x setCaptive true;
						[_x, true] call ACE_captives_fnc_setSurrendered;
					} foreach units _x;
				};
			};
		} foreach _FIAGroups;
		
		sleep 20;
	};
};

//hunters check for targets
[] spawn {
	_opfor = [];
	_hunters = [(group hunter1),(group hunter2),(group hunter3)];
	while {true} do {
		{
			if (side _x == east) then {
				if !(_x in _opfor) then {
					_opfor = _opfor + [_x];
				};
			};
		} foreach list opforHereTrig;
		
		if (count _opfor > 4) then {
			{
				_opforLoc = [[east,false]] call HZ_fnc_avgUnitLoc;
				_wp1 = _x addWaypoint [_opforLoc, 0];
			} foreach _hunters;
		};
	sleep 60;
	}
};