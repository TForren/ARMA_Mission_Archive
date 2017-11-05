
//destuction Dust
//in: object,size
//out: N/A
HZ_fnc_destructionDust = 
{
	_object = _this select 0;
	_objSize = _this select 1;
	_objectPos = (getpos _object);
	 
	_scale = [10, 12, 20];
	
	switch (_objSize) do {
		
		case "small": {
			diag_log "small Object";
		};
		
		case "medium": {
			diag_log "medium Object";

		};
		
		case "large": {
			diag_log "large Object";
			_scale = [10, 12, 20];

		};
		
		case "huge": {
			diag_log "huge Object";

		};
		
	drop [["\ca\data\particleeffects\fireandsmokeanim\smokeanim.p3d", 8, 1, 6], "", "billboard", 1, 2, [0, 0, 0], [0, 0, 0], 0, 10, 7.9, 0.5, _scale, [[0.5, 0.5, 0.5, 0.8], [0.35, 0.35, 0.35, 0.6], [0.5, 0.5, 0.5, 0]], [0], 1, 0, "", "", thingy];
		
	}; //end switch
};



//calculate radius
//in: weaponDamage, explosiveRange
//out: new radius (float)
HZ_fnc_calcRadius = {
	_weaponDamage = _this select 0;
	_exlosiveRange = _this select 1;
	_result = 1;
	
	switch (true) do {
		case (_explosiveRange <= 0): {
			_result = 1;
		};
		case ((_exlosiveRange > 0) && (_exlosiveRange < 4)): {
			_result = (_exlosiveRange / 4);
		};
		case ((_exlosiveRange >= 4) && (_exlosiveRange < 8)): {
			_result = (_exlosiveRange / 3.5);
		};
		case (_exlosiveRange >= 8): {
			_result = (_exlosiveRange / 3);
		};
	};
	
	if (_weaponDamage > SMALLDAMAGE) then {
		_result = _result * 2;
		diag_log "more than small dmg";
	} else {
		if (_weaponDamage > LARGEDAMAGE) then {
			_result = (_result * 2.5);
		};
	};
	diag_log format ["calcRadius:%1", _result];
	_result; //return
};

//destroy Area
//in: object, radius
//out: N/A
HZ_fnc_destroyArea = {
	_object = _this select 0;
	_radius = _this select 1;
	_destroy = [];
	_children = _object getVariable "HZ_linkedChildren";
	if (!isNil "_children") then {
		_destroy = _destroy + _children;
	};
	
	{
		_subChildren = _x getVariable "HZ_linkedChildren";
		if (!isNil "_subChildren") then {
			{
				deletevehicle _x;
			} foreach _subChildren;
		};
		deleteVehicle _x;
	} foreach (nearestObjects [_object, BARRICADETYPES, _radius]) + _destroy;
	deletevehicle _object;
};

//handle minor damage
//in: object, mul
//out: destroyed boolean
HZ_fnc_handleMinorDamage = {
	_object = _this select 0;
	_mul = _this select 1;
	_destroyed = false;
	
	_dmg = _object getVariable "HZ_damage";
	_newDmg = _dmg + (0.25 * _mul);
	diag_log format ["old: %1 new: %2",_dmg, _newDmg];
	_object setVariable ["HZ_damage",_newDmg];
	if (_newDmg >= 1) then {
		diag_log "object destroyed";
		_destroyed = true;
	};
	_destroyed;
};

//interpret weapon damage
//in: objectSize String (small, medium, large), object, weaponDamage, explosiveRange
//out: N/A
HZ_fnc_interpretWeaponDamage = {
	_objSize = _this select 0;
	_object = _this select 1;
	_weaponDamage = _this select 2;
	_explosiveRange = _this select 3;
	
	_radius = [_weaponDamage,_explosiveRange] call HZ_fnc_calcRadius;
	
	diag_log format ["object: %1, objectSize %2, weapDmg: %3",_object,_objectSize,_weaponDamage];
	switch (_objSize) do {
		
		case "small": {
			diag_log "small Object";
			[_object,_radius] call HZ_fnc_destroyArea;
		};
		
		case "medium": {
			diag_log "medium Object";
			if (_weaponDamage < SMALLDAMAGE) then {
				if ([_object,2] call HZ_fnc_handleMinorDamage) then {
					[_object,_radius] call HZ_fnc_destroyArea;
				};
			} else {
				[_object,_radius] call HZ_fnc_destroyArea;
			};
		};
		
		case "large": {
			diag_log "large Object";
			if (_weaponDamage < LARGEDAMAGE) then {
				if ([_object,1.4] call HZ_fnc_handleMinorDamage) then {
					[_object,_radius] call HZ_fnc_destroyArea;
				};
			} else {
				[_object,_radius] call HZ_fnc_destroyArea;
			};
		};
		
		case "huge": {
			diag_log "huge Object";
			if (_weaponDamage > LARGEDAMAGE) then {
				if ([_object,1.25] call HZ_fnc_handleMinorDamage) then {
					[_object,_radius] call HZ_fnc_destroyArea;
				};
			} else {
				if ([_object,0.8] call HZ_fnc_handleMinorDamage) then {
					[_object,_radius] call HZ_fnc_destroyArea;
				};
			};
		};
		
	}; //end switch
}; //end fnc
