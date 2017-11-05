class cartel {
                        // Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]
                        // 'MERICA BlueFor Gear Script by Jords
                        // Info:======================Equipment Definitions========================
                        //=== Weapons ===
 
                        //Primary
						#define rifle "rhs_weap_aks74u"
						#define riflemag "rhs_30Rnd_545x39_AK"
						
						#define rifle2 "hgun_PDW2000_F"
						#define rifle2mag "30Rnd_9x21_Mag"	
						
						#define rifle3 "hlc_smg_mp5k_PDW"
						#define rifle3mag "hlc_30Rnd_9x19_B_MP5"
						
						//secondary
						#define pistol1 "hgun_ACPC2_F"
						#define pistol1mag "9Rnd_45ACP_Mag"
						
						#define pistol2 "hgun_Pistol_heavy_02_F"
						#define pistol2mag "6Rnd_45ACP_Cylinder"
                       						
						#define pistol3 "hgun_Pistol_heavy_01_F"
						#define pistol3mag "11Rnd_45ACP_Mag"

						#define pistol4 "BWA3_MP7"
						#define pistol4mag "BWA3_40Rnd_46x30_MP7"
                       
                        //Chemical lights
                        #define chemblue "Chemlight_blue"
                       
                        // AGM equipment - what everyone should have
                        #define agm_default     {"AGM_Bandage",3}, {"AGM_Morphine",1}
                        
                        //AGM
                        #define agm_epipen "AGM_Epipen" // For PC, SL, FTL
                        #define agm_sparebarrel "AGM_SpareBarrel"
                        #define agm_defuse "AGM_DefusalKit"
                        #define agm_firing_device "AGM_Clacker"
                       
                        //Double Misc
                        #define toolkit "ToolKit"
                        #define explosive "DemoCharge_Remote_Mag"
                        #define at_mine "ATMine_Range_Mag"
                        #define ap_mine "APERSBoundingMine_Range_Mag"
                        #define minedetector "MineDetector"
                        #define binoculars "Binocular"
                       
                        //Radio
                        #define long_range "tf_anprc152" //Long range - Short-wave

                        //Uniform              
                        #define B_Uniforms "rds_uniform_citizen1", "rds_uniform_citizen2", "rds_uniform_citizen4", "U_BG_Guerilla1_1", "TRYK_U_B_PCUGs_BLK", "TRYK_U_B_PCUGs_gry"
                        #define O_Uniforms "rds_uniform_Profiteer1", "rds_uniform_Profiteer2", "rds_uniform_Profiteer3", "rds_uniform_Profiteer4"
						
                        //Headgear
                        #define B_Headgear "H_caf_ag_beanie", "H_Cap_blk", "H_Cap_blk_CMMG", "H_Cap_grn", "H_Cap_tan", "TRYK_R_CAP_OD_US"

                        //Backpack
                        #define default_backpack "rhsusf_assault_eagleaiii_ocp"

                        //Vests
                        #define vest_default "rhsusf_iotv_ocp_rifleman"
                       
                        //Face
                        #define O_Goggles "G_Balaclava_blk"
                       
                        //=== EQUIPMENT ===
                        //MUST BE ONE LINE
                        #define leader_equipment "ItemMap","ItemGPS","ItemCompass","tf_rf7800str","tf_microdagr" //With GPS
                        #define default_equipment "ItemMap","ItemCompass","tf_rf7800str", "ItemWatch"
                       
                        //========================Class Loadouts Definitions========================
                        //================B1==================
                        class B1 {
                                weapons[] = {"BWA3_MP7"};
								headgear[] = {B_Headgear};
                                uniform[] = {B_Uniforms};
                                        uniformMagazines[] = {
										{"BWA3_40Rnd_46x30_MP7", 3}
                                        };
                                        uniformItems[] = {
										{"AGM_HandFlare_Red", 1},
										{"acc_flashlight", 1},
										agm_default
                                        };
                                goggles[] = {};
                                vest[] = {};
                                        vestMagazines[] = {
                                        };
                                assignedItems[] = {default_equipment};
								priKit[] = {};
								secKit[] = {"acc_flashlight"};
                        }; 
						//==================================
                        class B2 {
                                weapons[] = {"BWA3_P8"};
								headgear[] = {B_Headgear};
                                uniform[] = {B_Uniforms};
                                        uniformMagazines[] = {
										{"BWA3_15Rnd_9x19_P8", 5}
                                        };
                                        uniformItems[] = {
										{"AGM_HandFlare_Red", 1},
										{"acc_flashlight", 1},
										agm_default
                                        };
                                goggles[] = {};
                                vest[] = {};
                                        vestMagazines[] = {
                                        };
                                assignedItems[] = {default_equipment};
								priKit[] = {};
								secKit[] = {"acc_flashlight"};
                        };
							
                        //================O1==================
                        class O1 {
                                weapons[] = {"BWA3_MP7"};
                                uniform[] = {O_Uniforms};
                                        uniformMagazines[] = {
										{"BWA3_40Rnd_46x30_MP7", 3}
                                        };
                                        uniformItems[] = {
										{"AGM_HandFlare_Red", 1},
										{"acc_flashlight", 1},
										agm_default
                                        };
                                goggles[] = {O_Goggles};
                                vest[] = {};
                                        vestMagazines[] = {
                                        };
                                assignedItems[] = {default_equipment};
								priKit[] = {};
								secKit[] = {"acc_flashlight"};
                        };						
                        //================O2==================
                        class O2 {
                                weapons[] = {"BWA3_P8"};
                                uniform[] = {O_Uniforms};
                                        uniformMagazines[] = {
										{"BWA3_15Rnd_9x19_P8", 5}
                                        };
                                        uniformItems[] = {
										{"AGM_HandFlare_Red", 1},
										{"acc_flashlight", 1},
										agm_default
                                        };
                                goggles[] = {O_Goggles};
                                vest[] = {};
                                        vestMagazines[] = {
                                        };
                                assignedItems[] = {default_equipment};
								priKit[] = {};
								secKit[] = {"acc_flashlight"};
                        };							
                        //================swat==================
                        class swat {
                                weapons[] = {"rhs_weap_m4_grip"};
								headgear[] = {"TRYK_H_PASGT_BLK"};
                                uniform[] = {"TRYK_U_B_BLK_Tshirt"};
                                        uniformMagazines[] = {
										{"rhs_mag_30Rnd_556x45_Mk318_Stanag", 3}
                                        };
                                        uniformItems[] = {
										{chemblue, 1},
										
										agm_default
                                        };
                                goggles[] = {"TRYK_SPGEAR_Glasses"};
                                vest[] = {"TRYK_V_PlateCarrier_blk_L"};
                                        vestMagazines[] = {
										{"rhs_mag_30Rnd_556x45_Mk318_Stanag", 4}
                                        };
                                assignedItems[] = {default_equipment, "TRYK_balaclava_BLACK_NV"};
								priKit[] = {"FHQ_acc_LLM01L","FHQ_optic_MicroCCO"};
								secKit[] = {"acc_flashlight"};
                        };						
						   
						   //================swat==================
                        class swat2 {
                                weapons[] = {"rhs_weap_m4_grip"};
								headgear[] = {"TRYK_H_PASGT_BLK"};
                                uniform[] = {"TRYK_U_B_BLK_Tshirt"};
                                        uniformMagazines[] = {
										{"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3}
                                        };
                                        uniformItems[] = {
										{chemblue, 1},
										agm_default
                                        };
                                goggles[] = {"TRYK_SPGEAR_Glasses"};
                                vest[] = {"TRYK_V_PlateCarrier_blk_L"};
                                        vestMagazines[] = {
										{"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 4}
                                        };
                                assignedItems[] = {default_equipment, "TRYK_balaclava_BLACK_NV"};
								priKit[] = {"FHQ_acc_LLM01L","FHQ_optic_MicroCCO"};
								secKit[] = {"acc_flashlight"};
                        };						
						
	

                        //================Vehicle Loadouts==================
                        class V_BOX {
                                vehCargoWeapons[] = { };
                                vehCargoMagazines[] = {
                                };
                                vehCargoItems[] = {
								{"AGM_HandFlare_Red", 10},
								{"acc_flashlight", 10}
                                };
                                vehCargoRucks[] = { };
                        };

};