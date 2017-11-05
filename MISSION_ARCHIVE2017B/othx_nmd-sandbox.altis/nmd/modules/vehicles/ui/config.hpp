/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-29 03:39:26
*/
 
#include "scripts\define.inc"

class NMD_RscDisplayGarage
{
	idd = IDD_RSCDISPLAYGARAGE;
	onLoad = "[ _this, ""NMD_RscDisplayGarage"", ""vehicles"" ] call NMD_fnc_initDisplay";

	class ControlsBackground
	{

		class Vignette: NMD_RscVignette
		{
			idc = 114998;
		};

		class TileGroup: NMD_RscControlsGroupNoScrollbars
		{
			idc = 115099;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
			disableCustomColors = 1;

			class Controls
			{

				class TileFrame: NMD_RscFrame
				{
					idc = 114999;
					x = 0;
					y = 0;
					w = "safezoneW";
					h = "safezoneH";
					colortext[] = { 0,0,0,1 };
				};

				class Tile_0_0: NMD_RscText
				{
					idc = 115000;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_1: NMD_RscText
				{
					idc = 115001;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_2: NMD_RscText
				{
					idc = 115002;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_3: NMD_RscText
				{
					idc = 115003;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_4: NMD_RscText
				{
					idc = 115004;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_5: NMD_RscText
				{
					idc = 115005;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_0: NMD_RscText
				{
					idc = 115010;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_1: NMD_RscText
				{
					idc = 115011;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_2: NMD_RscText
				{
					idc = 115012;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_3: NMD_RscText
				{
					idc = 115013;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_4: NMD_RscText
				{
					idc = 115014;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_5: NMD_RscText
				{
					idc = 115015;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_0: NMD_RscText
				{
					idc = 115020;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_1: NMD_RscText
				{
					idc = 115021;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_2: NMD_RscText
				{
					idc = 115022;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_3: NMD_RscText
				{
					idc = 115023;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_4: NMD_RscText
				{
					idc = 115024;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_5: NMD_RscText
				{
					idc = 115025;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_0: NMD_RscText
				{
					idc = 115030;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_1: NMD_RscText
				{
					idc = 115031;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_2: NMD_RscText
				{
					idc = 115032;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_3: NMD_RscText
				{
					idc = 115033;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_4: NMD_RscText
				{
					idc = 115034;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_5: NMD_RscText
				{
					idc = 115035;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_0: NMD_RscText
				{
					idc = 115040;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_1: NMD_RscText
				{
					idc = 115041;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_2: NMD_RscText
				{
					idc = 115042;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_3: NMD_RscText
				{
					idc = 115043;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_4: NMD_RscText
				{
					idc = 115044;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_5: NMD_RscText
				{
					idc = 115045;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_0: NMD_RscText
				{
					idc = 115050;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_1: NMD_RscText
				{
					idc = 115051;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_2: NMD_RscText
				{
					idc = 115052;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_3: NMD_RscText
				{
					idc = 115053;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_4: NMD_RscText
				{
					idc = 115054;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_5: NMD_RscText
				{
					idc = 115055;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

			};

		};
		
	};
	
	class Controls 
	{

		class Title: NMD_RscTitle 
		{
			idc = IDC_RSCDISPLAYGARAGE_TITLE;
			x = "8.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "0 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "23 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "GARAGE";
		};

		class Watermark: NMD_RscWatermark 
		{
			idc = IDC_RSCDISPLAYGARAGE_TITLE;
			x = "27.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "0 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};

		class Background: NMD_RscText
		{
			idc = IDC_RSCDISPLAYGARAGE_BACKGROUND;
			x = "8.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1.1 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "23 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "22.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.7 };
		};

		class BackgroundFilter: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYGARAGE_BACKGROUNDFILTER;
			x = "9 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1.6 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4.4 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 1, 1, 1, 0.1 };
		};

		class Filter0: NMD_RscActivePictureKeepAspect
		{
			idc = IDC_RSCDISPLAYGARAGE_FILTER0;
			x = "9 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1.6 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4.4 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_unknown_ca.paa";
			tooltip = "All";
		};

		class Filter1: NMD_RscActivePictureKeepAspect
		{
			idc = IDC_RSCDISPLAYGARAGE_FILTER1;
			x = "13.4 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1.6 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4.4 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_west_ca.paa";
			tooltip = "BLUEFOR";
		};

		class Filter2: NMD_RscActivePictureKeepAspect
		{
			idc = IDC_RSCDISPLAYGARAGE_FILTER2;
			x = "17.8 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1.6 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4.4 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_east_ca.paa";
			tooltip = "OPFOR";
		};

		class Filter3: NMD_RscActivePictureKeepAspect
		{
			idc = IDC_RSCDISPLAYGARAGE_FILTER3;
			x = "22.2 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1.6 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4.4 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_guer_ca.paa";
			tooltip = "Independant";
		};

		class Filter4: NMD_RscActivePictureKeepAspect
		{
			idc = IDC_RSCDISPLAYGARAGE_FILTER4;
			x = "26.6 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1.6 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4.4 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_civ_ca.paa";
			tooltip = "Civilian";
		};

		class TreeVehicles: NMD_RscTree
		{
			idc = IDC_RSCDISPLAYGARAGE_TREEVEHICLES;
			x = "9 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "3.6 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "22 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "15.3 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 1, 1, 1, 0.1 };
			sizeEx = "1 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};

		class TextSkin: NMD_RscText
		{
			idc = IDC_RSCDISPLAYGARAGE_TEXTSKIN;
			x = "9 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "19.4 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "11 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			colorBackground[] = { 0, 0, 0, 0.5 };
			text = "Skin";
		};

		class ComboSkin: NMD_RscCombo
		{
			idc = IDC_RSCDISPLAYGARAGE_COMBOSKIN;
			x = "9 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "20.4 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "11 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 1, 1, 1, 0.1 };
			colorSelect[] = { 1, 1, 1, 1 };
			colorSelectBackground[] = { 1, 1, 1, 0.1 };
			onKillFocus = "( _this select 0 ) ctrlSetBackgroundColor [ 1, 1, 1, 0.1 ]";
			onSetFocus = "( _this select 0 ) ctrlSetBackgroundColor [ 0, 0, 0, 1 ]";
		};

		class TextMoveIn: NMD_RscText
		{
			idc = IDC_RSCDISPLAYGARAGE_TEXTMOVEIN;
			x = "9 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "21.4 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "11 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			colorBackground[] = { 0, 0, 0, 0.5 };
			text = "Move In";
		};

		class CheckMoveIn: NMD_RscTextCheckBox
		{
			idc = IDC_RSCDISPLAYGARAGE_CHECKMOVEIN;
			x = "9 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "22.4 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "11 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			checked_strings[] = { "Yes" };
			colorSelectedBg[] = { 1, 1, 1, 0.1 };
			colorText[] = { 1, 1, 1 , 1 };
			colorTextSelect[] = { 1, 1, 1 , 1 };
			strings[] = { "No" };
		};

		class BackgroundIconVehicle: NMD_RscText
		{
			idc = IDC_RSCDISPLAYGARAGE_BACKGROUNDICONVEHICLE;
			x = "20.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "19.4 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "4 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			colorBackground[] = { 1, 1, 1, 0.1 };
		};

		class IconVehicle: NMD_RscPictureKeepAspect
		{
			idc = IDC_RSCDISPLAYGARAGE_ICONVEHICLE;
			x = "20.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "19.4 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "4 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonCancel: NMD_RscButtonMenuCancel
		{
			x = "8.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "24 *					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "5 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};

		class ButtonSpawn: NMD_RscButtonMenu
		{
			idc = IDC_RSCDISPLAYGARAGE_BUTTONSPAWN;
			x = "26.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "24 *					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "5 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Spawn";
		};
		
	};

};

class NMD_RscDisplayService
{
	idd = IDD_RSCDISPLAYSERVICE;
	onLoad = "[ _this, ""NMD_RscDisplayService"", ""vehicles"" ] call NMD_fnc_initDisplay";

	class ControlsBackground
	{

		class Vignette: NMD_RscVignette
		{
			idc = 114998;
		};

		class TileGroup: NMD_RscControlsGroupNoScrollbars
		{
			idc = 115099;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
			disableCustomColors = 1;

			class Controls
			{

				class TileFrame: NMD_RscFrame
				{
					idc = 114999;
					x = 0;
					y = 0;
					w = "safezoneW";
					h = "safezoneH";
					colortext[] = { 0,0,0,1 };
				};

				class Tile_0_0: NMD_RscText
				{
					idc = 115000;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_1: NMD_RscText
				{
					idc = 115001;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_2: NMD_RscText
				{
					idc = 115002;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_3: NMD_RscText
				{
					idc = 115003;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_4: NMD_RscText
				{
					idc = 115004;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_0_5: NMD_RscText
				{
					idc = 115005;
					x = "( 0 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_0: NMD_RscText
				{
					idc = 115010;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_1: NMD_RscText
				{
					idc = 115011;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_2: NMD_RscText
				{
					idc = 115012;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_3: NMD_RscText
				{
					idc = 115013;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_4: NMD_RscText
				{
					idc = 115014;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_1_5: NMD_RscText
				{
					idc = 115015;
					x = "( 1 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_0: NMD_RscText
				{
					idc = 115020;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_1: NMD_RscText
				{
					idc = 115021;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_2: NMD_RscText
				{
					idc = 115022;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_3: NMD_RscText
				{
					idc = 115023;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_4: NMD_RscText
				{
					idc = 115024;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_2_5: NMD_RscText
				{
					idc = 115025;
					x = "( 2 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_0: NMD_RscText
				{
					idc = 115030;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_1: NMD_RscText
				{
					idc = 115031;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_2: NMD_RscText
				{
					idc = 115032;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_3: NMD_RscText
				{
					idc = 115033;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_4: NMD_RscText
				{
					idc = 115034;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_3_5: NMD_RscText
				{
					idc = 115035;
					x = "( 3 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_0: NMD_RscText
				{
					idc = 115040;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_1: NMD_RscText
				{
					idc = 115041;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_2: NMD_RscText
				{
					idc = 115042;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_3: NMD_RscText
				{
					idc = 115043;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_4: NMD_RscText
				{
					idc = 115044;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_4_5: NMD_RscText
				{
					idc = 115045;
					x = "( 4 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_0: NMD_RscText
				{
					idc = 115050;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 0 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_1: NMD_RscText
				{
					idc = 115051;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 1 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_2: NMD_RscText
				{
					idc = 115052;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 2 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_3: NMD_RscText
				{
					idc = 115053;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 3 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_4: NMD_RscText
				{
					idc = 115054;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 4 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

				class Tile_5_5: NMD_RscText
				{
					idc = 115055;
					x = "( 5 * 1/6 ) * safezoneW";
					y = "( 5 * 1/6 ) * safezoneH";
					w = "1/6 * safezoneW";
					h = "1/6 * safezoneH";
					colorBackground[] = { 0,0,0,0.1 };
				};

			};

		};
		
	};
	
	class Controls 
	{	
		
		class Title: NMD_RscTitle 
		{
			idc = IDC_RSCDISPLAYSERVICE_TITLE;
			x = "8.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "7.4 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "23 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "SERVICE";
		};

		class Watermark: NMD_RscWatermark 
		{
			idc = IDC_RSCDISPLAYSERVICE_WATERMARK;
			x = "27.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + ( safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "7.4 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "4 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class Background: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYSERVICE_BACKGROUND;
			x = "8.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "8.5 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "23 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "8 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.7 };
		};

		class BackgroundIconVehicle: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYSERVICE_BACKGROUNDICONVEHICLE;
			x = "9 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "9 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "7 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "7 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 1, 1, 1, 0.1 };
		};

		class IconVehicle: NMD_RscPictureKeepAspect
		{
			idc = IDC_RSCDISPLAYSERVICE_ICONVEHICLE;
			x = "9 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "9 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "7 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "7 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
		};

		class TextHealth: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYSERVICE_TEXTHEALTH;
			x = "16.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "9 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "14.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.5 };
			text = "Health";
		};

		class ProgressHealth: NMD_RscProgress 
		{
			idc = IDC_RSCDISPLAYSERVICE_PROGRESSHEALTH;
			x = "16.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "10 * 					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "14.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			texture = "";
			textureExt = "";
			colorBar[] = { 1, 1, 1, 1 };
			colorExtBar[] = { 1, 1, 1, 1 };
			colorFrame[] = { 1, 1, 1, 0.1 };
		};

		class TextFuel: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYSERVICE_TEXTFUEL;
			x = "16.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "11.5 *					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "14.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.5 };
			text = "Fuel";
		};

		class ProgressFuel: ProgressHealth 
		{
			idc = IDC_RSCDISPLAYSERVICE_PROGRESSFUEL;
			x = "16.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "12.5 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "14.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};

		class TextSkin: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYSERVICE_TEXTSKIN;
			x = "16.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "14 *					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "14.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.5 };
			text = "Skin";
		};

		class ComboSkin: NMD_RscCombo 
		{
			idc = IDC_RSCDISPLAYSERVICE_COMBOSKIN;
			x = "16.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "15 *					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "14.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 1, 1, 1, 0.1 };
			colorSelect[] = { 1, 1, 1, 1 };
			colorSelectBackground[] = { 1, 1, 1, 0.1 };
			onKillFocus = "( _this select 0 ) ctrlSetBackgroundColor [ 1, 1, 1, 0.1 ]";
			onSetFocus = "( _this select 0 ) ctrlSetBackgroundColor [ 0, 0, 0, 1 ]";
		};

		class TextCooldown: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYSERVICE_TEXTCOOLDOWN;
			x = "14.5 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "16.6 *					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "11 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.8 };
			style = 2;
			text = "00:00:00";
		};

		class ButtonCancel: NMD_RscButtonMenuCancel
		{
			x = "8.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "16.6 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "5 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};

		class ButtonService: NMD_RscButtonMenuOK
		{
			idc = IDC_RSCDISPLAYSERVICE_BUTTONSERVICE;
			x = "26.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "16.6 * 				( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "5 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Service";
		};
		
	};

};