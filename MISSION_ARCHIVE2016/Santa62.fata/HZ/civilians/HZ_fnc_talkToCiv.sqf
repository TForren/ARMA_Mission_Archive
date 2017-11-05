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

_boom = [_unit] spawn {
	_unit = _this select 0;		
	[_unit, "preExplosion",100] call CBA_fnc_globalSay3d;
	_unit customChat [civChatChannel, "Allahu Akbar! Allahu Akbar! Allahu Akbar!"];
};

civChatChannel radioChannelRemove [_unit, _caller];
	


