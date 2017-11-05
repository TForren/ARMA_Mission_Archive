/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-28 13:12:34
*/
	
class NMD 
{
	class init
	{
		class init
		{
			preInit = 1;
			postInit = 1;
			file = "nmd\init.sqf";
		}
	};
	class geometry
	{
		file = "nmd\functions\geometry";
		class dirReverse;
		class setPosBuilding;
	};
	class gui
	{
		file = "nmd\functions\gui";
		class initDisplay;
		class titleHint;
	};
	class inventory
	{
		file = "nmd\functions\inventory";
		class loadInventory;
		class saveInventory;
	};
	class strings
	{
		file = "nmd\functions\strings";
		class stringLength;
		class stringReplace;
		class stringToArray;
	};
	class units
	{
		file = "nmd\functions\units";
		class allowDamage;
		class cleanupUnit;
		class enableSimulation;
		class hideBody;
		class listPlayers;
		class setCaptive;
		class setPlayerRespawnTime;
		class unitByName;
		class unitByUID;
	};
};