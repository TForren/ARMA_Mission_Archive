class PMC {
                        // Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]
                       
                        //========================Equipment Definitions========================
                        //=== Weapons ===
 
                        //Primary
                        #define rifle "BWA3_G27"
                        #define sniperrifle "hlc_rifle_psg1"
 
                        //Secondary
						#define pistol "hgun_Pistol_heavy_01_F"
						
                        //Launcher
                        #define rat "rhs_weap_M136"
                        #define mat "rhs_weap_fgm148"
 
                        //Attachments
                        #define holosight "BWA3_optic_Aimpoint"
                        #define pistol_sight "optic_MRD"

						
 
                        //Ammo
                        #define riflemag "BWA3_20Rnd_762x51_G28"
                        #define riflemag_tr "BWA3_20Rnd_762x51_G28_Tracer"
						#define pistolMag "11Rnd_45ACP_Mag"
						
                        //Grenades
                        #define frag "HandGrenade"
                        #define stun "AGM_M84"

                        //=== MISC ===
                       
                        //Chemical lights
                        #define chemblue "Chemlight_blue"
                       
                        // AGM equipment - what everyone should have
                        #define agm_default     {"AGM_Bandage",5}, \
                                                                {"AGM_Morphine",2}, \
                                                                {"AGM_EarBuds",1}
 
                        //Override for a Medic                                 
                       
                        //AGM
                        #define agm_epipen "AGM_Epipen" // For PC, SL, FTL
                       
                        //Double Misc
                        #define toolkit "ToolKit"
                        #define explosive "DemoCharge_Remote_Mag"
                        #define at_mine "ATMine_Range_Mag"
                        #define ap_mine "APERSBoundingMine_Range_Mag"
                        #define minedetector "MineDetector"
                        #define binoculars "Binocular"
                       
                        //Radio
                        #define long_range "tf_anprc152" //Long range - Short-wave
                                       
                        //=== Clothes ===
 
                        //Uniform              
                        #define default_uniform "TRYK_U_B_Denim_T_WH", "TRYK_U_B_Denim_T_BK", "TRYK_DMARPAT_T"
                               
                        //Headgear 
                        #define default_headgear "H_Cap_oli", "H_Cap_blk_ION", "H_Cap_grn", "H_Cap_blk_CMMG", "H_Cap_blk", "H_Cap_grn_BI", "H_Cap_tan", "H_Cap_khaki_specops_UK", "H_Cap_usblack", "H_Cap_tan_specops_US"


                        //Backpack
                        #define default_backpack "TRYK_B_Belt_CYT"

                        //Vests
                        #define vest_default "V_TacVest_brn", "V_TacVest_khk"
                       
                        //Face
                        #define glasses "TRYK_Shemagh", "TRYK_Shemagh_EAR_TAN", "TRYK_Shemagh_ESS", "TRYK_Shemagh_shade", "TRYK_TAC_SET_TAN"
                       
                        //=== EQUIPMENT ===
                        //MUST BE ONE LINE
                        #define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_rf7800str","tf_microdagr" //With GPS
                        #define default_equipment "ItemMap","ItemCompass","tf_rf7800str","tf_microdagr"
                       
                        //========================Class Loadouts Definitions========================
                        //================PMC 1==================
                        class PMC1 {
                                weapons[] = {rifle,pistol};
                                magazines[] = { }; //do not use if using specific allocation of magazines
                                backpack[] = {default_backpack};
                                        backpackMagazines[] = {
                                                {riflemag,2}
                                        };
                                        backpackItems[] = {
                                                agm_default,
                                                {agm_epipen,1}
                                        };
                                headgear[] = {default_headgear};
                                uniform[] = {default_uniform};
                                        uniformMagazines[] = {
                                                {riflemag,2},
												{pistolMag,3}
                                        };
                                        uniformItems[] = {
                                        };
                                goggles[] = {glasses};
                                vest[] = {vest_default};
                                        vestMagazines[] = {
                                                {riflemag,5},
                                                {riflemag_tr,2},
												{stun,2}
                                        };
                                assignedItems[] = {leader_equipment};
                                items[] = {     }; //do not use if using specific allocation of items
                               
                                priKit[] = {holosight};
                                secKit[] = {pistol_sight};
                        };
                        //================VIP==================
                        class VIP {
                                weapons[] = {};
                                magazines[] = { }; //do not use if using specific allocation of magazines
                                backpack[] = {};
                                        backpackMagazines[] = {
                                        };
                                        backpackItems[] = {
                                        };
                                headgear[] = {};
                                uniform[] = {"LOP_U_VIP"};
                                        uniformMagazines[] = {
                                        };
                                        uniformItems[] = {
										{"G_Aviator",1}
                                        };
                                goggles[] = {};
								vest[] = {};
                                        vestMagazines[] = {
                                        };
                                assignedItems[] = {};
                                items[] = {     }; //do not use if using specific allocation of items
                               
                                priKit[] = {};
                                secKit[] = {};
                        };
 
                        //================Vehicle Loadouts==================hlc_rifle_psg1 hlc_20rnd_762x51_b_G3
                        class V_CAR {
                                vehCargoWeapons[] = { };
                                vehCargoMagazines[] = {
                                        {riflemag,10},
                                        {riflemag_tr,4}
                                };
                                vehCargoItems[] = {
                                {"LOP_V_Carrier_BLK",1}
                                };
                                vehCargoRucks[] = { };
                        };
                        class V_CAR2 {
                                vehCargoWeapons[] = {sniperrifle};
                                vehCargoMagazines[] = {
                                        {riflemag,10},
                                        {riflemag_tr,4}
                                };
                                vehCargoItems[] = {
                                {"LOP_V_Carrier_BLK",0}
                                };
                                vehCargoRucks[] = { };
                        }; 


};