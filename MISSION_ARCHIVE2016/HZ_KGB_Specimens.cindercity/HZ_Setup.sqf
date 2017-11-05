//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.
FallDamage_handle = [] spawn {

	while {true} do {
		{
			if (side _x == independent) then {
				if ((getpos _x select 2 < 0.6) && ((velocity _x select 2) < -5)) then { //jumper is close to ground and falling too fast
					//slow them down to stop fall damage
					//_jumper setvelocity [(velocity _jumper select 0), (velocity _jumper select 1), -0.5];
					_x setvelocity [0, 0, -0.5];
					[_x, "land", 10] call CBA_fnc_globalSay3d;
				};//end if
				_x setfatigue 0;
			};
		} foreach allUnits;

	sleep 0.01;
	};//end while
		
}; //end handle spawn


ammo_handle = [] spawn {

	while {true} do {
		{
			if (side _x == independent) then {
				if ((primaryweapon _x == "rhs_weap_pkp") && (({_x == "rhs_100Rnd_762x54mmR"} count magazines _x) < 2)) then {
					_x addmagazine "rhs_100Rnd_762x54mmR";
				};
				if ((primaryweapon _x == "CUP_sgun_Saiga12K")) then {
					if (({_x == "CUP_8Rnd_B_Saiga12_74Pellets_M"} count magazines _x) < 2) then {
						_x addmagazine "CUP_8Rnd_B_Saiga12_74Pellets_M";
					};
					if (({_x == "rhs_mag_rgd5"} count magazines _x) < 2) then {
						_x addmagazine "rhs_mag_rgd5";
					};
				};
				if ((primaryweapon _x == "CUP_srifle_ksvk") && (({_x == "CUP_5Rnd_127x108_KSVK_M"} count magazines _x) < 2)) then {
					_x addmagazine "CUP_5Rnd_127x108_KSVK_M";
				};

			};
		} foreach allUnits;
		
	sleep 5;
	};//end while
		
}; //end handle spawn

[] spawn { 
	while {true} do { 
		{ 
		 if (side _x == independent) then //faction to yell
		 {
			 if (random 1 > 0.80) then //chance to yell
			 {
			 [_x, (["Cheeki1", "Cheeki2","Cheeki3","Cheeki4","Cheeki5","Cheeki6","Cheeki7","Cheeki8","Cheeki9","Cheeki10"] call BIS_fnc_selectRandom),60] call CBA_fnc_globalSay3d;
			 };
		 };
		} forEach allunits;
	  sleep (random 160);
	};
};
