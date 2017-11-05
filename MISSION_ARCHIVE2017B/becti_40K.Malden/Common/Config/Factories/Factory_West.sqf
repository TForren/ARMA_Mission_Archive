private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "DKoK_Off_1489th"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "DKoK_Off_1489th"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "B_diver_f"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "DKoK_GM_1489th"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "DKoK_GM_1489th"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "DKoK_GM_1489th"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "B_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\A3\Data_F\Flags\Flag_nato_CO.paa"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["_1490thChimAuto", [
		["Lucius98LasgunBlackG", 4], ["Lucius98_mag", 50],
		["MissileLauncherDKOKGreen", 3], ["MLAT_Mag", 12], ["MLHE_Mag", 12]
	]],
	["_1490thChimAuto", [
		["Lucius98LasgunBlackG", 4], ["Lucius98_mag", 50],
		["MissileLauncherDKOKGreen", 3], ["MLAT_Mag", 12], ["MLHE_Mag", 12]
	]]
]];

//--- Units - Barracks
_u 			= ["DKoK_GM_1489th"];
_u = _u		+ ["DKoK_Eng_1489th"];
_u = _u		+ ["DKoK_Gren_1489th"];
_u = _u		+ ["DKoK_GM_1489th_AT"];
_u = _u		+ ["DKoK_Gren_1489th_AT"];
_u = _u		+ ["DKoK_GM_1489th"];
_u = _u		+ ["DKoK_GM_WM_1489th"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["B_Quadbike_01_F"];
_u = _u		+ ["Sentinel_HB_1490th_1"];
_u = _u		+ ["Sentinel_LC_1490th_1"];
_u = _u		+ ["Sentinel_ML_1490th_1"];
_u = _u		+ ["_1490thChimAuto"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];


_u  		= ["LRMKIV_1490th_1"];

missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["Valkyrie_FP_1490th_1"];
_u = _u		+ ["Valkyrie_RP_1490th_1"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["B_Truck_01_Repair_F"];
_u = _u		+ ["CTI_Salvager_West"];
_u = _u		+ ["B_Truck_01_fuel_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["B_Truck_01_ammo_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["B_Boat_Transport_01_F"];
_u = _u		+ ["B_Boat_Armed_01_minigun_F"];
_u = _u		+ ["B_SDV_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_NAVAL], _u];

_u 			= ["C_Offroad_01_F"];
_u = _u		+ ["C_Quadbike_01_F"];
_u = _u		+ ["C_Offroad_02_unarmed_F"];
_u = _u		+ ["C_Hatchback_01_F"];
_u = _u		+ ["C_Hatchback_01_sport_F"];
_u = _u		+ ["C_SUV_01_F"];
_u = _u		+ ["C_Van_01_transport_F"];
if ((missionNamespace getVariable "CTI_UNITS_TOWN_PURCHASE") > 0) then {
 	_u = _u		+ [missionNamespace getVariable format ["CTI_%1_SOLDIER", _side]];
	_u = _u		+ ["DKoK_Eng_1489th"];
	_u = _u		+ ["DKoK_GM_1489th"];
    _u = _u		+ ["DKoK_GM_1489th"];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];