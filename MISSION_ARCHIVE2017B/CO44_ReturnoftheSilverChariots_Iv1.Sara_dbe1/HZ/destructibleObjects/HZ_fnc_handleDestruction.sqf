 /*
 this addEventHandler ["HitPart",{_this call HZ_fnc_handleDestruction}];  
 
  hitpart EH ((select 0) select 6) has the following:
  [hit value, indirect hit value, indirect hit range, explosive damage, ammo class name] 
					   h ih  ir d 
	21:14:12 "Source: [20,5,3.6,1,""rhsusf_40mm_HEDP""]"
	21:15:21 "Source: [145,19,4.1,0.65,""rhs_ammo_m72a7_rocket""]"
	21:16:31 "Source: [80,50,10,1,""rhs_rshg2_rocket""]"
 */

_weaponDamage = ((_this select 0) select 6) select 0;
_weaponExplosiveRange = ((_this select 0) select 6) select 2;
_weaponExplosiveDamage = ((_this select 0) select 6) select 3;
_object = ((_this select 0) select 0);
_objectSize = sizeOf (typeOf _object);
_direct = ((_this select 0) select 10);


if ((_weaponDamage > 18) && _direct ) then {
	
	switch (true) do {
		case (_objectSize < 4): {
			["small",_object,_weaponDamage,_weaponExplosiveRange] call HZ_fnc_interpretWeaponDamage;
		};
		case ( (_objectSize >= 4) && (_objectSize < 8) ): {
			["medium",_object,_weaponDamage,_weaponExplosiveRange] call HZ_fnc_interpretWeaponDamage;
		};
		case ( (_objectSize >= 8) && (_objectSize < 12)): {
			["large",_object,_weaponDamage,_weaponExplosiveRange] call HZ_fnc_interpretWeaponDamage;
		};
		case (_objectSize >= 12): {
			["huge",_object,_weaponDamage,_weaponExplosiveRange] call HZ_fnc_interpretWeaponDamage;
		};
	};
};
//sizeOf (typeof cursortarget)
//HZ_damage