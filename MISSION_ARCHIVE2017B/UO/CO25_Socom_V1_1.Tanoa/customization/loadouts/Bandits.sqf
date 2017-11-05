
#define package "Bandit_"

	
case (package + "Sniper"): {
	
	["U_B_T_FullGhillie_tna_F"] call FNC_AddItem;
	["V_Chestrig_rgr"] call FNC_AddItem;

	["H_Bandanna_sand"] call FNC_AddItem;

	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ItemRadio"] call FNC_AddItem;

	["10Rnd_9x21_Mag",2,"uniform"] call FNC_AddItem;
	["7Rnd_408_Mag",2,"uniform"] call FNC_AddItem;
	["SmokeShell",1,"uniform"] call FNC_AddItem;
	["FirstAidKit",1,"vest"] call FNC_AddItem;
	["7Rnd_408_Mag",5,"vest"] call FNC_AddItem;
	["10Rnd_9x21_Mag",1,"vest"] call FNC_AddItem;
	["MiniGrenade",2,"vest"] call FNC_AddItem;
	["SmokeShell",2,"vest"] call FNC_AddItem;

	["srifle_LRR_tna_F"] call FNC_AddItem;
	_unit addPrimaryWeaponItem "optic_LRPS";

	["hgun_Pistol_01_F"] call FNC_AddItem;

};

case (package + "CREW"): {

	["U_I_C_Soldier_Para_1_F"] call FNC_AddItem;
	["V_Chestrig_khk"] call FNC_AddItem;

	["H_Bandanna_cbr"] call FNC_AddItem;

	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ItemRadio"] call FNC_AddItem;

	["FirstAidKit",1,"uniform"] call FNC_AddItem;
	["30Rnd_762x39_Mag_F",2,"uniform"] call FNC_AddItem;
	["30Rnd_762x39_Mag_F",3,"vest"] call FNC_AddItem;
	["HandGrenade",2,"vest"] call FNC_AddItem;

	["arifle_AK12_F"] call FNC_AddItem;

};