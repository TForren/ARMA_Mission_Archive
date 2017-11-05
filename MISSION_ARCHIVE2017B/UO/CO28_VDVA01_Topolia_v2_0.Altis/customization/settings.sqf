asr_ai3_main_setskills = 0;

if (isNil "BLUFOR_obj1Flag") then {BLUFOR_obj1Flag = true};
if (isNil "REDFOR_obj1Flag") then {REDFOR_obj1Flag = false};

if (isNil "REDFOR_heliLock") then {REDFOR_heliLock = true};

if (isServer) then {

	setViewDistance 2500;

	FW_TimeLimit = 120;
	FW_TimeLimitMessage = "TIME LIMIT REACHED!";

	[east, "VDV", "player"] call FNC_AddTeam;
	[resistance, "AAF", "ai"] call FNC_AddTeam;

	//AI Skill
	{
		if (side _x == east) then {
			_x setskill ["aimingAccuracy",0.2];
			_x setskill ["aimingShake",0.3];
			_x setskill ["aimingSpeed",0.8];
			_x setskill ["endurance",0.6];
			_x setskill ["spotDistance",1.0];
			_x setskill ["spotTime",1.0];
			_x setskill ["courage",1.0];
			_x setskill ["reloadSpeed",0.6];
			_x setskill ["commanding",0.8];
		};
	} forEach (allUnits - playableUnits);
	{
		if (side _x == resistance) then {
			_x setskill ["aimingAccuracy",0.6];
			_x setskill ["aimingShake",0.5];
			_x setskill ["aimingSpeed",0.8];
			_x setskill ["endurance",1.0];
			_x setskill ["spotDistance",1.0];
			_x setskill ["spotTime",1.0];
			_x setskill ["courage",0.85];
			_x setskill ["reloadSpeed",1.0];
			_x setskill ["commanding",0.8];
		};
	} forEach (allUnits - playableUnits);
	{
		if (side _x == east && !isMultiplayer) then {
			doStop _x;
		};
	} forEach (allUnits - playableUnits);

	//NATO Markers and BFT
	[{vk_mods_markers_postInit}, {
		vk_mods_markers_gKilledType = "destroy";

		_red1 = [getMarkerPos "1PLT",east,["inf","armor","ifv"],3,1.2,[east]] call vk_fnc_addMarker;
		_red2 = [getMarkerPos "HELI",east,["rotary","medium"],0,1,[east]] call vk_fnc_addMarker;
	}] call CBA_fnc_waitUntilAndExecute;

	//[{[] execVM "customization\scripts\aiTrench.sqf"},[],5] call CBA_fnc_waitAndExecute;

	["mis_obj1_flag", {BLUFOR_obj1Flag = true; publicVariable "BLUFOR_obj1Flag"}] call CBA_fnc_addEventHandler;

	AI_PROPTROOP_2 doWatch ([getPosATL AI_PROPTROOP_2, 200, 160] call BIS_fnc_relPos);

	[{
		//BMD Ammo Limitation
		player_bmd_1 setAmmo ["AP", 8];
		player_bmd_1 setAmmo ["HE", 4];

		//BMD Cargo Crates
		["ace_addCargo", [VEH_BOX_1, player_bmd_1, 1]] call CBA_fnc_localEvent;

		//Disabled Truck
		//AI_PROP_IFV setDamage 0.95;
		AI_PROP_IFV setHitPointDamage ["HitLFWheel",1];

		AI_PROPTROOP_1 setDamage 1;

		AI_PROP_IFV allowDamage false;

		deleteVehicle AI_PROPTROOP_2;
	},[],1] call CBA_fnc_waitAndExecute;

	[{
		AI_ARTY_1 commandArtilleryFire [position ARTYTARGET_1, "rhs_mag_HE_2a33", 15];
		AI_ARTY_2 commandArtilleryFire [position ARTYTARGET_1, "rhs_mag_HE_2a33", 15];
		AI_ARTY_3 commandArtilleryFire [position ARTYTARGET_2, "rhs_mag_HE_2a33", 15];
		AI_ARTY_4 commandArtilleryFire [position ARTYTARGET_2, "rhs_mag_HE_2a33", 15];
		AI_ARTY_5 commandArtilleryFire [position ARTYTARGET_3, "rhs_mag_HE_2a33", 15];
		AI_ARTY_6 commandArtilleryFire [position ARTYTARGET_3, "rhs_mag_HE_2a33", 15];

		REDFOR_heliLock = false; publicVariable "REDFOR_heliLock";
	},[],600] call CBA_fnc_waitAndExecute;

	[{REDFOR_heliLock}, {PLAYER_HELI_1 lock 2}, []] call CBA_fnc_waitUntilAndExecute;
	[{!REDFOR_heliLock}, {PLAYER_HELI_1 lock 0}, []] call CBA_fnc_waitUntilAndExecute;
};

