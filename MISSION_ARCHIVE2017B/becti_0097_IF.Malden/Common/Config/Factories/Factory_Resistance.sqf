private ["_side", "_u"];

_side = _this;

missionNamespace setVariable [format["CTI_%1_Diver", _side], "I_diver_f"];
missionNamespace setVariable [format["CTI_%1_Soldier", _side], "rhsgref_ins_g_rifleman_aksu"];
missionNamespace setVariable [format["CTI_%1_Crew", _side], "rhsgref_ins_g_pilot"];
missionNamespace setVariable [format["CTI_%1_Pilot", _side], "rhsgref_ins_g_pilot"];
missionNamespace setVariable [Format["CTI_%1FLAG", _side], "\A3\Data_F\Flags\Flag_AAF_CO.paa" ];