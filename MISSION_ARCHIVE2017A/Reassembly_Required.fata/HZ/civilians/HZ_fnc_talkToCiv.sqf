_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;

if (side _caller == east) exitWith {};

_chosenQuestion = Questions call BIS_fnc_selectRandom;
civChatChannel radioChannelAdd [_unit, _caller];
_caller customChat [civChatChannel, _chosenQuestion];
[_caller, "hello",80] call CBA_fnc_globalSay3d; 
randomRoll = random(100);
_nul = _unit remoteExec [ "removeAllActions", 0, true ];

sleep 2 + (random 1);

//Takes in a location [x,y,z] and returns the nearest town name

HZ_fnc_nearestTown = {
  _closesttown = (nearestLocations [_this,["NameCityCapital","NameCity","NameVillage"],10000]) select 0;
  _townName = text _closesttown;
  _townName;
};

if (randomRoll < 5) then { //worst roll < 5
	_boom = [_unit] spawn {
		_unit = _this select 0;		
		_unit addRating -20000;
		[_unit, "preExplosion",100] call CBA_fnc_globalSay3d;
		_unit customChat [civChatChannel, "Allahu Akbar! Allahu Akbar! Allahu Akbar!"];
		
		sleep (3 + random 3);
		if (alive _unit) then {
			_possibleExplosions = ["R_60mm_HE","R_80mm_HE","HelicopterExploSmall"];
			_boom = (_possibleExplosions call BIS_fnc_selectRandom) createvehicle (getpos _unit);
		};
	}; //spawn
} else {
	if (randomRoll > 5 && (randomRoll < 20)) then { //bad roll 5 - 20
		[_unit, "preExplosion",100] call CBA_fnc_globalSay3d;
		_unit customChat [civChatChannel, "Allahu Akbar! Allahu Akbar! Allahu Akbar!"];
		_unit addRating -20000;
		// <params1> someScriptCommand <params2>;
		[_unit, "rhs_mag_9x18_8_57N181S"] remoteExec ["addMagazine", 2, false];
		[_unit, "rhs_weap_makarov_pm"] remoteExec ["addWeapon", 2, false];
		_unit doFire _caller;
	} else {
		if (randomRoll > 5 && randomRoll < 50) then { //alright roll 20 - 50
			_randX = 500 - (random 1000);
			_randY = 500 - (random 1000);
			_guessLoc = ammotruck modelToWorld [_randX, _randY, 0];
			_guessName = _guessLoc call HZ_fnc_nearestTown;
			
			_unit customChat [civChatChannel, format ["I think it was nearby %1",_guessName]];
		} else {
			if (randomRoll < 90) then { //Good roll 50 - 90
				_randX = 200 - (random 400);
				_randY = 200 - (random 400);
				_guessLoc = ammotruck modelToWorld [_randX, _randY, 0];
				_guessName = _guessLoc call HZ_fnc_nearestTown;
				
				_unit customChat [civChatChannel, format ["It was nearby %1",_guessName]];
			} else { //best roll > 90
				_guessName = (getpos ammotruck) call HZ_fnc_nearestTown;
				_unit customChat [civChatChannel, format ["It is near %1. I know it.",_guessName]];
			}; //good
		}; //alright
	}; //bad
}; //worst
civChatChannel radioChannelRemove [_unit, _caller];
	


