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
		assets[] = {{O_Mortar_01_F, 3}, {O_Heli_Attack_02_F, 4}, {O_Plane_CAS_02_F, 2}, {O_APC_Tracked_02_AA_F, 2}, {O_Boat_Armed_01_hmg_F, 5}};

		class Viper {
			id = 2;
			side = "West";
			size = "Platoon";
			type = "Infantry";
			commander = "You";
			commanderRank = "Captain";
			text = "%1 %2 %3 - Viper";
			assets[] = {O_HMG_01_high_F};

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
		};

		class Hydra {
			id = 8;
			side = "West";
			size = "Platoon";
			type = "Helicopter";
			commander = "Kazdir";
			commanderRank = "Lieutenant";
			text = "%1 %2 %3 - Hydra";
			assets[] = {{O_Heli_Transport_04_F, 2}};
		};
	};
	
	class Bravo {
		id = 2;
		idType = 2;
		side = "East";
		size = "Company";
		type = "HQ";
		commander = "Okastro";
		commanderRank = "Major";
		text = "%1 %3";
	
		class stPlt {
			id = 1;
			side = "East";
			size = "Platoon";
			type = "Maritime";
			commander = "Olastri";
			commanderRank = "Captain";
			text = "%1 %3";
		};

		class ndPlt {
			id = 2;
			side = "East";
			size = "Platoon";
			type = "HQ";
			commander = "Unustro";
			commanderRank = "Captain";
			text = "%1 %3";

			class MechanizedInfantry5 {
				id = 5;
				side = "East";
				size = "Squad";
				type = "MechanizedInfantry";
				commander = "Lochori";
				commanderRank = "Sergeant";
				text = "%1 %2 %3";
				assets[] = {I_APC_Wheeled_03_cannon_F, I_MRAP_03_hmg_F};
			};

			class MechanizedInfantry2 {
				id = 2;
				side = "East";
				size = "Squad";
				type = "MechanizedInfantry";
				commander = "Nysios";
				commanderRank = "Sergeant";
				text = "%1 %2 %3";
				assets[] = {I_APC_Wheeled_03_cannon_F, I_MRAP_03_hmg_F};
			};
			
			class Infantry4 {
				id = 4;
				side = "East";
				size = "Squad";
				type = "Infantry";
				commander = "Patros";
				commanderRank = "Lieutenant";
				text = "%1 %2 %3";
				assets[] = {};
			};
			
			class Infantry8 {
				id = 8;
				side = "East";
				size = "Squad";
				type = "Infantry";
				commander = "Nysios";
				commanderRank = "Sergeant";
				text = "%1 %2 %3";
				assets[] = {};
			};
			
			class Armor {
				id = 1;
				side = "East";
				size = "Squad";
				type = "Armored";
				commander = "Nustyra";
				commanderRank = "Sergeant";
				text = "Main Battle Tank";
				assets[] = {I_MBT_03_cannon_F};
			};
		};
		};
};