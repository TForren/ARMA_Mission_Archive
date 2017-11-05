// EndTypes
class CfgDebriefing {

	// EndTypes Templates
	class OPFOREliminated {
		subtitle = "CSAT forces took too many casualties";
		pictureBackground = "";
		picture = "\a3\Ui_f\data\GUI\Cfg\Debriefing\endDeath_ca.paa";
		pictureColor[] = {1,1,1,1};
	};

	class Extract {
		subtitle = "CSAT forces extracted to Stratis";
		pictureBackground = "";
		picture = "o_air";
		pictureColor[] = {0.5,0,0,1};
	};

	// Default call_mission EndTypes
	class MissionCalled {
		subtitle = "Your CO ordered you to surrender";
		pictureBackground = "";
		picture = "hd_objective";
		pictureColor[] = {0.7,0.6,0.0,1};
	};
	
	class AdminCalled {
		subtitle = "The mission was called by the Admin";
		pictureBackground = "";
		picture = "mil_objective";
		pictureColor[] = {0.7,0.6,0.0,1};
	};

};