private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Commander", _side], "OP_Ren_01_brown"];
missionNamespace setVariable [format["CTI_%1_Worker", _side], "OP_Ren_01_brown"];

missionNamespace setVariable [format["CTI_%1_Diver", _side], "OP_Ren_01_brown"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "OP_Ren_01_brown"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "OP_Ren_01_brown"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "OP_Ren_01_brown"];
missionNamespace setVariable [format["CTI_%1_UAV_AI", _side], "O_UAV_AI"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\A3\Data_F\Flags\Flag_CSAT_CO.paa"];

missionNamespace setVariable [format["CTI_%1_Vehicles_Startup", _side], [ 
	["_1489thChimAuto", [
		["Lucius98LasgunBlackG", 4], ["20Rnd_Agrip_mag_Tracer", 50],
		["MissileLauncherDKOKBlack", 3], ["MLAT_Mag", 12], ["MLHE_Mag", 12]
	]],
	["_1489thChimAuto", [
		["Lucius98LasgunBlackG", 4], ["20Rnd_Agrip_mag_Tracer", 50],
		["MissileLauncherDKOKBlack", 3], ["MLAT_Mag", 12], ["MLHE_Mag", 12]
	]]
]];

//--- Units - Barracks
_u 			= ["OP_Ren_01_brown"];
_u = _u		+ ["OP_Ren_02_Med_brown"];
_u = _u		+ ["OP_Ren_02_Eng_brown"];
_u = _u		+ ["OP_Ren_01_AT_brown"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_BARRACKS], _u];

_u 			= ["O_Quadbike_01_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_LIGHT], _u];

_u 			= ["LRMKIV_possessed_0"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_HEAVY], _u];

_u 			= ["Valkyrie_Possessed_0"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AIR], _u];

_u 			= ["O_T_Truck_02_box_F"];
_u = _u		+ ["CTI_Salvager_East"];
_u = _u		+ ["O_T_Truck_02_fuel_F"];
_u = _u		+ ["O_T_Truck_03_repair_F"];
_u = _u		+ ["O_T_Truck_03_fuel_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_REPAIR], _u];

_u 			= ["O_Truck_02_Ammo_F"];
_u = _u		+ ["O_Truck_03_ammo_F"];
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_AMMO], _u];

_u 			= ["O_Boat_Transport_01_F"];
_u = _u		+ ["O_Boat_Armed_01_hmg_F"];
_u = _u		+ ["O_SDV_01_F"];
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
	_u = _u		+ ["O_engineer_F"];
	_u = _u		+ ["O_medic_F"];
        _u = _u		+ ["O_Soldier_F"];
};
missionNamespace setVariable [format ["CTI_%1_%2Units", _side, CTI_DEPOT], _u];