_side = _this;
_faction = "East";

_c = []; //--- Classname
_p = []; //--- Picture. 				'' = auto generated.
_n = []; //--- Name. 					'' = auto generated.
_o = []; //--- Price.
_t = []; //--- Build time.
_u = []; //--- Upgrade level needed.    0 1 2 3...
_f = []; //--- Built from Factory.
_s = []; //--- Script

//--- Infantry
_c = _c + ['OP_Ren_01_brown'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [190];
_t = _t + [5];
_u = _u + [0];
_f = _f + [CTI_FACTORY_BARRACKS];
_s = _s + [""];

_c = _c + ['OP_Ren_02_Med_brown'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [190];
_t = _t + [5];
_u = _u + [0];
_f = _f + [CTI_FACTORY_BARRACKS];
_s = _s + [""];

_c = _c + ['OP_Ren_02_Eng_brown'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [190];
_t = _t + [5];
_u = _u + [0];
_f = _f + [CTI_FACTORY_BARRACKS];
_s = _s + [""];

_c = _c + ['OP_Ren_01_AT_brown'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [225];
_t = _t + [5];
_u = _u + [0];
_f = _f + [CTI_FACTORY_BARRACKS];
_s = _s + [""];



_c = _c + ['O_Quadbike_01_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [175];
_t = _t + [10];
_u = _u + [0];
_f = _f + [CTI_FACTORY_LIGHT];
_s = _s + [""];



_c = _c + ['LRMKIV_possessed_0'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [4950];
_t = _t + [30];
_u = _u + [0];
_f = _f + [CTI_FACTORY_HEAVY];
_s = _s + [""];



_c = _c + ['O_Truck_02_box_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [425];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + ["service-repairtruck"];

_c = _c + ['O_Truck_03_repair_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [525];
_t = _t + [30];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + ["service-repairtruck"];

_c = _c + ['CTI_Salvager_East'];
_p = _p + [''];
_n = _n + ['Salvage Truck'];
_o = _o + [CTI_VEHICLES_SALVAGER_PRICE];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + [["O_Truck_03_covered_F","salvager"]];

_c = _c + ['CTI_Salvager_Independent_East'];
_p = _p + [''];
_n = _n + ['Salvage Truck'];
_o = _o + [CTI_VEHICLES_SALVAGER_PRICE];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + [["O_Truck_03_covered_F","salvager-independent"]];

_c = _c + ['O_Truck_02_fuel_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [400];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + ["service-fueltruck"];

_c = _c + ['O_Truck_03_fuel_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [500];
_t = _t + [30];
_u = _u + [0];
_f = _f + [CTI_FACTORY_REPAIR];
_s = _s + ["service-fueltruck"];


_c = _c + ['O_Truck_02_Ammo_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [450];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AMMO];
_s = _s + ["service-ammotruck"];

_c = _c + ['O_Truck_03_ammo_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [550];
_t = _t + [30];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AMMO];
_s = _s + ["service-ammotruck"];




_c = _c + ['Valkyrie_Possessed_0'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [10500];
_t = _t + [40];
_u = _u + [0];
_f = _f + [CTI_FACTORY_AIR];
_s = _s + [""];




_c = _c + ['O_Boat_Transport_01_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [850];
_t = _t + [15];
_u = _u + [0];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];

_c = _c + ['O_Boat_Armed_01_hmg_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1250];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];

_c = _c + ['O_SDV_01_F'];
_p = _p + [''];
_n = _n + [''];
_o = _o + [1000];
_t = _t + [25];
_u = _u + [0];
_f = _f + [CTI_FACTORY_NAVAL];
_s = _s + [""];

[_side, _faction, _c, _p, _n, _o, _t, _u, _f, _s] call compile preprocessFileLineNumbers "Common\Config\Units\Set_Units.sqf";
