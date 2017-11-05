class MERC {
			// Example: [this,"MERC","LD"] call tb3_fLoadout; [this, class, loadout]	
			// Pirate Gear Script by Axe
			// Info:
			// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
			// - For multi line definitions use \
			// - All loadouts listed are customised to correct equipment, so have fun with them
			
			//		Infantry Loadouts
			//              LD                      - Leader
            //              RIF                     - rifleman
            //              AR                      - automatic rifleman
            //              RAT                     - rifleman (AT)
            //              MAT                     - Medium AT
            //              MATA                    - Medium AT assistant
            //              DM                        - Marksman
			//              SAP                     - Sapper (DEMO)
			//
			//		Vehicle Cargo Loadouts
			//		V_CAR		- car/4x4/jeep
			//		V_TR		- truck
			//		V_IFV		- ifv
			
			
			//========================Equipment Definitions========================
			//=== Weapons ===
			
			//Scopes
			#define marksman_scope "HLC_Optic_ZFSG1"
			#define flashlight "acc_flashlight"
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "hlc_rifle_g3ka4"
			#define riflemag "hlc_20rnd_762x51_b_G3"	
			
			//Auto-Rifleman
			#define ar "hlc_rifle_rpk"
			#define armag "hlc_75Rnd_762x39_m_rpk"
			
			//rsp
			#define rsp "rhs_weap_rsp30_red"
			
			//Rifleman AT
			#define rat "rhs_weap_M136"
			#define ratmag "rhs_m136_mag"
			
			//Medium AT
			#define mat "rhs_weap_rpg7_pgo"
			#define mat_heat_mag "rhs_rpg7_PG7VL_mag"
			#define mat_frag_mag "rhs_rpg7_OG7V_mag"
			
			//Marksman/Sniper
			#define dmr "hlc_rifle_g3a3"
			#define dmrMag "hlc_20rnd_762x51_b_G3"
									
			// Grenades
			#define grenade "rhs_mag_rgd5"
			#define smokegrenadewhite "SmokeShell"
			#define smokegrenadegreen "SmokeShellGreen"
			#define frag "HandGrenade"
			#define handflareRed "ace_HandFlare_Red"
			#define flaregreen "ace_HandFlare_Green"
			#define flarewhite "ace_HandFlare_White"
			#define flareyellow "ace_HandFlare_Yellow"
			
			//=== MISC ===
			
			//Chemical lights
			#define chemred "Chemlight_green"
			
			// ace equipment - what everyone should have
			#define ace_default	{"ACE_fieldDressing",2}, \
								{"ace_Morphine",1}, \
								{"ace_HandFlare_Red",2},	\
								{"ace_EarBuds",1}

			//Override for a Medic					
			#define ace_medic	{"ACE_fieldDressing",20}, \
								{"ace_Morphine",10}, \
								{"ace_Epipen",10}, \
								{"ace_Bloodbag",3}, \
								{"ace_EarBuds",1}
			
			//Other ace
			#define ace_epipen "ace_Epipen" // For PC, SL, FTL
			#define ace_sparebarrel "ace_SpareBarrel"
			#define ace_defuse "ace_DefusalKit"
			#define ace_firing_device "ace_Clacker"
			
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
			
			// SO MANY JEANS SUCH LITTLE TIME
			#define default_uniform "TRYK_U_denim_hood_blk", "TRYK_U_denim_hood_mc", "TRYK_U_denim_hood_nc", "TRYK_U_denim_jersey_blk", "TRYK_U_denim_jersey_blu"
			
				
			//------Headgear-----
			#define leader_headgear H_Beret_Colonel"
			
			//All them CAPS
			#define default_headgear "H_Cap_grn_BI","H_Cap_blk","H_Cap_blu","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_blk_ION","H_Cap_oli","H_Cap_red","H_Cap_surfer","H_Cap_tan"
			
			//Goggles
			#define default_goggles ""
			//-----------------
			
			//Backpack
			#define default_backback "B_AssaultPack_blk"
			
			//Vests, just a lot of them bands
			#define vest_default "V_BandollierB_blk","V_BandollierB_rgr","V_BandollierB_oli","V_BandollierB_khk"
	
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
            #define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_fadak","ItemWatch" //With GPS
            #define default_equipment "ItemMap","ItemCompass","tf_fadak","ItemWatch"
			
			//========================Class Loadouts Definitions========================
			//================Leader==================
			class LD {
				weapons[] = {rifle,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {	
					};
					backpackItems[] = {
						ace_default,
						{ace_epipen,1},
						{smokegrenadewhite,2},
						{frag,2},
						{"ACE_CableTie",3}
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,3}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {flashlight};
				secKit[] = {};
			};
			//================Medic==================
			class MED {
				weapons[] = {rifle,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = { };
					backpackItems[] = {
						ace_medic,
						{smokegrenadewhite,3},
						{frag,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {flashlight};
				secKit[] = {};
			};		
			//================FTL==================
			class FTL {
				weapons[] = {rifle,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{ace_epipen,1},
						{smokegrenadewhite,2},
						{frag,2},
						{"ACE_CableTie",2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,3}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {flashlight};
				secKit[] = {};
			};			
			//================Rifleman==================
			class RIF {
				weapons[] = {rifle,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{smokegrenadewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {flashlight};
				secKit[] = {};
			};	
			//================Sapper==================
			class SAP {
				weapons[] = {"RH_cz75"};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{"APERSTripMine_Wire_Mag",8},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{"RH_16Rnd_9x19_CZ",2}
					};
					uniformItems[] = {
						{"RH_A26", 1}
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{"RH_16Rnd_9x19_CZ",5}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {flashlight};
				secKit[] = {"RH_A26"};
			};
			//================Auto-Rifleman (Machine Gunner)==================
			class AR {
				weapons[] = {ar,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{smokegrenadewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smokegrenadewhite,2}
					};
					uniformItems[] = {
						ace_default
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{armag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Rifleman (AT)==================
			class RAT {
				weapons[] = {rifle,rat,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{smokegrenadewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					ace_default,
					{ratmag,1}
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medium (AT)==================
			class MAT {
				weapons[] = {rifle,mat,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {	
						{mat_heat_mag,1},
						{mat_frag_mag,4}
					};
					backpackItems[] = {
						ace_default,
						{smokegrenadewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
						ace_default
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medium (AT) Assistant==================
			class MATA {
				weapons[] = {rifle,binoculars,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {	
						{mat_heat_mag,3},
						{mat_frag_mag,3}
					};
					backpackItems[] = {
						ace_default,
						{smokegrenadewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{riflemag,2}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Designated Marksman==================
			class DM {
				weapons[] = {dmr,binoculars,rsp};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backback};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						
						{smokegrenadewhite,2},
						{frag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{dmrMag,4}
					};
					uniformItems[] = {
					};
				goggles[] = {default_goggles};
				vest[] = {vest_default};
					vestMagazines[] = {
						{dmrMag,7}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
				secKit[] = {};
			};
};