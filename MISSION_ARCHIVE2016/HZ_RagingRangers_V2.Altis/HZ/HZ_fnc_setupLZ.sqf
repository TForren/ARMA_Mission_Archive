/*
By Hoizen
HZ_fnc_setupLZ
positions the house and objective in the house randomly.

====REQUIRED EDEN STUFF====
objective: some inside-friendly object
objectiveBuilding: some building with interiors
[objTrig1,objTrig2,...]: all triggers to be used as the area to determine possible location
===========================

uh 12 seats
mi 14 seats
*/
[] spawn {


waitUntil{!isNil "paramsArray"};
_lzDist = (paramsArray select 0); //distance from lz to obj
_ipDist = (paramsArray select 1); //distance from ip to lz
_building = objectiveBuilding;

//create all things needed
_objRef = "Sign_Sphere25cm_F" createvehicle (getpos _building);
_lzRef = "Sign_Sphere25cm_F" createvehicle (getpos _building);
_ipRef = "Sign_Sphere25cm_F" createvehicle (getpos _building);


/*deployHelos
moves helos to their appropriate IPs and spawns their movement orders
INPUT: [[helo1,helo2], ipRef, lzRef, lzMarker] 
OUTPUT: true
*/
HZ_fnc_deployHelos = {
	_params = _this select 0;
	_helos = _params select 0;
	_helo1 = _helos select 0;
	_helo2 = _helos select 1;
	_ip = _params select 1;
	_lz = _params select 2;
	//_lzMarker = _params select 3;
	
	_helo1 setpos [((getpos _ip) select 0) - 40, ((getpos _ip) select 1) - 40, ((getpos _ip) select 2) + 60];
	_helo2 setpos [((getpos _ip) select 0) + 40, ((getpos _ip) select 1) + 40, ((getpos _ip) select 2) + 60];
	
	//_lzMarker setMarkerPos (getpos _lz);
	_pass = 0; //needed to spread out LZ placement
	{
		_heloHandle = [[_x,_ip, _lz, _pass]] spawn { //_x is individual helo
			_params = _this select 0;
			_helo = _params select 0;
			_ip = _params select 1;
			_home = getpos _ip;
			_lz = _params select 2;
			_pass = _params select 3;
			
			(group _helo) setBehaviour "COMBAT";
			(group _helo) setSpeedMode "NORMAL";
			(group _helo) setCombatMode "BLUE";
			_helo flyinHeight 20;
			_lzPos = [(getpos _lz select 0) + (_pass * 30),(getpos _lz select 1) + (_pass * 30), 0];
			//_lzPos = getpos _lz;
			_helipad = "Land_HelipadEmpty_F" createvehicle _lzPos; //  Land_HelipadSquare_F
			_wp1 = (group _helo) addWaypoint [_lzPos , 0];
			_wp1 setWaypointType "MOVE";
			
			waitUntil {(_helo distance _lz) < 200 || ((speed _helo < 3) && (time > 20))};
			
			_freezer = "Sign_sphere10cm_EP1" createvehicle (getpos _helo); 
			_freezer setpos getpos _helo; 
			_freezer setdir getdir _helo;
			_freezer setvectorup [0,0,1]; 
			_helo attachto [_freezer, [0,0,2.5]]; 
			 while {getpos _helo select 2 > 0.5} do { 
				_newHeight = (getpos _freezer select 2) - 0.2; 
				_freezer setpos [(getpos _freezer select 0),(getpos _freezer select 1),_newHeight]; 
				sleep 0.01; 
			 }; 
			//eject all crew
			_ignore = 0; //ignore first 4 duders. those are AI crew
			{
				if (_ignore > 3) then {
					_x action ["GetOut", _helo]; 
					_x action ["EJECT", _helo];
					unassignVehicle _x;
					sleep 1;
				};
				_ignore = _ignore + 1;
			} foreach crew _helo;
			
			sleep 5; //wait a bit on the ground just in case..
			while {getpos _helo select 2 < 30} do { 
				_newHeight = (getpos _freezer select 2) + 0.2; 
				_freezer setpos [(getpos _freezer select 0),(getpos _freezer select 1),_newHeight]; 
				sleep 0.01; 
			 }; 
			detach _helo; //unfreeze
			deletevehicle _freezer;
			sleep 5;
			//hint "Leaving...";
			_wp2 = (group _helo) addWaypoint [_home, 0,1];
			_wp2 setWaypointType "MOVE";

			waitUntil {((_helo distance _home) < 200) || (time > 300)};
			{deletevehicle _x;} foreach crew _helo;
			deletevehicle _helo;
		}; //end spawn
		
	_pass = _pass + 1;
	} foreach _helos;
	
true;
}; //end Deploy Helo

_objRef setDir (random 360);
_lzRef attachTo [_objRef, [0, _lzDist, 0] ]; 
_ipRef attachTo [_lzRef, [0, _ipDist, 0] ]; 
detach _ipRef;
detach _lzRef;
BluforLZ = getpos _lzRef;
PublicVariable "BluforLZ";
_ipRef setpos [(getpos _ipRef select 0),(getpos _ipRef select 1),0]; //get it on ground level


[[[bluhelo2,bluhelo1],_ipRef,_lzRef]] call HZ_fnc_deployHelos;

sleep 0.5;

_lzRef attachTo [_objRef, [0, -(_lzDist), 0] ]; 
_ipRef attachTo [_lzRef, [0, -(_ipDist), 0] ]; 
detach _ipRef;
OpforLZ = getpos _lzRef;
PublicVariable "OpforLZ";
_ipRef setpos [(getpos _ipRef select 0),(getpos _ipRef select 1),0]; //get it on ground level

[[[ophelo1,ophelo2],_ipRef,_lzRef]] call HZ_fnc_deployHelos;

//Flip the fucker right side up if he flips upside down.
{
	[_x] spawn {
		_x = _this select 0;
		while {alive _x} do {
			if (vectorUp _x select 2 < 0) then {
				_x setVectorUp [0,0,1];
			};
		sleep 3;
		};
	};
} foreach [bluhelo2,bluhelo1,ophelo2,ophelo1];


deletevehicle _objRef;

}; //end big ol spawn