if (!isDedicated) then {

	FW_DebugMessagesEnabled = false;
	FW_RespawnTickets = 1;

	setViewDistance 2500;

	lynx_pilots = [];
	lynx_attack	= [];
	lynx_crew	= [];

	if (!isNil "PILOT_1") then {lynx_pilots set [count lynx_pilots,PILOT_1]};
	if (!isNil "PILOT_2") then {lynx_pilots set [count lynx_pilots,PILOT_2]};
	if (!isNil "PILOT_3") then {lynx_pilots set [count lynx_pilots,PILOT_3]};
	if (!isNil "PILOT_4") then {lynx_pilots set [count lynx_pilots,PILOT_4]};

	if (!isNil "FAC") then {
		{
			lynx_attack set [count lynx_attack,_x];
		} forEach lynx_pilots;
		lynx_attack set [count lynx_attack,FAC];
	};

	if (!isNil "IFV_CREW_1") then {lynx_crew set [count lynx_crew,IFV_CREW_1]};
	if (!isNil "IFV_CREW_2") then {lynx_crew set [count lynx_crew,IFV_CREW_2]};

	if !(player in lynx_attack) then {
		"AA_THREAT_1" setMarkerAlphaLocal 0;
		"AA_THREAT_2" setMarkerAlphaLocal 0;
		"AA_THREAT_3" setMarkerAlphaLocal 0;
		"AA_THREAT_4" setMarkerAlphaLocal 0;
	};

	if (player in lynx_pilots || player in lynx_crew) then {
		[{_this setVariable ["FW_Loadout", "VDV_RIFLEMAN", true]},player,10] call CBA_fnc_waitAndExecute;
	};

	[{REDFOR_heliLock}, {PLAYER_HELI_1 lock 2}, []] call CBA_fnc_waitUntilAndExecute;
	[{!REDFOR_heliLock}, {PLAYER_HELI_1 lock 0}, []] call CBA_fnc_waitUntilAndExecute;

	if (didJIP) then {
		[{!isNull player}, {
			if (player in lynx_crew) then {
				if (alive PLAYER_BMD_1 && canMove PLAYER_BMD_1) then {
					player setPosATL (getPosATL fw_east_respawn);
				} else {
					player setPosATL (getPosATL fw_east_respawn);
					[player, "VDV_RIFLEMAN", "1SEC"] call FNC_GearScript;
				};
			} else {
				[{!isNull player}, {
					player setPosATL (getPosATL fw_east_respawn);
				}, []] call CBA_fnc_waitUntilAndExecute;
			};

			if (player in lynx_pilots) then {
				if (alive PLAYER_HELI_1 && canMove PLAYER_HELI_1) then {
					player moveInAny PLAYER_HELI_1;
				} else {
					player setPosATL (getPosATL fw_east_respawn);
					[player, "VDV_RIFLEMAN", "Borov"] call FNC_GearScript;
				};
			};
		}, []] call CBA_fnc_waitUntilAndExecute;
	};

	execVM "customization\custom_actions.sqf";
};