class CfgORBAT {
	class Griffin {
		id = 3;
		idType = 2;
		side = "West";
		size = "Company";
		type = "HQ";
		commander = "Yezdir";
		commanderRank = "Major";
		text = "%1 %3 - Griffin";

		class Viper {
			id = 2;
			side = "West";
			size = "Platoon";
			type = "Infantry";
			commander = "You";
			commanderRank = "Captain";
			text = "%1 %2 %3 - Viper";
			assets[] = {{O_Quadbike_01_F, 4}, O_Truck_03_ammo_F, O_Truck_03_covered_F, O_HMG_01_high_F};

			class Viper_Green {
				side = "West";
				size = "Squad";
				type = "Infantry";
				commander = "You";
				commanderRank = "Sergeant";
				text = "Viper Green";
			};

			class Viper_Red {
				side = "West";
				size = "Squad";
				type = "Infantry";
				commander = "You";
				commanderRank = "Sergeant";
				text = "Viper Red";
			};

			class Viper_Blue {
				side = "West";
				size = "Squad";
				type = "Infantry";
				commander = "You";
				commanderRank = "Sergeant";
				text = "Viper Blue";
			};

			class Medio {
				side = "West";
				size = "FireTeam";
				type = "Medical";
				commander = "You";
				commanderRank = "Corporal";
				text = "Medio";
			};
			
			class Scorpio {
				side = "West";
				size = "FireTeam";
				type = "Mortar";
				commander = "You";
				commanderRank = "Corporal";
				text = "Scorpio";
				assets[] = {I_Mortar_01_F};
			};
		};

		class Hydra {
			id = 8;
			side = "West";
			size = "Platoon";
			type = "Helicopter";
			commander = "Kazdir";
			commanderRank = "Lieutenant";
			text = "%1 %2 %3 - Hydra";
			assets[] = {{O_Heli_Transport_04_F, 2}, O_Heli_Attack_02_F};
		};
	};

	class Delta {
		id = 4;
		idType = 2;
		side = "East";
		size = "Company";
		type = "HQ";
		commander = "Okastro";
		commanderRank = "Major";
		text = "%1 %3";

		class MotorizedInfantry4 {
			id = 4;
			side = "East";
			size = "Platoon";
			type = "MotorizedInfantry";
			commander = "Lochori";
			commanderRank = "Captain";
			text = "%1 %2 %3";
			assets[] = {{I_Truck_02_covered_F, 2}, I_MRAP_03_hmg_F};
		};

		class MechanizedInfantry6 {
			id = 6;
			side = "East";
			size = "Platoon";
			type = "MechanizedInfantry";
			commander = "Nysios";
			commanderRank = "Captain";
			text = "%1 %2 %3";
			assets[] = {{I_MBT_03_cannon_F, 2}, I_Truck_02_covered_F};
		};
		
		class Mortar2 {
			id = 2;
			side = "East";
			size = "Section";
			type = "Mortar";
			commander = "Patros";
			commanderRank = "Lieutenant";
			text = "%1 %2 Section";
			assets[] = {{I_G_Mortar_01_F, 3}, I_MRAP_03_F};
		};
		
		class MechanizedInfantry1 {
			id = 1;
			side = "East";
			size = "Platoon";
			type = "MechanizedInfantry";
			commander = "Nysios";
			commanderRank = "Captain";
			text = "%1 %2 %3";
			assets[] = {{I_APC_Wheeled_03_cannon_F, 2}, I_MRAP_03_hmg_F, I_Truck_02_covered_F};
		};
	};
};