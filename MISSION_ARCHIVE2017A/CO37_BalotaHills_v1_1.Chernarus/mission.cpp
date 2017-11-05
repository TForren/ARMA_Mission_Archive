version=53;
class EditorData
{
	moveGridStep=1;
	angleGridStep=0.2617994;
	scaleGridStep=1;
	autoGroupingDist=10;
	toggles=1;
	class ItemIDProvider
	{
		nextID=594;
	};
	class MarkerIDProvider
	{
		nextID=14;
	};
	class Camera
	{
		pos[]={4285.937,96.134331,3102.0911};
		dir[]={0.17433414,-0.29579011,0.9392283};
		up[]={0.053983472,0.95525014,0.29083538};
		aside[]={0.98322421,3.715686e-007,-0.18250011};
	};
};
addons[]=
{
	"A3_Ui_F",
	"CUP_Misc3_Config",
	"A3_Modules_F",
	"rhs_c_troops",
	"asr_ai3_rhs_ru_c",
	"rhs_c_heavyweapons",
	"A3_Characters_F",
	"A3_Structures_F_System",
	"A3_Weapons_F_Ammoboxes",
	"rhsusf_c_fmtv",
	"A3_Modules_F_Curator_Curator",
	"acex_headless"
};
class AddonsMetaData
{
	class List
	{
		items=12;
		class Item0
		{
			className="A3_Ui_F";
			name="Arma 3 - User Interface";
			author="Bohemia Interactive";
			url="https://www.arma3.com";
		};
		class Item1
		{
			className="CUP_Misc3_Config";
			name="CUP_Misc3_Config";
		};
		class Item2
		{
			className="A3_Modules_F";
			name="Arma 3 Alpha - Scripted Modules";
			author="Bohemia Interactive";
			url="https://www.arma3.com";
		};
		class Item3
		{
			className="rhs_c_troops";
			name="AFRF Infantry & Equipment";
			author="Red Hammer Studios";
			url="http://www.rhsmods.org/";
		};
		class Item4
		{
			className="rhs_c_weapons";
			name="AFRF Weapons Pack";
			author="Red Hammer Studios";
			url="http://www.rhsmods.org/";
		};
		class Item5
		{
			className="rhs_c_heavyweapons";
			name="Heavy weapons pack";
			author="Red Hammer Studios";
			url="http://www.rhsmods.org/";
		};
		class Item6
		{
			className="A3_Characters_F";
			name="Arma 3 Alpha - Characters and Clothing";
			author="Bohemia Interactive";
			url="https://www.arma3.com";
		};
		class Item7
		{
			className="A3_Structures_F";
			name="Arma 3 - Buildings and Structures";
			author="Bohemia Interactive";
			url="https://www.arma3.com";
		};
		class Item8
		{
			className="A3_Weapons_F";
			name="Arma 3 Alpha - Weapons and Accessories";
			author="Bohemia Interactive";
			url="https://www.arma3.com";
		};
		class Item9
		{
			className="rhsusf_c_fmtv";
			name="FMTV Trucks";
			author="Red Hammer Studios";
			url="http://www.rhsmods.org/";
		};
		class Item10
		{
			className="A3_Modules_F_Curator";
			name="Arma 3 Zeus Update - Scripted Modules";
			author="Bohemia Interactive";
			url="https://www.arma3.com";
		};
		class Item11
		{
			className="acex_headless";
			name="ACEX - Headless";
			author="ACE-Team";
			url="http://ace3mod.com/";
		};
	};
};
randomSeed=11291453;
class ScenarioData
{
	author="tinfoil, ported by itme";
	overviewText="WAC BLUFOR Infantry Offensive";
	loadScreen="core\uoLogo.jpg";
	disabledAI=1;
	class Header
	{
		gameType="Coop";
		minPlayers=25;
		maxPlayers=37;
	};
};
class CustomAttributes
{
	class Category0
	{
		name="Multiplayer";
		class Attribute0
		{
			property="RespawnTemplates";
			expression="true";
			class Value
			{
				class data
				{
					class type
					{
						type[]=
						{
							"ARRAY"
						};
					};
				};
			};
		};
		nAttributes=1;
	};
};
class Intro
{
	class Intel
	{
		startWeather=0.25;
		startWind=0.1;
		forecastWeather=0.25;
		forecastWind=0.1;
		forecastWaves=0.1;
		year=2008;
		month=10;
		day=11;
		hour=9;
		minute=20;
		startFogDecay=0.0049333;
		forecastFogDecay=0.0049333;
	};
};
class Mission
{
	class Intel
	{
		briefingName="CO37 - Balota Hills v1.1";
		overviewText="WAC BLUFOR Infantry Offensive. Slot driver unless you like walking.";
		startWeather=0.020364523;
		startWind=0.1;
		forecastWeather=0.27859455;
		forecastWind=0.1;
		forecastWaves=0.1;
		year=2008;
		month=7;
		day=6;
		hour=5;
		minute=0;
		startFogDecay=0.0049333;
		forecastFogDecay=0.0049333;
	};
	class Entities
	{
		items=109;
		class Item0
		{
			dataType="Marker";
			position[]={4761.3223,79.370903,3077.8723};
			name="obj1_b";
			text="OBJ 1";
			type="mil_marker";
			colorName="ColorBlack";
			id=0;
		};
		class Item1
		{
			dataType="Marker";
			position[]={4534.8125,116.28954,3407.4263};
			name="obj2_b";
			text="OBJ 2";
			type="mil_marker";
			colorName="ColorBlack";
			id=1;
		};
		class Item2
		{
			dataType="Marker";
			position[]={4719.8638,0,3339.3191};
			name="eacoy";
			type="Empty";
			colorName="ColorRed";
			id=2;
			atlOffset=-92.675293;
		};
		class Item3
		{
			dataType="Marker";
			position[]={4211.9727,6.8579021,2503.2974};
			name="22plt";
			text="22 Platoon (Your Platoon)";
			type="Empty";
			colorName="ColorBlue";
			id=4;
		};
		class Item4
		{
			dataType="Marker";
			position[]={3408.864,1.4569844e+037,2428.6699};
			name="fob";
			text="FOB";
			type="mil_triangle";
			colorName="ColorWEST";
			id=6;
			atlOffset=1.4569844e+037;
		};
		class Item5
		{
			dataType="Marker";
			position[]={3939.158,2.4662577e+027,4127.874};
			name="23plt";
			text="23 Platoon";
			type="Empty";
			colorName="ColorBlue";
			id=7;
			atlOffset=2.4662577e+027;
		};
		class Item6
		{
			dataType="Marker";
			position[]={3260.3689,2.4674477e+027,4556.979};
			name="21plt";
			text="21 Platoon";
			type="Empty";
			colorName="ColorBlue";
			id=9;
			atlOffset=2.4674477e+027;
		};
		class Item7
		{
			dataType="Marker";
			position[]={3420.209,2.4674477e+027,3964.7871};
			name="bcoy";
			text="Bravo Company HQ";
			type="Empty";
			colorName="ColorBlue";
			id=11;
			atlOffset=2.4674477e+027;
		};
		class Item8
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4473.9634,52.526875,3183.4368};
				angles[]={6.1703339,2.4086637,0.06656827};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=13;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00092697144;
		};
		class Item9
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4472.9165,52.599316,3184.6711};
				angles[]={6.1453972,5.5475402,0.091741346};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=14;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00082015991;
		};
		class Item10
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4474.0527,52.543205,3183.5178};
				angles[]={6.1453972,2.4086637,0.091741346};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=15;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.0015296936;
		};
		class Item11
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4472.9814,52.604637,3184.6663};
				angles[]={6.1453972,5.5475297,0.091741346};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=16;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00080871582;
		};
		class Item12
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4496.0479,53.329315,3173.8486};
				angles[]={6.0176105,2.1076117,0.26681599};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=17;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.011417389;
		};
		class Item13
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4494.6465,53.177433,3174.6599};
				angles[]={6.0176105,5.2464886,0.26681599};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=18;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00099563599;
		};
		class Item14
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4496.1094,53.373222,3173.948};
				angles[]={6.0176105,2.1076117,0.26681599};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=19;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.011295319;
		};
		class Item15
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4494.7129,53.200806,3174.6797};
				angles[]={6.0176105,5.2464776,0.26681599};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=20;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.001121521;
		};
		class Item16
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4555.2085,57.533672,3123.5166};
				angles[]={6.1232309,1.7745152,0.17033349};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=21;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.0036125183;
		};
		class Item17
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4553.6201,57.318016,3123.8572};
				angles[]={6.1232309,4.9133911,0.17033349};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=22;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.0010032654;
		};
		class Item18
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4555.2324,57.555416,3123.626};
				angles[]={6.1232309,1.7745152,0.17033349};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=23;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.003692627;
		};
		class Item19
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4553.6782,57.334,3123.8943};
				angles[]={6.1232309,4.9133806,0.17033349};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=24;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00099945068;
		};
		class Item20
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4523.6611,55.145134,3138.2822};
				angles[]={6.187479,2.6737347,0.074528553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=25;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00072479248;
		};
		class Item21
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4522.9692,55.233845,3139.7422};
				angles[]={6.187479,5.8126206,0.074528553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=26;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00053405762;
		};
		class Item22
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4523.7607,55.157166,3138.3303};
				angles[]={6.187479,2.6737347,0.074528553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=27;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00075912476;
		};
		class Item23
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4523.0322,55.236668,3139.7227};
				angles[]={6.187479,5.8126101,0.074528553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=28;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00049972534;
		};
		class Item24
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4535.7969,115.79916,3398.272};
				angles[]={-0,1.621819,0.073202357};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=33;
			type="Fort_EnvelopeSmall";
		};
		class Item25
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4534.1846,115.68092,3398.4004};
				angles[]={-0,4.7606916,0.073202357};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=34;
			type="Fort_EnvelopeSmall";
		};
		class Item26
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4535.8037,115.79966,3398.3909};
				angles[]={-0,1.621819,0.073202357};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=35;
			type="Fort_EnvelopeSmall";
		};
		class Item27
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4534.2329,115.68445,3398.4451};
				angles[]={-0,4.7606812,0.073202357};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=36;
			type="Fort_EnvelopeSmall";
		};
		class Item28
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4504.0586,112.41225,3400.4097};
				angles[]={6.1782393,4.8670654,0.11811411};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=69;
			type="Fort_EnvelopeSmall";
			atlOffset=5.3405762e-005;
		};
		class Item29
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4505.6489,112.57472,3400.1128};
				angles[]={6.1716499,1.7227547,0.12468339};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=70;
			type="Fort_EnvelopeSmall";
		};
		class Item30
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4504.0386,112.3978,3400.2952};
				angles[]={6.1782393,4.8670654,0.11811411};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=71;
			type="Fort_EnvelopeSmall";
			atlOffset=5.3405762e-005;
		};
		class Item31
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4505.5947,112.56362,3400.0745};
				angles[]={6.1716499,1.7227442,0.12468339};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=72;
			type="Fort_EnvelopeSmall";
			atlOffset=7.6293945e-006;
		};
		class Item32
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5068.0767,24.055975,2865.6077};
				angles[]={6.2325621,2.4086637,6.2565231};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=93;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00014305115;
		};
		class Item33
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5067.0303,24.146461,2866.8435};
				angles[]={6.2325621,5.5475402,6.2565231};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=94;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00017166138;
		};
		class Item34
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5068.1631,24.057634,2865.6858};
				angles[]={6.2325621,2.4086637,6.2565231};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=95;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00013160706;
		};
		class Item35
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5067.0952,24.144499,2866.8386};
				angles[]={6.2325621,5.5475297,6.2565231};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=96;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.00015830994;
		};
		class Item36
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5102.6484,31.307997,2938.425};
				angles[]={6.0539536,1.9086561,0.027993103};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=97;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.0027694702;
		};
		class Item37
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5101.1401,31.400511,2939.0054};
				angles[]={6.0640931,5.0475326,0.017332481};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=98;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.0034046173;
		};
		class Item38
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5102.6895,31.334665,2938.5344};
				angles[]={6.0539536,1.9086561,0.027993103};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=99;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.0027294159;
		};
		class Item39
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5101.2002,31.408791,2939.0378};
				angles[]={6.0640931,5.0475221,0.017332481};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=100;
			type="Fort_EnvelopeSmall";
			atlOffset=-0.0043888092;
		};
		class Item40
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5122.7109,24.431389,2891.7058};
				angles[]={6.2711854,0.32840347,6.2685208};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=101;
			type="Fort_EnvelopeSmall";
			atlOffset=-2.0980835e-005;
		};
		class Item41
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5122.1465,24.42668,2890.1938};
				angles[]={6.2711854,3.4672804,6.253859};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=102;
			type="Fort_EnvelopeSmall";
			atlOffset=-4.9591064e-005;
		};
		class Item42
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5122.606,24.433388,2891.7437};
				angles[]={6.2711854,0.32840347,6.2685208};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=103;
			type="Fort_EnvelopeSmall";
			atlOffset=-1.335144e-005;
		};
		class Item43
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5122.1177,24.428268,2890.2559};
				angles[]={6.2711854,3.4672709,6.253859};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=104;
			type="Fort_EnvelopeSmall";
			atlOffset=-4.9591064e-005;
		};
		class Item44
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5042.6328,26.801956,2899.0476};
				angles[]={0.010664274,1.6816521,6.2418756};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=105;
			type="Fort_EnvelopeSmall";
			atlOffset=-7.0571899e-005;
		};
		class Item45
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5041.0298,26.865854,2899.2678};
				angles[]={0.010664274,4.8205328,6.2418756};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=106;
			type="Fort_EnvelopeSmall";
			atlOffset=-8.392334e-005;
		};
		class Item46
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5042.646,26.800234,2899.1575};
				angles[]={0.010664274,1.6816521,6.2418756};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=107;
			type="Fort_EnvelopeSmall";
			atlOffset=-7.0571899e-005;
		};
		class Item47
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={5041.082,26.863245,2899.3105};
				angles[]={0.010664274,4.8205223,6.2418756};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=108;
			type="Fort_EnvelopeSmall";
			atlOffset=-8.0108643e-005;
		};
		class Item48
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3409.512,9.3449478,2428.425};
				angles[]={0,1.5822979,0};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=126;
			type="Land_CamoNet_NATO";
			atlOffset=-0.51470757;
			class CustomAttributes
			{
				class Attribute0
				{
					property="ace_isMedicalFacility";
					expression="_this setVariable [""ace_medical_isMedicalFacility"",_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"BOOL"
								};
							};
							value=0;
						};
					};
				};
				nAttributes=1;
			};
		};
		class Item49
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3407.656,8.8135071,2423.51};
				angles[]={6.2020307,0.013251751,6.2179451};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=128;
			type="Land_BagFenceLong";
			atlOffset=0.0024013519;
		};
		class Item50
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3409.4998,8.6904869,2423.4785};
				angles[]={6.2020307,0.013251751,6.2179451};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=129;
			type="Land_BagFenceLong";
			atlOffset=0.0023994446;
		};
		class Item51
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3409.6348,9.4694462,2433.6946};
				angles[]={6.2099833,3.2414713,6.1848373};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=130;
			type="Land_BagFenceLong";
			atlOffset=0.003323555;
		};
		class Item52
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3407.791,9.6493721,2433.8792};
				angles[]={6.1914434,3.2414713,6.2033563};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=131;
			type="Land_BagFenceLong";
			atlOffset=0.0032815933;
		};
		class Item53
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3411.9543,8.931036,2429.5874};
				angles[]={6.2166171,4.7469249,6.2033553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=132;
			type="Land_BagFenceLong";
			atlOffset=0.002407074;
		};
		class Item54
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3412.0339,9.066679,2431.4304};
				angles[]={6.2099833,4.7469249,6.1848373};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=133;
			type="Land_BagFenceLong";
			atlOffset=0.0033273697;
		};
		class Item55
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3411.8103,8.695056,2425.875};
				angles[]={6.2166171,4.7469249,6.2033553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=134;
			type="Land_BagFenceLong";
			atlOffset=0.0023889542;
		};
		class Item56
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3411.8816,8.8122406,2427.7183};
				angles[]={6.2166171,4.7469249,6.2033553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=135;
			type="Land_BagFenceLong";
			atlOffset=0.0024080276;
		};
		class Item57
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3411.4382,8.590353,2423.9243};
				angles[]={6.2166171,1.5654615,6.2033553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=136;
			type="Land_BagFenceCorner";
			atlOffset=0.0024375916;
		};
		class Item58
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3411.6482,9.2426319,2433.3701};
				angles[]={6.2099833,0.041385524,6.1848373};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=137;
			type="Land_BagFenceCorner";
			atlOffset=0.0034103394;
		};
		class Item59
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3406.416,9.7578278,2434.0002};
				angles[]={6.1914434,3.2414799,6.2033563};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=138;
			type="Land_BagFenceEnd";
			atlOffset=0.0029687881;
		};
		class Item60
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3406.2532,8.8949003,2423.5383};
				angles[]={6.2020307,3.1636071,6.2179451};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=139;
			type="Land_BagFenceEnd";
			atlOffset=0.0022182465;
		};
		class Item61
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4740.1445,68.699135,3135.6873};
			};
			name="lightKill";
			init="{_x switchLight ""OFF""} forEach ((getPos this) nearObjects [""StreetLamp"", 4000]);";
			id=143;
			type="Logic";
		};
		class Item62
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4760.064,80.022842,3077.386};
			};
			name="blufor_obj1";
			id=144;
			type="Logic";
		};
		class Item63
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=9;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4786.1274,63.159645,3090.9255};
						angles[]={0.1495422,3.2956424,5.7942672};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.27572832;
					};
					id=146;
					type="rhs_msv_rifleman";
					atlOffset=-3.8146973e-005;
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4702.8218,68.984535,3181.4421};
						angles[]={0.10230894,3.100811,6.0870714};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.26216683;
					};
					id=149;
					type="rhs_msv_rifleman";
					atlOffset=-3.0517578e-005;
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4781.9868,63.464775,3101.4695};
						angles[]={0.16644555,3.2956355,5.8586698};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.27572832;
					};
					id=520;
					type="rhs_msv_LAT";
					atlOffset=-4.196167e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4696.2915,69.225922,3191.1843};
						angles[]={0.090419561,3.1008041,6.1025105};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.27572832;
					};
					id=521;
					type="rhs_msv_grenadier";
					atlOffset=-3.0517578e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4732.6377,64.651772,3164.8181};
						angles[]={0.10890055,3.5018287,6.1038013};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.26216683;
					};
					id=522;
					type="rhs_msv_LAT";
					atlOffset=-3.8146973e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4758.7505,63.662304,3136.8245};
						angles[]={0.18325466,3.7997913,6.0526891};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.28024882;
					};
					id=523;
					type="rhs_msv_machinegunner";
					atlOffset=-4.196167e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.02;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4734.8477,65.726601,3153.2981};
						angles[]={0.1845428,3.5018287,6.0577502};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.3073712;
						rank="CORPORAL";
					};
					id=524;
					type="rhs_msv_efreitor";
					atlOffset=-5.3405762e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4757.4805,66.798019,3125.1653};
						angles[]={0.27424487,3.7997913,5.9917288};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.34353429;
						rank="SERGEANT";
						init="id = [group this] execVM ""customization\ai\paraflareGrp.sqf"";";
					};
					id=525;
					type="rhs_msv_junior_sergeant";
					atlOffset=-7.6293945e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.03;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item8
				{
					dataType="Waypoint";
					position[]={4761.5684,70.04174,3111.5679};
					type="Guard";
					class Effects
					{
					};
					showWP="NEVER";
					id=154;
				};
			};
			class Attributes
			{
			};
			id=145;
			atlOffset=-3.8146973e-005;
		};
		class Item64
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4533.6797,116.10329,3406.9016};
				angles[]={6.0917802,0,0.074527748};
			};
			name="blufor_obj2";
			id=155;
			type="Logic";
		};
		class Item65
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=8;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4558.894,57.648228,3119.8071};
						angles[]={6.1076751,2.840209,0.17032668};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.2666873;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=162;
					type="rhs_msv_rifleman";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4472.9399,51.718266,3178.25};
						angles[]={6.0438657,3.6833427,0.066566855};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.2666873;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=164;
					type="rhs_msv_rifleman";
					atlOffset=-3.8146973e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4524.4951,56.120846,3145.4011};
						angles[]={6.1901245,3.8799367,0.15084881};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.26216683;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=508;
					type="rhs_msv_LAT";
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4522.2969,54.300171,3133.877};
						angles[]={5.9270511,3.8799367,0.43772858};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.31641188;
						rank="CORPORAL";
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=509;
					type="rhs_msv_efreitor";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4496.0332,51.692978,3168.866};
						angles[]={6.0501661,3.3822911,0.13386676};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.35709548;
						rank="SERGEANT";
						init="group this enableAttack false; id = [this] execVM ""customization\ai\inTrench.sqf""; id = [group this] execVM ""customization\ai\paraflareGrp.sqf"";" \n " {" \n "  _x setVariable [""ASR_AI_Exclude"", true];" \n " } foreach units group this;";
					};
					id=510;
					type="rhs_msv_junior_sergeant";
					class CustomAttributes
					{
						class Attribute0
						{
							property="acex_headless_blacklist";
							expression="_this setVariable [""acex_headless_blacklist"",_value,true]";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"BOOL"
										};
									};
									value=0;
								};
							};
						};
						class Attribute1
						{
							property="speaker";
							expression="_this setspeaker _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="RHS_Male03RUS";
								};
							};
						};
						class Attribute2
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						class Attribute3
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						nAttributes=4;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4492.4658,54.123341,3180.0371};
						angles[]={6.0176158,3.3822911,0.13517575};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.3028504;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=511;
					type="rhs_msv_machinegunner";
					atlOffset=-3.8146973e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4473.0928,53.315166,3189.5791};
						angles[]={6.1756029,3.6833427,0.091734506};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.25764662;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=512;
					type="rhs_msv_LAT";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4550.0742,57.353519,3127.54};
						angles[]={6.1232257,2.840209,0.18196802};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.27120751;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=513;
					type="rhs_msv_grenadier";
					atlOffset=-3.8146973e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.05;
								};
							};
						};
						nAttributes=2;
					};
				};
			};
			class Attributes
			{
			};
			id=156;
		};
		class Item66
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=12;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4592.8291,99.472183,3425.0796};
						angles[]={0.0093350215,2.7296581,5.7546139};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.2666873;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=185;
					type="rhs_msv_rifleman";
					atlOffset=7.6293945e-005;
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4479.9653,108.85168,3402.7957};
						angles[]={6.1232305,2.1523337,0.17421561};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.24860592;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=188;
					type="rhs_msv_rifleman";
					atlOffset=-7.6293945e-006;
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4538.8892,116.05589,3398.9421};
						angles[]={6.2818413,3.2218254,0.030647982};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.3661359;
						rank="SERGEANT";
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";" \n " {" \n "  _x setVariable [""ASR_AI_Exclude"", true];" \n " } foreach units group this;";
					};
					id=526;
					type="rhs_msv_junior_sergeant";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="acex_headless_blacklist";
							expression="_this setVariable [""acex_headless_blacklist"",_value,true]";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"BOOL"
										};
									};
									value=0;
								};
							};
						};
						class Attribute1
						{
							property="speaker";
							expression="_this setspeaker _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="RHS_Male02RUS";
								};
							};
						};
						class Attribute2
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.04;
								};
							};
						};
						class Attribute3
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						nAttributes=4;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4530.9561,115.53156,3399.3176};
						angles[]={-0,3.2218246,0.073202357};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.3028504;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=531;
					type="rhs_msv_machinegunner";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.01;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4436.4443,101.55478,3415.2285};
						angles[]={0.0066592805,3.1491404,0.13386136};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.27572832;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=537;
					type="rhs_msv_LAT";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4442.8286,102.46471,3415.113};
						angles[]={0.0080009829,3.1491404,0.15214734};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.38421786;
						rank="CORPORAL";
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=538;
					type="rhs_msv_efreitor";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.97000003;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4583.6812,105.91673,3431.7578};
						angles[]={0.4122704,2.7296596,5.4718189};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.26216683;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=541;
					type="rhs_msv_LAT";
					atlOffset=7.6293945e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4468.2417,106.62093,3403.168};
						angles[]={6.0238276,2.1523395,0.18067531};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.27120751;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=542;
					type="rhs_msv_grenadier";
					atlOffset=-1.5258789e-005;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.05;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item8
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4580.0044,96.536247,3313.031};
						angles[]={6.0960674,3.9311872,0.085126832};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.24408573;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=543;
					type="rhs_msv_LAT";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.04;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item9
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4583.6289,95.4655,3305.8774};
						angles[]={6.0986423,3.813982,0.058600098};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.3299728;
						rank="CORPORAL";
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=545;
					type="rhs_msv_efreitor";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item10
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4509.5815,113.35802,3402.4214};
						angles[]={6.1716499,3.3107791,0.10098908};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.3299728;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=549;
					type="rhs_msv_grenadier_rpg";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item11
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4502.6304,112.69656,3403.8479};
						angles[]={6.1716499,3.1833279,0.12468339};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.24860592;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=550;
					type="rhs_msv_machinegunner_assistant";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.03;
								};
							};
						};
						nAttributes=2;
					};
				};
			};
			class Attributes
			{
			};
			id=165;
			atlOffset=-7.6293945e-006;
		};
		class Item67
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=4;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4307.5757,53.263813,3206.4509};
						angles[]={6.276526,3.8321185,0.083802827};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.29832989;
						init=" this allowFleeing 0.75;";
					};
					id=200;
					type="rhs_msv_rifleman";
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4308.3672,53.26862,3201.8066};
						angles[]={6.2352223,3.8321123,0.083803542};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.2892895;
						init=" this allowFleeing 0.75;";
					};
					id=552;
					type="rhs_msv_grenadier";
					atlOffset=-3.8146973e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.05;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item2
				{
					dataType="Waypoint";
					position[]={4305.0771,52.745857,3196.6531};
					combatMode="GREEN";
					combat="STEALTH";
					expCond="fleeing this";
					class Effects
					{
					};
					showWP="NEVER";
					id=201;
					type="Move";
					atlOffset=3.8146973e-006;
				};
				class Item3
				{
					dataType="Waypoint";
					position[]={4477.2266,118.81525,3432.5437};
					class Effects
					{
					};
					showWP="NEVER";
					id=202;
					type="Move";
				};
			};
			class Attributes
			{
			};
			id=198;
			atlOffset=-3.8146973e-006;
		};
		class Item68
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=4;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4291.3027,73.137062,3311.9021};
						angles[]={5.9868431,3.0891843,0.12730782};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.29832989;
						init=" this allowFleeing 0.75;";
					};
					id=205;
					type="rhs_msv_rifleman";
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4295.0278,72.733345,3309.0181};
						angles[]={5.986846,3.0891802,0.12730432};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.2892895;
						init=" this allowFleeing 0.75;";
					};
					id=553;
					type="rhs_msv_LAT";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Waypoint";
					position[]={4296.0552,71.620209,3302.9836};
					combatMode="GREEN";
					combat="STEALTH";
					expCond="fleeing this";
					class Effects
					{
					};
					showWP="NEVER";
					id=206;
					type="Move";
				};
				class Item3
				{
					dataType="Waypoint";
					position[]={4420.7646,158.93011,3544.9019};
					class Effects
					{
					};
					showWP="NEVER";
					id=207;
					type="Move";
				};
			};
			class Attributes
			{
			};
			id=203;
		};
		class Item69
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=15;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4624.8882,95.067627,3488.321};
						angles[]={6.2179461,3.834949,0.097026743};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.24408573;
					};
					id=209;
					type="rhs_msv_rifleman";
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4591.1289,98.104584,3485.031};
						angles[]={6.2711778,3.7384255,6.0263247};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.25764662;
					};
					id=554;
					type="rhs_msv_LAT";
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.97000003;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4590.5781,98.210068,3473.3171};
						angles[]={0.0053232545,3.7384255,6.0015416};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.284769;
						rank="CORPORAL";
					};
					id=555;
					type="rhs_msv_efreitor";
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4626.5669,96.045166,3499.928};
						angles[]={6.2139654,3.8349421,0.11154399};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.26216683;
					};
					id=556;
					type="rhs_msv_grenadier";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item4
				{
					dataType="Waypoint";
					position[]={4584.3345,106.57219,3402.3433};
					formation="STAG COLUMN";
					speed="LIMITED";
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=213;
					type="Move";
				};
				class Item5
				{
					dataType="Waypoint";
					position[]={4581.9272,107.75186,3400.2471};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=214;
					type="Move";
				};
				class Item6
				{
					dataType="Waypoint";
					position[]={4645.0605,132.4751,3687.1833};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=215;
					type="Move";
					atlOffset=-1.5258789e-005;
				};
				class Item7
				{
					dataType="Waypoint";
					position[]={4640.8242,131.12846,3688.2412};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=216;
					type="Move";
				};
				class Item8
				{
					dataType="Waypoint";
					position[]={4461.7134,155.61807,3590.1992};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=217;
					type="Move";
				};
				class Item9
				{
					dataType="Waypoint";
					position[]={4458.6021,156.37724,3590.5181};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=218;
					type="Move";
				};
				class Item10
				{
					dataType="Waypoint";
					position[]={4322.5742,97.932228,3420.4395};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=219;
					type="Move";
				};
				class Item11
				{
					dataType="Waypoint";
					position[]={4319.3701,96.756264,3415.1738};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=220;
					type="Move";
				};
				class Item12
				{
					dataType="Waypoint";
					position[]={4433.2861,53.834934,3211.2937};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=221;
					type="Move";
				};
				class Item13
				{
					dataType="Waypoint";
					position[]={4435.8335,53.549278,3210.0496};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=222;
					type="Move";
				};
				class Item14
				{
					dataType="Waypoint";
					position[]={4584.3687,106.60099,3406.4358};
					type="Cycle";
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=223;
					atlOffset=-7.6293945e-006;
				};
			};
			class Attributes
			{
			};
			id=208;
		};
		class Item70
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=4;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4827.6348,29.680643,2847.7241};
						angles[]={6.154572,4.0637021,6.1362457};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.38873807;
						rank="SERGEANT";
						init=" this allowFleeing 0.75;";
					};
					id=559;
					type="rhs_msv_junior_sergeant";
					atlOffset=1.9073486e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.02;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4827.9331,30.36392,2852.426};
						angles[]={6.1258264,4.0637021,6.1128583};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.29832989;
						init=" this allowFleeing 0.75;";
					};
					id=560;
					type="rhs_msv_machinegunner";
					atlOffset=-1.9073486e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item2
				{
					dataType="Waypoint";
					position[]={4823.2627,29.612444,2843.4641};
					combatMode="GREEN";
					combat="STEALTH";
					expCond="fleeing this";
					class Effects
					{
					};
					showWP="NEVER";
					id=232;
					type="Move";
					atlOffset=-1.9073486e-006;
				};
				class Item3
				{
					dataType="Waypoint";
					position[]={4926.9443,77.699486,3016.0344};
					class Effects
					{
					};
					showWP="NEVER";
					id=233;
					type="Move";
				};
			};
			class Attributes
			{
			};
			id=229;
			atlOffset=1.9073486e-006;
		};
		class Item71
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=15;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4741.667,77.258591,3251.4714};
						angles[]={6.0922084,4.0950208,0.14823833};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.24408573;
					};
					id=235;
					type="rhs_msv_rifleman";
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4708.1992,74.471992,3256.9751};
						angles[]={6.1076751,3.998497,0.089099057};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.25764662;
					};
					id=561;
					type="rhs_msv_LAT";
					atlOffset=-7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.02;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4704.6548,72.362343,3245.7971};
						angles[]={6.1232257,3.998497,0.066566855};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.284769;
						rank="CORPORAL";
					};
					id=562;
					type="rhs_msv_efreitor";
					atlOffset=7.6293945e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.02;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4746.2739,80.088768,3262.2581};
						angles[]={6.0870628,4.0950136,0.14953981};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.26216683;
					};
					id=563;
					type="rhs_msv_grenadier";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Waypoint";
					position[]={4680.3823,75.229233,3178.8135};
					formation="STAG COLUMN";
					speed="LIMITED";
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=239;
					type="Move";
				};
				class Item5
				{
					dataType="Waypoint";
					position[]={4677.5156,76.441505,3177.406};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=240;
					type="Move";
				};
				class Item6
				{
					dataType="Waypoint";
					position[]={4886.77,25.519243,2809.603};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=241;
					type="Move";
				};
				class Item7
				{
					dataType="Waypoint";
					position[]={4886.3569,25.615816,2813.9487};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=242;
					type="Move";
					atlOffset=-1.9073486e-006;
				};
				class Item8
				{
					dataType="Waypoint";
					position[]={5396.3076,45.661957,2991.3477};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=243;
					type="Move";
				};
				class Item9
				{
					dataType="Waypoint";
					position[]={5395.5732,45.798672,2994.3887};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=244;
					type="Move";
				};
				class Item10
				{
					dataType="Waypoint";
					position[]={5315.2319,136.28979,3367.1614};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=245;
					type="Move";
				};
				class Item11
				{
					dataType="Waypoint";
					position[]={5309.1987,136.48868,3368.4299};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=246;
					type="Move";
				};
				class Item12
				{
					dataType="Waypoint";
					position[]={5034.7905,167.44888,3454.4578};
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=247;
					type="Move";
					atlOffset=1.5258789e-005;
				};
				class Item13
				{
					dataType="Waypoint";
					position[]={5034.4644,166.02946,3451.6414};
					combat="STEALTH";
					class Effects
					{
					};
					timeoutMin=30;
					timeoutMid=60;
					timeoutMax=90;
					showWP="NEVER";
					id=248;
					type="Move";
				};
				class Item14
				{
					dataType="Waypoint";
					position[]={4681.4697,74.108147,3182.7595};
					type="Cycle";
					combat="AWARE";
					class Effects
					{
					};
					showWP="NEVER";
					id=249;
				};
			};
			class Attributes
			{
			};
			id=234;
		};
		class Item72
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=4;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4471.6069,23.224443,2970.7278};
						angles[]={6.2219291,4.5304732,6.2405434};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.38873807;
						rank="SERGEANT";
						init=" this allowFleeing 0.75;";
					};
					id=564;
					type="rhs_msv_junior_sergeant";
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4473.9883,23.375502,2974.7937};
						angles[]={6.2192731,4.5304732,6.2432079};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.29832989;
						init=" this allowFleeing 0.75;";
					};
					id=565;
					type="rhs_msv_machinegunner";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Waypoint";
					position[]={4465.8081,22.59086,2968.8857};
					combatMode="GREEN";
					combat="STEALTH";
					expCond="fleeing this";
					class Effects
					{
					};
					showWP="NEVER";
					id=253;
					type="Move";
				};
				class Item3
				{
					dataType="Waypoint";
					position[]={4590.8867,85.16584,3237.4561};
					class Effects
					{
					};
					showWP="NEVER";
					id=254;
					type="Move";
				};
			};
			class Attributes
			{
			};
			id=250;
		};
		class Item73
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=8;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5124.064,24.715101,2895.1621};
						angles[]={6.1050916,1.3940991,0.085119702};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.2666873;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=261;
					type="rhs_msv_rifleman";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5071.2549,23.861427,2861.8621};
						angles[]={6.232553,3.6833427,6.2525201};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.2666873;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=263;
					type="rhs_msv_rifleman";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5036.7002,27.150114,2899.2971};
						angles[]={0.010663962,2.8878567,6.2365503};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.26216683;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=514;
					type="rhs_msv_LAT";
					atlOffset=-1.9073486e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.01;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5046.1201,26.757952,2898.7991};
						angles[]={0.0066671576,2.8878567,6.2458701};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.31641188;
						rank="CORPORAL";
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=515;
					type="rhs_msv_efreitor";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.05;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5065.4492,24.483406,2870.9832};
						angles[]={6.232553,3.6833427,6.2565165};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.25764662;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=516;
					type="rhs_msv_LAT";
					atlOffset=-1.9073486e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.02;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5121.4878,24.494761,2886.6091};
						angles[]={6.2778444,1.3940991,6.2551899};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.27120751;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=517;
					type="rhs_msv_grenadier";
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.04;
								};
							};
						};
						nAttributes=2;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5106.6572,31.362915,2937.843};
						angles[]={6.0539536,3.1833408,0.02799508};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.35709548;
						rank="SERGEANT";
						init="group this enableAttack false; id = [this] execVM ""customization\ai\inTrench.sqf""; id = [group this] execVM ""customization\ai\paraflareGrp.sqf"";" \n " {" \n "  _x setVariable [""ASR_AI_Exclude"", true];" \n " } foreach units group this;";
					};
					id=518;
					type="rhs_msv_junior_sergeant";
					class CustomAttributes
					{
						class Attribute0
						{
							property="acex_headless_blacklist";
							expression="_this setVariable [""acex_headless_blacklist"",_value,true]";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"BOOL"
										};
									};
									value=0;
								};
							};
						};
						class Attribute1
						{
							property="speaker";
							expression="_this setspeaker _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="RHS_Male04RUS";
								};
							};
						};
						class Attribute2
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.04;
								};
							};
						};
						nAttributes=3;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5097.8262,31.571407,2939.6799};
						angles[]={6.0640941,3.1833408,0.01733112};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.3028504;
						init="id = [this] execVM ""customization\ai\inTrench.sqf"";";
					};
					id=519;
					type="rhs_msv_machinegunner";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
			};
			class Attributes
			{
			};
			id=255;
		};
		class Item74
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=4;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5467.353,67.226677,3111.0112};
						angles[]={6.0793886,3.3269093,0.1141679};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.29832989;
						init=" this allowFleeing 0.75;";
					};
					id=296;
					type="rhs_msv_rifleman";
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={5470.293,66.728706,3107.3311};
						angles[]={6.0793829,3.3269117,0.0877726};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.2892895;
						init=" this allowFleeing 0.75;";
					};
					id=576;
					type="rhs_msv_RShG2";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Waypoint";
					position[]={5469.8823,65.488976,3101.2244};
					combatMode="GREEN";
					combat="STEALTH";
					expCond="fleeing this";
					class Effects
					{
					};
					showWP="NEVER";
					id=297;
					type="Move";
				};
				class Item3
				{
					dataType="Waypoint";
					position[]={5328.751,164.59407,3470.71};
					class Effects
					{
					};
					showWP="NEVER";
					id=298;
					type="Move";
				};
			};
			class Attributes
			{
			};
			id=294;
		};
		class Item75
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=4;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4878.5386,23.503712,2735.613};
						angles[]={6.1888003,3.751591,6.2565231};
					};
					side="East";
					flags=4;
					class Attributes
					{
						skill=0.29832989;
						init=" this allowFleeing 0.75;";
					};
					id=301;
					type="rhs_msv_rifleman";
					atlOffset=-3.8146973e-006;
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4879.7021,23.037971,2731.0464};
						angles[]={6.187479,3.7515936,6.2578554};
					};
					side="East";
					flags=6;
					class Attributes
					{
						skill=0.2892895;
						init=" this allowFleeing 0.75;";
					};
					id=577;
					type="rhs_msv_LAT";
					atlOffset=-3.8146973e-006;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.97000003;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Waypoint";
					position[]={4876.8345,22.515015,2725.647};
					combatMode="GREEN";
					combat="STEALTH";
					expCond="fleeing this";
					class Effects
					{
					};
					showWP="NEVER";
					id=302;
					type="Move";
				};
				class Item3
				{
					dataType="Waypoint";
					position[]={4936.4458,99.036736,3175.8013};
					class Effects
					{
					};
					showWP="NEVER";
					id=303;
					type="Move";
				};
			};
			class Attributes
			{
			};
			id=299;
			atlOffset=-3.8146973e-006;
		};
		class Item76
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={3399.2297,9.4704285,2429.0586};
				angles[]={6.2020311,0.72523773,6.200707};
			};
			name="fob_b";
			id=314;
			type="Logic";
		};
		class Item77
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={3418.9136,8.6384144,2440.2463};
				angles[]={0,0.059143625,0};
			};
			name="coyhq_b";
			id=344;
			type="Logic";
		};
		class Item78
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=1;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4806.8018,55.920971,3110.2681};
						angles[]={6.1650786,3.9447408,6.19276};
					};
					side="East";
					flags=6;
					class Attributes
					{
						name="rbatt1G";
					};
					id=347;
					type="rhs_msv_rifleman";
					atlOffset=-0.0029983521;
					class CustomAttributes
					{
						class Attribute0
						{
							property="face";
							expression="_this setface _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"STRING"
										};
									};
									value="";
								};
							};
						};
						class Attribute1
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=2;
					};
				};
			};
			class Attributes
			{
			};
			class CrewLinks
			{
				class LinkIDProvider
				{
					nextID=1;
				};
				class Links
				{
					items=1;
					class Item0
					{
						linkID=0;
						item0=347;
						item1=346;
						class CustomData
						{
							role=2;
							turretPath[]={0};
						};
					};
				};
			};
			id=345;
			atlOffset=-0.0029983521;
		};
		class Item79
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4806.8667,56.637947,3110.1328};
				angles[]={6.1650786,3.9447408,6.19276};
			};
			side="East";
			flags=6;
			class Attributes
			{
				skill=0.33333331;
				rank="CORPORAL";
				lock="LOCKEDPLAYER";
				name="rbatt1";
			};
			id=346;
			type="rhs_2b14_82mm_msv";
			atlOffset=-0.0029983521;
		};
		class Item80
		{
			dataType="Group";
			side="East";
			class Entities
			{
				items=1;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4545.7129,117.74525,3417.4585};
						angles[]={6.1356401,3.6991382,0.04796192};
					};
					side="East";
					flags=6;
					class Attributes
					{
						name="rbatt2G";
					};
					id=353;
					type="rhs_msv_rifleman";
					atlOffset=2.2888184e-005;
				};
			};
			class Attributes
			{
			};
			class CrewLinks
			{
				class LinkIDProvider
				{
					nextID=1;
				};
				class Links
				{
					items=1;
					class Item0
					{
						linkID=0;
						item0=353;
						item1=352;
						class CustomData
						{
							role=2;
							turretPath[]={0};
						};
					};
				};
			};
			id=351;
			atlOffset=-0.0039749146;
		};
		class Item81
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4545.7217,118.46873,3417.3633};
				angles[]={6.1356401,3.6991382,0.04796192};
			};
			side="East";
			flags=6;
			class Attributes
			{
				skill=0.33333331;
				rank="CORPORAL";
				lock="LOCKEDPLAYER";
				name="rbatt2";
			};
			id=352;
			type="rhs_2b14_82mm_msv";
			atlOffset=-0.0039749146;
		};
		class Item82
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={3654.4341,6.9063706,2476.4409};
				angles[]={6.2751846,0,6.2805333};
			};
			name="target1";
			id=357;
			type="Logic";
		};
		class Item83
		{
			dataType="Group";
			side="West";
			class Entities
			{
				items=8;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4272.105,6.3245344,2482.6326};
						angles[]={0.033026427,1.8575605,6.2634473};
					};
					side="West";
					flags=6;
					class Attributes
					{
						skill=0.60000002;
						rank="SERGEANT";
						init="plt22_sect1_b = group this; [this, ""CAF_sectcomd"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_1ic";
						description="1 Section Commander (Fireteam Alpha)";
						isPlayable=1;
					};
					id=442;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.03;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4274.7549,6.2906528,2482.2256};
						angles[]={0.048369214,1.8120598,6.2634473};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect1_b = group this; [this, ""CAF_rifleman"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_r1";
						description="1 Section Rifleman (Fireteam Alpha)";
						isPlayable=1;
					};
					id=443;
					type="B_Soldier_F";
					atlOffset=9.5367432e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.97000003;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4270.1191,6.3478694,2483.1128};
						angles[]={0.033026427,1.7754952,6.2634473};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect1_b = group this; [this, ""CAF_lmg"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_lmg2";
						description="1 Section C9 Gunner (Fireteam Bravo)";
						isPlayable=1;
					};
					id=444;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4267.834,6.3687296,2483.877};
						angles[]={0.033026427,1.8113617,6.2634473};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect1_b = group this; [this, ""CAF_grenadier"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_gl2";
						description="1 Section Grenadier (Fireteam Bravo)";
						isPlayable=1;
					};
					id=445;
					type="B_Soldier_F";
					atlOffset=0.00099897385;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4265.877,6.3787704,2484.1218};
						angles[]={0.04663061,1.6872164,6.2628789};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect1_b = group this; [this, ""CAF_rifleman"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_r2";
						description="1 Section Rifleman (Fireteam Charlie)";
						isPlayable=1;
					};
					id=446;
					type="B_Soldier_F";
					atlOffset=0.00099945068;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4264.0811,6.4017906,2484.4102};
						angles[]={0.04663061,1.7770311,6.2628789};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect1_b = group this; [this, ""CAF_grenadier"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_gl1";
						description="1 Section Grenadier (Fireteam Charlie)";
						isPlayable=1;
					};
					id=447;
					type="B_Soldier_F";
					atlOffset=0.00099897385;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4260.2759,6.4480348,2485.0537};
						angles[]={0.04663061,1.8869344,6.2628789};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_sect1_b = group this; [this, ""CAF_sect2ic"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_2ic";
						description="1 Section 2IC (Fireteam Delta)";
						isPlayable=1;
					};
					id=448;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.03;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4262.2056,6.4269733,2484.6865};
						angles[]={0.04663061,1.7650582,6.2628789};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect1_b = group this; [this, ""CAF_lmg"", ""22PLT1SECT""] call FNC_GearScript;";
						name="plt22_sect1_lmg1";
						description="1 Section C9 Gunner (Fireteam Delta)";
						isPlayable=1;
					};
					id=449;
					type="B_Soldier_F";
					atlOffset=0.00099849701;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.05;
								};
							};
						};
						nAttributes=1;
					};
				};
			};
			class Attributes
			{
			};
			id=441;
			atlOffset=4.7683716e-007;
		};
		class Item84
		{
			dataType="Group";
			side="West";
			class Entities
			{
				items=5;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4250.4048,6.8120446,2494.3027};
						angles[]={6.1554503,1.9267813,6.2806482};
					};
					side="West";
					flags=6;
					class Attributes
					{
						skill=0.60000002;
						rank="LIEUTENANT";
						init="plt22_plthq_b = group this; [this, ""CAF_plcomd"", ""22PLTHQ""] call FNC_GearScript;";
						name="plt22_plthq_1ic";
						description="22 Platoon Commander";
						isPlayable=1;
					};
					id=451;
					type="B_Soldier_F";
					atlOffset=-9.5367432e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.03;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4186.1548,6.3680263,2506.9883};
						angles[]={6.2075958,1.7216877,6.2767353};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="SERGEANT";
						init="plt22_plthq_b = group this; [this, ""CAF_pl2ic"", ""22PLTHQ""] call FNC_GearScript;";
						name="plt22_plthq_2ic";
						description="22 Platoon 2IC";
						isPlayable=1;
					};
					id=452;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.97000003;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4248.6807,6.8829999,2494.821};
						angles[]={6.1554503,1.7923203,6.2806482};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_plthq_b = group this; [this, ""CAF_sig"", ""22PLTHQ""] call FNC_GearScript;";
						name="plt22_plthq_sig";
						description="22 Platoon Signaller";
						isPlayable=1;
					};
					id=453;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.01;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4187.6919,6.3415551,2506.7698};
						angles[]={6.2075958,1.8739327,6.2767353};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_plthq_b = group this; [this, ""CAF_medic"", ""22PLTHQ""] call FNC_GearScript; _setMed = [this,2] call FNC_assignMedic;";
						name="plt22_plthq_medic";
						description="22 Platoon Medic";
						isPlayable=1;
					};
					id=454;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.97000003;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4177.5615,6.4285803,2511.4197};
						angles[]={6.2599363,1.7923037,6.2762284};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="LIEUTENANT";
						init="plt22_plthq_b = group this; [this, ""CAF_pl2ic"", ""22PLTHQ""] call FNC_GearScript;";
						name="plt22_plthq_driver";
						description="22 Platoon Driver";
						isPlayer=1;
						isPlayable=1;
					};
					id=455;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
			};
			class Attributes
			{
			};
			id=450;
			atlOffset=-9.5367432e-007;
		};
		class Item85
		{
			dataType="Group";
			side="West";
			class Entities
			{
				items=8;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4237.249,6.5915036,2486.1729};
						angles[]={0.048323579,1.8480061,6.2643499};
					};
					side="West";
					flags=6;
					class Attributes
					{
						skill=0.60000002;
						rank="SERGEANT";
						init="plt22_wepdet_b = group this; [this, ""CAF_wepcomd"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_1ic";
						description="22 Platoon Weapons Detachment Commander (Fireteam Alpha)";
						isPlayable=1;
					};
					id=457;
					type="B_Soldier_F";
					atlOffset=-4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.94999999;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4221.4517,6.73982,2489.4236};
						angles[]={0.099637419,1.8211629,6.2730193};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_wepdet_b = group this; [this, ""CAF_wepcomd"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_2ic";
						description="22 Platoon Weapons Detachment 2IC (Fireteam Alpha)";
						isPlayable=1;
					};
					id=458;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.97000003;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4230.4902,6.7013054,2487.6772};
						angles[]={0.077541664,1.7298473,6.2350473};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_wepdet_b = group this; [this, ""CAF_gpmg"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_mmg1";
						description="22 Platoon Weapons Detachment C6 Gunner (Fireteam Bravo)";
						isPlayable=1;
					};
					id=459;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.04;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4228.3267,6.7119832,2488.2056};
						angles[]={0.077542439,1.6694075,6.2663908};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_wepdet_b = group this; [this, ""CAF_gpmgno2"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_mmg_ag1";
						description="22 Platoon Weapons Detachment C6 No. 2 (Fireteam Bravo)";
						isPlayable=1;
					};
					id=460;
					type="B_Soldier_F";
					atlOffset=-4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4234.9888,6.6073279,2486.7261};
						angles[]={0.048323579,1.8034828,6.2643499};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_wepdet_b = group this; [this, ""CAF_gpmg"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_mmg2";
						description="22 Platoon Weapons Detachment C6 Gunner (Fireteam Charlie)";
						isPlayable=1;
					};
					id=461;
					type="B_Soldier_F";
					atlOffset=-4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.04;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4232.6821,6.629961,2487.2363};
						angles[]={0.077541664,1.8436952,6.2350473};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_wepdet_b = group this; [this, ""CAF_gpmgno2"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_mmg_ag2";
						description="22 Platoon Weapons Detachment C6 No. 2 (Fireteam Charlie)";
						isPlayable=1;
					};
					id=462;
					type="B_Soldier_F";
					atlOffset=-4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4225.8696,6.7256145,2488.5613};
						angles[]={0.077542439,1.7942849,6.2663908};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_wepdet_b = group this; [this, ""CAF_sraawm"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_mat";
						description="22 Platoon Weapons Detachment Carl Gustav Gunner (Fireteam Delta)";
						isPlayable=1;
					};
					id=463;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4223.7163,6.7347345,2488.9094};
						angles[]={0.077542439,1.8515142,6.2663908};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_wepdet_b = group this; [this, ""CAF_sraawmno2"", ""22PLTWEPDET""] call FNC_GearScript;";
						name="plt22_wepdet_mat_ag";
						description="22 Platoon Weapons Detachment Carl Gustav No. 2 (Fireteam Delta)";
						isPlayable=1;
					};
					id=464;
					type="B_Soldier_F";
					atlOffset=-4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.94999999;
								};
							};
						};
						nAttributes=1;
					};
				};
			};
			class Attributes
			{
			};
			id=456;
			atlOffset=-4.7683716e-007;
		};
		class Item86
		{
			dataType="Group";
			side="West";
			class Entities
			{
				items=8;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4217.4995,6.8432879,2501.1155};
						angles[]={6.162426,1.8879864,0.037807014};
					};
					side="West";
					flags=6;
					class Attributes
					{
						skill=0.60000002;
						rank="SERGEANT";
						init="plt22_sect2_b = group this; [this, ""CAF_sectcomd"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_1ic";
						description="2 Section Commander (Fireteam Alpha)";
						isPlayable=1;
					};
					id=466;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.01;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4215.3174,6.8089075,2501.5122};
						angles[]={6.162426,1.8972716,0.037807014};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect2_b = group this; [this, ""CAF_rifleman"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_r1";
						description="2 Section Rifleman (Fireteam Alpha)";
						isPlayable=1;
					};
					id=467;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.98000002;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4213.292,6.7574744,2501.9326};
						angles[]={6.1624265,1.8865727,0.052886143};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect2_b = group this; [this, ""CAF_lmg"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_lmg2";
						description="2 Section C9 Gunner (Fireteam Bravo)";
						isPlayable=1;
					};
					id=468;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4211.1489,6.700954,2502.4016};
						angles[]={6.1624265,1.7526536,0.052886143};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect2_b = group this; [this, ""CAF_grenadier"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_gl2";
						description="2 Section Grenadier (Fireteam Bravo)";
						isPlayable=1;
					};
					id=469;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.01;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4209.0293,6.6777301,2502.7979};
						angles[]={6.2185154,1.8723657,6.2795315};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect2_b = group this; [this, ""CAF_grenadier"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_gl1";
						description="2 Section Grenadier (Fireteam Charlie)";
						isPlayable=1;
					};
					id=470;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.05;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4206.9985,6.6777172,2503.0706};
						angles[]={6.2185144,1.7610487,0.046357449};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect2_b = group this; [this, ""CAF_rifleman"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_r2";
						description="2 Section Rifleman (Fireteam Charlie)";
						isPlayable=1;
					};
					id=471;
					type="B_Soldier_F";
					atlOffset=9.5367432e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4202.7476,6.5353508,2503.9172};
						angles[]={6.2185144,1.7025975,0.046357449};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_sect2_b = group this; [this, ""CAF_sect2ic"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_2ic";
						description="2 Section 2IC (Fireteam Delta)";
						isPlayable=1;
					};
					id=472;
					type="B_Soldier_F";
					atlOffset=9.5367432e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4204.8843,6.6072288,2503.4968};
						angles[]={6.2185144,1.8590664,0.046357449};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect2_b = group this; [this, ""CAF_lmg"", ""22PLT2SECT""] call FNC_GearScript;";
						name="plt22_sect2_lmg1";
						description="2 Section C9 Gunner (Fireteam Delta)";
						isPlayable=1;
					};
					id=473;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.05;
								};
							};
						};
						nAttributes=1;
					};
				};
			};
			class Attributes
			{
			};
			id=465;
			atlOffset=4.7683716e-007;
		};
		class Item87
		{
			dataType="Group";
			side="West";
			class Entities
			{
				items=8;
				class Item0
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4191.5132,6.5925674,2495.457};
						angles[]={0.069699042,1.7522398,0.0064316224};
					};
					side="West";
					flags=6;
					class Attributes
					{
						skill=0.60000002;
						rank="SERGEANT";
						init="plt22_sect3_b = group this; [this, ""CAF_sectcomd"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_1ic";
						description="3 Section Commander (Fireteam Alpha)";
						isPlayable=1;
					};
					id=475;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.01;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item1
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4189.6772,6.5656514,2495.6736};
						angles[]={0.069699042,1.8829126,0.0064316224};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect3_b = group this; [this, ""CAF_rifleman"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_r1";
						description="3 Section Rifleman (Fireteam Alpha)";
						isPlayable=1;
					};
					id=476;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.04;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item2
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4185.9463,6.4742923,2496.6387};
						angles[]={0.069699042,1.8636442,0.0064316224};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect3_b = group this; [this, ""CAF_grenadier"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_gl2";
						description="3 Section Grenadier (Fireteam Bravo)";
						isPlayable=1;
					};
					id=477;
					type="B_Soldier_F";
					atlOffset=-4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.94999999;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item3
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4187.8921,6.5261354,2496.0752};
						angles[]={0.069699042,1.8409375,0.0064316224};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect3_b = group this; [this, ""CAF_lmg"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_lmg2";
						description="3 Section C9 Gunner (Fireteam Bravo)";
						isPlayable=1;
					};
					id=478;
					type="B_Soldier_F";
					atlOffset=4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.95999998;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item4
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4181.731,6.4657669,2497.4861};
						angles[]={0.090217344,1.8597172,6.2662425};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect3_b = group this; [this, ""CAF_grenadier"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_gl1";
						description="3 Section Grenadier (Fireteam Charlie)";
						isPlayable=1;
					};
					id=479;
					type="B_Soldier_F";
					atlOffset=-9.5367432e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item5
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4183.9111,6.4655514,2497.0801};
						angles[]={0.090217344,1.7319766,6.2662425};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect3_b = group this; [this, ""CAF_rifleman"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_r2";
						description="3 Section Rifleman (Fireteam Charlie)";
						isPlayable=1;
					};
					id=480;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=1.03;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item6
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4177.6177,6.4985738,2498.4802};
						angles[]={0.033428323,1.8660004,6.2662425};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						rank="CORPORAL";
						init="plt22_sect3_b = group this; [this, ""CAF_sect2ic"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_2ic";
						description="3 Section 2IC (Fireteam Delta)";
						isPlayable=1;
					};
					id=481;
					type="B_Soldier_F";
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
				class Item7
				{
					dataType="Object";
					class PositionInfo
					{
						position[]={4179.6768,6.48105,2497.9609};
						angles[]={0.033428323,1.7867275,6.2662425};
					};
					side="West";
					flags=4;
					class Attributes
					{
						skill=0.60000002;
						init="plt22_sect3_b = group this; [this, ""CAF_lmg"", ""22PLT3SECT""] call FNC_GearScript;";
						name="plt22_sect3_lmg1";
						description="3 Section C9 Gunner (Fireteam Delta)";
						isPlayable=1;
					};
					id=482;
					type="B_Soldier_F";
					atlOffset=-4.7683716e-007;
					class CustomAttributes
					{
						class Attribute0
						{
							property="pitch";
							expression="_this setpitch _value;";
							class Value
							{
								class data
								{
									class type
									{
										type[]=
										{
											"SCALAR"
										};
									};
									value=0.99000001;
								};
							};
						};
						nAttributes=1;
					};
				};
			};
			class Attributes
			{
			};
			id=474;
			atlOffset=4.7683716e-007;
		};
		class Item88
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={3408.4573,8.7023516,2428.634};
				angles[]={6.2166171,0.72523665,6.2033553};
			};
			name="fw_west_respawn";
			id=483;
			type="Logic";
		};
		class Item89
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3409.5491,8.6231422,2428.7561};
				angles[]={6.2166171,1.4774994,6.2033553};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
			};
			id=498;
			type="Land_ClutterCutter_large_F";
			atlOffset=-9.5367432e-007;
			class CustomAttributes
			{
				class Attribute0
				{
					property="ace_isMedicalFacility";
					expression="_this setVariable [""ace_medical_isMedicalFacility"",_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"BOOL"
								};
							};
							value=0;
						};
					};
				};
				nAttributes=1;
			};
		};
		class Item90
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3405.4441,8.8620567,2425.4919};
				angles[]={6.2020273,0,6.2179446};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				init="[this, ""boomBox""] call FNC_VehicleGearScript;";
				name="boomBox";
				description="Mortar Box";
			};
			id=499;
			type="Box_NATO_WpsSpecial_F";
			class CustomAttributes
			{
				class Attribute0
				{
					property="ace_isMedicalFacility";
					expression="_this setVariable [""ace_medical_isMedicalFacility"",_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"BOOL"
								};
							};
							value=0;
						};
					};
				};
				nAttributes=1;
			};
		};
		class Item91
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={3399.4038,11.214585,2426.5625};
				angles[]={6.188798,3.147265,6.2139654};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.33333331;
				lock="UNLOCKED";
				init="[this, ""truck""] call FNC_VehicleGearScript;";
				name="truck1_b";
			};
			id=500;
			type="rhsusf_M1083A1P2_wd_open_fmtv_usarmy";
			atlOffset=0.013999939;
			class CustomAttributes
			{
				class Attribute0
				{
					property="ammoBox";
					expression="[_this,_value] call bis_fnc_initAmmoBox;";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"STRING"
								};
							};
							value="[[[[""rhs_weap_m4_carryhandle"",""FirstAidKit""],[2,4]],[[""rhs_mag_30Rnd_556x45_M855A1_Stanag"",""rhs_mag_m67"",""rhs_mag_m18_green"",""rhs_mag_m18_red"",""rhs_mag_an_m8hc""],[10,2,2,2,4]],[[""ToolKit""],[1]],[[""rhsusf_falconii""],[1]]],false]";
						};
					};
				};
				nAttributes=1;
			};
		};
		class Item92
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4184.2041,12.239778,2471.4548};
			};
			name="HC";
			init="this setGroupId [""Headless Client""];";
			isPlayable=1;
			description="Headless Client";
			id=580;
			type="HeadlessClient_F";
			atlOffset=2.8089418;
		};
		class Item93
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4180.0029,9.2143841,2474.6658};
				angles[]={0.11760315,0,6.2444267};
			};
			name="adminZeus";
			id=581;
			type="ModuleCurator_F";
			class CustomAttributes
			{
				class Attribute0
				{
					property="ModuleCurator_F_Owner";
					expression="_this setVariable ['Owner',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"STRING"
								};
							};
							value="#adminVoted";
						};
					};
				};
				class Attribute1
				{
					property="ModuleCurator_F_Forced";
					expression="_this setVariable ['Forced',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"SCALAR"
								};
							};
							value=0;
						};
					};
				};
				class Attribute2
				{
					property="ModuleCurator_F_Name";
					expression="_this setVariable ['Name',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"STRING"
								};
							};
							value="";
						};
					};
				};
				class Attribute3
				{
					property="ModuleInfo";
					expression="false";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"BOOL"
								};
							};
							value=1;
						};
					};
				};
				class Attribute4
				{
					property="ModuleCurator_F_Addons";
					expression="_this setVariable ['Addons',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"SCALAR"
								};
							};
							value=3;
						};
					};
				};
				nAttributes=5;
			};
		};
		class Item94
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4190.7383,8.7679405,2474.7219};
				angles[]={0.13135491,0,6.2396646};
			};
			id=582;
			type="acex_headless_module";
			class CustomAttributes
			{
				class Attribute0
				{
					property="acex_headless_module_delay";
					expression="_this setVariable ['delay',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"SCALAR"
								};
							};
							value=15;
						};
					};
				};
				class Attribute1
				{
					property="acex_headless_module_log";
					expression="_this setVariable ['log',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"BOOL"
								};
							};
							value=0;
						};
					};
				};
				class Attribute2
				{
					property="acex_headless_module_enabled";
					expression="_this setVariable ['enabled',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"BOOL"
								};
							};
							value=1;
						};
					};
				};
				class Attribute3
				{
					property="acex_headless_module_endMission";
					expression="_this setVariable ['endMission',_value,true];";
					class Value
					{
						class data
						{
							class type
							{
								type[]=
								{
									"SCALAR"
								};
							};
							value=0;
						};
					};
				};
				nAttributes=4;
			};
		};
		class Item95
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4184.3809,12.441419,2469.6899};
			};
			name="HC_1";
			init="this setGroupId [""Headless Client""];";
			isPlayable=1;
			description="Headless Client";
			id=583;
			type="HeadlessClient_F";
			atlOffset=2.8089409;
		};
		class Item96
		{
			dataType="Logic";
			class PositionInfo
			{
				position[]={4184.0542,12.711663,2467.3088};
			};
			name="HC_2";
			init="this setGroupId [""Headless Client""];";
			isPlayable=1;
			description="Headless Client";
			id=584;
			type="HeadlessClient_F";
			atlOffset=2.8088932;
		};
		class Item97
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4438.8145,101.80058,3413.0781};
				angles[]={0.0066592805,4.8670654,0.13386136};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=585;
			type="Fort_EnvelopeSmall";
		};
		class Item98
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4440.4048,102.0239,3412.7813};
				angles[]={0.0080009829,1.7227547,0.15214734};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=586;
			type="Fort_EnvelopeSmall";
		};
		class Item99
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4438.7944,101.79863,3412.9636};
				angles[]={0.0066592805,4.8670654,0.13386136};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=587;
			type="Fort_EnvelopeSmall";
		};
		class Item100
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4440.3506,102.01585,3412.7429};
				angles[]={0.0080009829,1.7227442,0.15214734};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=588;
			type="Fort_EnvelopeSmall";
		};
		class Item101
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4581.4717,95.656372,3308.2305};
				angles[]={6.03758,2.5538468,0.14562827};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=589;
			type="Fort_EnvelopeSmall";
		};
		class Item102
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4580.6147,95.859818,3309.5947};
				angles[]={6.0960674,5.6927214,0.085126832};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=590;
			type="Fort_EnvelopeSmall";
		};
		class Item103
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4581.5698,95.685547,3308.2893};
				angles[]={6.03758,2.5538468,0.14562827};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=591;
			type="Fort_EnvelopeSmall";
		};
		class Item104
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4580.6802,95.86306,3309.5825};
				angles[]={6.0960674,5.6927109,0.085126832};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=592;
			type="Fort_EnvelopeSmall";
		};
		class Item105
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4473.062,107.26952,3402.2454};
				angles[]={6.0577502,4.868516,0.1768004};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=78;
			type="Fort_EnvelopeSmall";
		};
		class Item106
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4474.6685,107.51321,3402.0566};
				angles[]={6.0577502,1.7296391,0.1768004};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=79;
			type="Fort_EnvelopeSmall";
		};
		class Item107
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4473.1157,107.28807,3402.2847};
				angles[]={6.0577502,4.868506,0.1768004};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.8];";
			};
			id=80;
			type="Fort_EnvelopeSmall";
		};
		class Item108
		{
			dataType="Object";
			class PositionInfo
			{
				position[]={4474.6504,107.48349,3401.9412};
				angles[]={6.0577502,1.7296391,0.1768004};
			};
			side="Empty";
			flags=4;
			class Attributes
			{
				skill=0.60000002;
				init="this setPosATL [getPosATL this select 0, getPosATL this select 1, 0.4];";
			};
			id=77;
			type="Fort_EnvelopeSmall";
			atlOffset=1.5258789e-005;
		};
	};
};
class OutroLoose
{
	class Intel
	{
		startWeather=0.25;
		startWind=0.1;
		forecastWeather=0.25;
		forecastWind=0.1;
		forecastWaves=0.1;
		year=2008;
		month=10;
		day=11;
		hour=9;
		minute=20;
		startFogDecay=0.0049333;
		forecastFogDecay=0.0049333;
	};
};
class OutroWin
{
	class Intel
	{
		startWeather=0.25;
		startWind=0.1;
		forecastWeather=0.25;
		forecastWind=0.1;
		forecastWaves=0.1;
		year=2008;
		month=10;
		day=11;
		hour=9;
		minute=20;
		startFogDecay=0.0049333;
		forecastFogDecay=0.0049333;
	};
};
