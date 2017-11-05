if (!isServer) exitWith {}; //Fuck off, clients. This is no place for your kind.

[_this select 0] spawn {
private _params = _this select 0;
private _trig = _params select 0;
private _iedCount = _params select 1;
private _fakeIedCount = _params select 2;
private _burryArray = _params select 3;

_iedPool = ["ACE_Explosives_Place_IEDLandSmall", "ACE_Explosives_Place_IEDLandBig","ACE_Explosives_Place_IEDUrbanBig",
"ACE_Explosives_Place_IEDUrbanSmall"];

_explosions = ['R_60mm_HE','R_60mm_HE','R_80mm_HE','ACE_Hellfire_AGM114K','HelicopterExploSmall'];

spawnedIEDs = [];

//_possibleCivs = [];

/*
 
Bomb_03_F
Bomb_04_F
R_60mm_HE
R_80mm_HE
*/

//setup actual ieds
for [{_i=0}, {_i<_iedCount}, {_i=_i+1}] do
{
	_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
	_chosenIED = _iedPool call BIS_fnc_selectRandom;
	_chosenExplosion = _explosions call BIS_fnc_selectRandom;
	
	_IED = _chosenIED createvehicle _randomLoc;
	
	systemchat format ["_burryArray: %1", _burryArray];
	//determine how burried it is and burry it
	_burriedAmount = random( (_burryArray select 1) ) + (_burryArray select 0);
	_IED enableSimulation false;
	_IED setpos [(getpos _IED select 0), (getpos _IED select 1), 0 - _burriedAmount];
	
	_IEDHandle = [_IED,_chosenExplosion] spawn {
			_notDud = true;
			_IED = _this select 0;
			_chosenExplosion = _this select 1;
			
			_trg = createTrigger ["EmptyDetector", getPos _IED];
			_trg setTriggerArea [14, 14, 0, false];
			_trg setTriggerActivation ["WEST", "PRESENT", true];
			_trg setTriggerStatements ["this", "", ""];
			
			while {_notDud} do {
				if (TriggerActivated _trg) then {
					_blownUp = false;
					if (random 1 < 0.90) then { //10 percent chance of complete dud (no ring)
						[_IED, (["cellphone01","cellphone02","cellphone03","cellphone04","cellphone05"] call BIS_fnc_selectRandom),50] call CBA_fnc_globalSay3d;
						
						sleep ((random 4) + 1.7);
						
						if (random 1 < 0.6) then { //not dud
							_boom = _chosenExplosion createVehicle getpos _ied;
							_boom setVectorUp[0,10,1];
							deletevehicle _ied;
							if (!isNil "_hider") then {deleteVehicle _hider;};
						}else { //partial dud	
							_notDud = false;
						};//end partial dud check
					};//end Complete Dud check
					
					if ((random 1 < 0.5) && !_blownUp) then { //late explosion
						sleep (10 + random 10);
						_boom = _chosenExplosion createVehicle getpos _ied;
						_boom setVectorUp[0,10,1];
						deletevehicle _ied;
						if (!isNil "_hider") then {deleteVehicle _hider;};
					};//end late arrival explode check
					
				};//end trig active check
				sleep 0.1;
			};
		};
		spawnedIEDs = spawnedIEDs + [_IED];
};


//setup fake ieds
for [{_i=0}, {_i<_iedCount}, {_i=_i+1}] do
{
	_randomLoc = [[_trig]] call HZ_fnc_randomLoc;
	
};

	if (true) then {
		{
			_txt=format["iedMkr%1",_x];
			_debugMkr=createMarker [_txt,getpos _x];
			_debugMkr setMarkerShape "ICON";
			_debugMkr setMarkerType "mil_destroy";
			_debugMkr setMarkerColor "ColorRed";
		} foreach spawnedIEDs;	
	};


};