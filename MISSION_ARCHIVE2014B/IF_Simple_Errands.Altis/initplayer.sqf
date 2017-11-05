//------------------------------
// Script: initplayer.sqf
// Writer: Cuel
// Created: 2013-03-10
// Edited: 2013-03-14
//------------------------------

[] call compile preProcessFileLineNumbers "scripts\grenadeStop.sqf";
CUL_fn_Equip = {

	if (backpack player != "") then {removeBackPack player};
	switch (side player) do {
		case blufor: {
			"respawn_east" setmarkeralphalocal 0;
			if (str player != "vip") then {
				(group player) setGroupID  ["Team Shield"];
				cul_mags = [["30Rnd_65x39_caseless_mag",8],["SmokeShellGreen",1]];
				cul_wep = ["arifle_MX_F"];
				if ((str player) in ["s1","s2","s3","s4","s5","s6"]) then {
					player additem "itemGPS";
					player assignItem "itemGPS";
				}else{
				};
			}else{
					player addUniform "U_C_Poloshirt_redwhite";
					player addHeadGear "H_Cap_blu";
					player addVest "V_TacVest_khk";
					player additem "itemGPS";
					player assignItem "itemGPS";
					cul_mags = [["SmokeShellBlue",2]]; cul_wep = [];
					[] spawn {
					while {alive player} do {
							waitUntil {uniform player != "U_C_Poloshirt_redwhite" || headGear player != "H_Cap_blu" || vest player != "V_TacVest_khk"};
							{deleteVehicle _x} forEach (nearestObjects[player,["WeaponHolder"],3]);
							removeHeadGear player;
							removeVest player;
							removeUniform player;
							player addUniform "U_C_Poloshirt_redwhite";
							player addHeadGear "H_Cap_blu";
							player addVest "V_TacVest_khk";
						};
					};
			};
		};
		case opfor: {
			//"respawn_west" setmarkeralphalocal 0;
			{_x setMarkerColorLocal "ColorRed"; _x setMarkerTextLocal " Kill VIP"}forEach ["helimark","rogainmark","generalmark","dockmark"];
			{_x setMarkerTextLocal " Kill VIP (hostile area)"}forEach ["helimark","rogainmark"];
			player addUniform "U_OI_PilotCoveralls";
			player addHeadGear "H_HelmetO_ocamo";
			player addVest "V_PlateCarrier1_cbr";
			cul_mags = [["30Rnd_65x39_caseless_green",8],["SmokeShellRed",1]];
			cul_wep = ["arifle_Khaybar_F"];
			player additem "itemGPS";
		};
		default {cul_mags = []; cul_wep = [];};
	};
	{player addMagazines [_x select 0,_x select 1]}forEach cul_mags;
	{player addWeapon _x} forEach cul_wep;
	player addItem "FirstAidKit";
};
[] call CUL_fn_Equip;

player addEventHandler ["Respawn",{
	(_this select 1) spawn {
		sleep 3; 
		hidebody _this;
		sleep 5;
		deleteVehicle _this;
	};
	[] spawn CUL_fn_Equip;
}];

waitUntil {time > 0};
player switchMove "amovpercmstpslowwrfldnon";

[] execVM "markAssassins.sqf";
[] execVM "markBlufor.sqf";