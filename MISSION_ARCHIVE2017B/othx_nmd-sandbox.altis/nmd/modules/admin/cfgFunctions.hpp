/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-05-15 06:56:46
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-23 02:39:07
*/

class NMD_ModuleAdmin
{
	tag = "NMD";
	class functions
	{
		file = "nmd\modules\admin\functions";
		class addAdmin;
		class adminBan;
		class adminFreeze;
		class adminImmune;
		class adminInitPlayer;
		class adminKick;
		class adminNeutral;
		class initModuleAdmin
		{
			preInit = 1;
			postInit = 1;
		}
		class isAdmin;
		class removeAdmin;
		class setAsAdmin;
	};
};