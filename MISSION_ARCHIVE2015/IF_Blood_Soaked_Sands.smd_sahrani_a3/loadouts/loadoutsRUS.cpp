class RUS {
// Example: [this,"RUS","PC"] call tb3_fLoadout; [this, class, loadout]	
// Russian OpFor Gear Script by Jords
// Info:
// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
	//Pistol
	#define pistol "RH_cz75"
	#define pistolmag "RH_16Rnd_9x19_CZ"
	#define pistolLight "RH_A26"

							
	// Grenades
	#define grenade "rhs_mag_rgd5"

	//=== MISC ===

	//Chemical lights
	#define chemred "Chemlight_red"

	// AGM equipment - what everyone should have
	#define agm_default	{"ACE_fieldDressing",2}, \
						{"ACE_morphine",1}, \
						{"ACE_EarPlugs",1}

	//Other AGM
	#define agm_epipen "ACE_epinephrine" // For PC, SL, FTL
	#define agm_sparebarrel "ACE_SpareBarrel"
	#define agm_defuse "ACE_DefusalKit"
	#define agm_firing_device "ACE_Clacker"
	#define cable_tie "ACE_CableTie"
	#define nana "ACE_Banana"

	//Double Misc
	#define toolkit "ToolKit"
	#define explosive "DemoCharge_Remote_Mag"
	#define at_mine "rhs_mine_tm62m_mag"
	#define ap_mine "rhs_mine_pmn2_mag"
	#define minedetector "MineDetector"
	#define binoculars "Binocular"

	//Radio 
	#define long_range "tf_fadak" //Long range - Short-wave
			
	//=== Clothes ===

	//Uniform		
	#define default_uniform "rhs_uniform_emr_patchless"

	//Headgear
	#define leader_headgear "rhs_fieldcap", "rhs_fieldcap_helm_digi", "rhs_fieldcap_helm", "rhs_fieldcap_digi", "rhs_fieldcap_ml"

	#define vest_leader "rhs_6sh46", "rhs_fieldcap_ml", "RNR_p2_ak_black"

	//Face
	#define facecover "rhs_scarf"

	//=== EQUIPMENT ===
	//MUST BE ONE LINE
	#define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_fadak","ItemWatch" //With GPS
	#define default_equipment "ItemMap","ItemCompass","tf_fadak","ItemWatch"

	//========================Class Loadouts Definitions========================
	//================Patrol==================
	class PAT {
		weapons[] = {pistol,binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{pistolmag,3}
			};
			uniformItems[] = {
				agm_default,
				{agm_epipen,1}
			};
		goggles[] = {""};
		vest[] = {vest_leader};
			vestMagazines[] = {
			};
			vestItems[] = {
				{cable_tie, 2},
				{"ACE_HandFlare_Red", 4}
			};
		assignedItems[] = {leader_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {"rhs_acc_pkas"};
		secKit[] = {pistolLight};
	};
	//================Patrol==================
	class PAT2 {
		weapons[] = {"hlc_rifle_aks74u",binoculars};
		magazines[] = {	}; //do not use if using specific allocation of magazines
		headgear[] = {leader_headgear};
		uniform[] = {default_uniform};
			uniformMagazines[] = {
				{"hlc_30Rnd_545x39_B_AK",4}
			};
			uniformItems[] = {
				agm_default,
				{agm_epipen,1}
			};
		goggles[] = {""};
		vest[] = {vest_leader};
			vestMagazines[] = {
			};
			vestItems[] = {
				{cable_tie, 2},
				{"ACE_HandFlare_Red", 4}
			};
		assignedItems[] = {leader_equipment};
		items[] = {	}; //do not use if using specific allocation of items
		
		priKit[] = {};
		secKit[] = {pistolLight};
	};

};
		

		
