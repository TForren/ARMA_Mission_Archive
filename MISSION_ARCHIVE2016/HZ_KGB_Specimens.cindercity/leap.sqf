_jumper = _this select 1;

_jumpHandl = [_jumper] spawn {
	_jumper = _this select 0;
	
	if (abs((velocity _jumper select 0)) > 7 ||
		abs((velocity _jumper select 1)) > 7 ||
		abs((velocity _jumper select 2)) > 5 ) 
		then {
			//Already junping. Don't do anything
		
	}
	else { //not jumping. Jump now
		[_jumper, "jump", 10] call CBA_fnc_globalSay3d;
		sleep 0.02;
		_jumper setVelocity [
			((velocity _jumper) select 0) + (sin (direction _jumper) * 10), 
			((velocity _jumper) select 1) + (cos (direction _jumper) * 10), 
			((velocity _jumper) select 2) + 10
		];
		
		 if (random 1 > 0.40) then //chance to yell
		 {
			[_jumper, (["Cheeki3","Cheeki7","Cheeki9","Cheeki9","Cheeki10","Cheeki8"] call BIS_fnc_selectRandom),60] call CBA_fnc_globalSay3d;
		 };
		
	};//end jumping check

	if (true) exitWith {};
};