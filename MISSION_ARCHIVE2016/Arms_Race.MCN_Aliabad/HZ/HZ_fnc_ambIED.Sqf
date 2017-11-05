if (!isServer) exitWith {} ; //Fuck off, clients. This is no place for your kind.

private ["_params"];

_iedPool = ["ACE_Explosives_Place_IEDLandSmall", "ACE_Explosives_Place_IEDLandBig","ACE_Explosives_Place_IEDUrbanBig",
"ACE_Explosives_Place_IEDUrbanSmall"];

_iedHiderPool = ["Land_popelnice","Land_Pneu","CUP_metalcrate","CUP_metalcrate_02","Land_CratesPlastic_F","Land_CratesShabby_F","Fort_Crate_wood"];

spawnedIEDs = [];

_towns = _this select 0;
//_possibleCivs = [];

/*
 

R_60mm_HE
R_80mm_HE
Bomb_03_F
Bomb_04_F
*/



/* Iterate over all the towns
 * Single town format:
 * [town, civilians, vehicles, parked, [roads] ]
 *
*/
{
	_town=(_x select 0);
	_houses=(_x select 1);
	_civCount =(_x select 2);
	_vehCount =(_x select 3);
	_parkedVehCount =(_x select 4);
	_roadPosArray=(_x select 5);

	if (random 1 < roadsideIEDChance) then {
		
		_chosenRoad = _roadPosArray call BIS_fnc_selectRandom;
		_chosenIED = _iedPool call BIS_fnc_selectRandom;
		_notDud = true;
		_hider = "";
		
		_IED = _chosenIED createvehicle 
			[(getpos _chosenRoad select 0) + (random 10 - 5) * 2,(getpos _chosenRoad select 1) + (random 10 - 5) * 2, 0];
		
		
		//See if we want to hide the IED
		if (random 1 < 0.4) then {
			_chosenHider = _iedHiderPool call BIS_fnc_selectRandom;
			_hider = _chosenHider createvehicle (getpos _IED);
			_hider setpos (getpos _IED);
		};
		
		
		_IEDHandle = [[_IED,_chosenRoad]] spawn {
			_notDud = true;
			_IED = (_this select 0) select 0;
			_chosenRoad = (_this select 0) select 0;
			
			_trg = createTrigger ["EmptyDetector", getPos _chosenRoad];
			_trg setTriggerArea [14, 14, 0, false];
			_trg setTriggerActivation ["WEST", "PRESENT", true];
			_trg setTriggerStatements ["this", "", ""];
			
			while {_notDud} do {
				if (TriggerActivated _trg) then {
					If (random 1 < 0.90) then { //complete dud
						[_IED, (["cellphone01","cellphone02","cellphone03","cellphone04","cellphone05"] call BIS_fnc_selectRandom),50] call CBA_fnc_globalSay3d;
						
						sleep (random 4 + 1.5);
						
						if (random 1 < 0.6) then { //partial dud	
							_boom = "R_60mm_HE" createVehicle getpos _ied;
							deletevehicle _ied;
							if(!isNil "_hider") then {deleteVehicle _hider};
						}else {
							_notDud = false;
						};//end partial dud check
					};//end Complete Dud check
				};//end trig active check
				sleep 0.1;
			};
		};
		spawnedIEDs = spawnedIEDs + [_IED];
	}; //end random IED spawn chance
	
	if (ambCivDebug) then {
		{
			_txt=format["iedMkr%1",_x];
			_debugMkr=createMarker [_txt,getpos _x];
			_debugMkr setMarkerShape "ICON";
			_debugMkr setMarkerType "mil_destroy";
			_debugMkr setMarkerColor "ColorRed";
		} foreach spawnedIEDs;	
	};
} foreach _towns;

publicVariable "spawnedIEDs";