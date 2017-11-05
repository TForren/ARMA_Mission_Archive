/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-09-29 09:37:24
*/
 
#include "scripts\define.inc"

class NMD_RscDisplayChildIntel: NMD_RscControlsGroupNoScrollbars
{
	idc = IDC_RSCDISPLAYCHILDINTEL;
	x = "6.1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
	y = "5.35 *					( (	( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + ( safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
	w = "27 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
	h = "12.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

	class Controls
	{

		class Title: NMD_RscTitle 
		{
			idc = IDC_RSCDISPLAYCHILDINTEL_TITLE;
			x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			y = "0 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "27 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "INTEL";
		};

		class Background: NMD_RscText
		{
			idc = IDC_RSCDISPLAYCHILDINTEL_BACKGROUND;
			x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			y = "1.1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "27 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "10.6 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.7 };
		};

		class GroupTime: NMD_RscControlsGroupNoScrollbars
		{
			idc = IDC_RSCDISPLAYCHILDINTEL_GROUPTIME;
			x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			y = "1.6 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "26 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "4.5 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			class Controls
			{

				class TitleTime: NMD_RscText
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_TITLETIME;
					x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "26 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Time";
				};

				class BackgroundTime: NMD_RscText
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_BACKGROUNDTIME;
					x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "26 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "3.5 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 1, 1, 1, 0.1 };
				};

				class SliderTime: NMD_RscXSliderH
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_SLIDERTIME;
					x = "0.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "25 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
				};

				class ValueTime: NMD_RscText
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_VALUETIME;
					x = "0.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "2.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "25 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1.5 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					sizeEx = "1.5 * 			( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					style = 2;
					text = "12:20";
				};

			};

		};

		class GroupWeather: NMD_RscControlsGroupNoScrollbars
		{
			idc = IDC_RSCDISPLAYCHILDINTEL_GROUPWEATHER;
			x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			y = "6.6 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "26 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "4.5 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			class Controls
			{

				class TitleWeather: NMD_RscText
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_TITLEWEATHER;
					x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "26 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Weather";
				};

				class BackgroundWeather: NMD_RscText
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_BACKGROUNDWEATHER;
					x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "26 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "5 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 1, 1, 1, 0.1 };
				};

				class TextOvercast: NMD_RscText
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_TEXTOVERCAST;
					x = "0.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "7.9 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Overcast";
				};

				class SliderOvercast: NMD_RscXSliderH
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_SLIDEROVERCAST;
					x = "8.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "17 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
				};

				class TextFog: NMD_RscText
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_TEXTFOG;
					x = "0.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "3 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "7.9 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Fog";
				};

				class SliderFog: NMD_RscXSliderH
				{
					idc = IDC_RSCDISPLAYCHILDINTEL_SLIDERFOG;
					x = "8.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "3 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "17 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
				};

			};

		};

		class ButtonCancel: NMD_RscButtonMenu
		{	
			idc = IDC_RSCDISPLAYCHILDINTEL_BUTTONCANCEL;		
			x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			y = "11.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "5 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Cancel";
		};

		class ButtonApply: NMD_RscButtonMenu
		{			
			idc = IDC_RSCDISPLAYCHILDINTEL_BUTTONAPPLY;
			x = "22 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			y = "11.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "5 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Apply";
		};

	};

};

class NMD_RscDisplayAdmin
{
	idd = IDD_RSCDISPLAYADMIN;
	onLoad = "[ _this, ""NMD_RscDisplayAdmin"", ""admin"" ] call NMD_fnc_initDisplay";
	
	class ControlsBackground
	{

		class Map: NMD_RscMapControl
		{			
			idc = IDC_RSCDISPLAYADMIN_MAP;			
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safeZoneH";

			alphaFadeEndScale = 100;
			alphaFadeStartScale = 100;
			colorBackground[] = {1,1,1,1};
			colorCountlines[] = {0,0,0,0};
			colorCountlinesWater[] = {0,0,0,0};
			colorForest[] = {1,1,1,1};
			colorGrid[] = {0,0,0,0};
			colorGridMap[] = {0,0,0,0};
			colorMainCountlines[] = {0,0,0,0};
			colorMainCountlinesWater[] = {0,0,0,0};
			colorOutside[] = {0,0,0,1};
			colorRocks[] = {0,0,0,0};
			colorSea[] = {0.467,0.631,0.851,0.25};
			drawObjects = 0;
			font = "PuristaMedium";
			fontGrid = "PuristaMedium";
			fontInfo = "PuristaMedium";
			fontLabel = "PuristaMedium";
			fontLevel = "PuristaMedium";
			fontNames = "PuristaMedium";
			fontUnits = "PuristaMedium";
			maxSatelliteAlpha = 1;
			ptsPerSquareCLn = 200;
			ptsPerSquareCost = 200;
			ptsPerSquareFor = 200;
			ptsPerSquareForEdge = 200;
			ptsPerSquareObj = 200;
			ptsPerSquareRoad = 200;
			ptsPerSquareTxt = 20;
			scaleDefault = 0.3;
			sizeExGrid = 0.06;
			sizeExInfo = 0;
			sizeExLabel = 0;
			sizeExLevel = 0;
			sizeExNames = 0;
			sizeExUnits = 0;
		};

	};

	class Controls 
	{

		class Title: NMD_RscTitle 
		{
			idc = IDC_RSCDISPLAYADMIN_TITLE;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0, 0, 0, 0.9 };
			text = "ADMINISTRATION";
		};

		class Notification: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYADMIN_NOTIFICATION;
			x = "safezoneX + ( safezoneW / 2 ) - ( 20 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "safezoneY";
			w = "40 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			shadow = 0;
			sizeEx = "1.2 * 			( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			style = 2;
		};

		class Watermark: NMD_RscWatermark 
		{
			idc = IDC_RSCDISPLAYADMIN_WATERMARK;
			x = "safezoneX + safezoneW - ( 4 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "safezoneY";
			w = "4 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};

		class GroupPlayers: NMD_RscControlsGroupNoScrollbars
		{
			idc = IDC_RSCDISPLAYADMIN_GROUPPLAYERS;
			x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY )";
			w = "14 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "28 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			class Controls
			{

				class BackgroundPlayers: NMD_RscText 
				{
					idc = IDC_RSCDISPLAYADMIN_BACKGROUNDPLAYERS;
					x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "14 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "28 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.7 };
				};

				class BackgroundSearch: NMD_RscText 
				{
					idc = IDC_RSCDISPLAYADMIN_BACKGROUNDSEARCH;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 1, 1, 1, 0.1 };
				};

				class EditSearch: NMD_RscEdit
				{
					idc = IDC_RSCDISPLAYADMIN_EDITSEARCH;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					shadow = 0;
					style = "0x200";
				};

				class TextSearchPlaceholder: NMD_RscText
				{
					idc = IDC_RSCDISPLAYADMIN_TEXTSEARCHPLACEHOLDER;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					shadow = 0;
					style = "0x200";
					text = "Search...";
				};

				class BackgroundFilter: NMD_RscText 
				{
					idc = IDC_RSCDISPLAYADMIN_BACKGROUNDFILTER;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "2.6 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 1, 1, 1, 0.1 };
				};

				class Filter0: NMD_RscActivePictureKeepAspect
				{
					idc = IDC_RSCDISPLAYADMIN_FILTER0;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "2.6 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					
					text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_west_ca.paa";
					tooltip = "BLUEFOR";
				};

				class Filter1: NMD_RscActivePictureKeepAspect
				{
					idc = IDC_RSCDISPLAYADMIN_FILTER1;
					x = "3.1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "2.6 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					
					text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_east_ca.paa";
					tooltip = "OPFOR";
				};

				class Filter2: NMD_RscActivePictureKeepAspect
				{
					idc = IDC_RSCDISPLAYADMIN_FILTER2;
					x = "5.7 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "2.6 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					
					text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_guer_ca.paa";
					tooltip = "Independant";
				};

				class Filter3: NMD_RscActivePictureKeepAspect
				{
					idc = IDC_RSCDISPLAYADMIN_FILTER3;
					x = "8.3 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "2.6 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					
					text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_civ_ca.paa";
					tooltip = "Civilian";
				};

				class Filter4: NMD_RscActivePictureKeepAspect
				{
					idc = IDC_RSCDISPLAYADMIN_FILTER4;
					x = "10.9 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "2.6 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					text = "\a3\ui_f_curator\Data\Displays\RscDisplayCurator\side_unknown_ca.paa";
					tooltip = "All";
				};

				class ListPlayers: NMD_RscListbox
				{
					idc = IDC_RSCDISPLAYADMIN_LISTPLAYERS;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "4 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
					h = "23.5 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 1, 1, 1, 0.1 };
					colorSelect[] = { 0.95, 0.95, 0.95, 1 };
					colorSelect2[] = { 0.95, 0.95, 0.95, 1 };
					colorSelectBackground[] = { 1, 1, 1, 0.25 };
					colorSelectBackground2[] = { 1, 1, 1, 0.25 };
				};

			};

		};

		class GroupPlayer: NMD_RscControlsGroupNoScrollbars
		{
			idc = IDC_RSCDISPLAYADMIN_GROUPPLAYER;
			x = "safezoneX + safezoneW - ( 14 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "2 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY )";
			w = "14 *	 				( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "16.6 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			class Controls
			{

				class BackgroundPlayer: NMD_RscText 
				{
					idc = IDC_RSCDISPLAYADMIN_GROUPPLAYER;
					x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "14 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "16.6 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.7 };
				};

				class TextPlayerName: NMD_RscText 
				{
					idc = IDC_RSCDISPLAYADMIN_TEXTPLAYERNAME;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "0.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.7 };
					style = 2;
					text = "Nimrod";
				};

				class BackgroundR2T: NMD_RscText
				{
					idc = IDC_RSCDISPLAYADMIN_BACKGROUNDR2T;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "8 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorText[] = { 1,1,1,0.2 };
					colorBackground[] = { 0.1, 0.1, 0.1, 1 };
					shadow = 0;
					style = 2;
					text = "FEED DISABLED";
				};

				class R2TPlayer: NMD_RscPicture
				{
					idc = IDC_RSCDISPLAYADMIN_R2TPLAYER;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "8 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					text = "";
				};

				class ButtonKick: NMD_RscButton
				{
					idc = IDC_RSCDISPLAYADMIN_BUTTONKICK;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "9.6 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "6.45 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					text = "Kick";
				};

				class ButtonBan: NMD_RscButton
				{
					idc = IDC_RSCDISPLAYADMIN_BUTTONBAN;
					x = "7.05 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "9.6 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "6.45 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					text = "Ban";
				};

				class ButtonKill: NMD_RscButton
				{
					idc = IDC_RSCDISPLAYADMIN_BUTTONKILL;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "10.7 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "6.45 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					text = "Kill";
				};

				class ButtonHeal: NMD_RscButton
				{
					idc = IDC_RSCDISPLAYADMIN_BUTTONHEAL;
					x = "7.05 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "10.7 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "6.45 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					text = "Heal";
				};

				class TextFreeze: NMD_RscText
				{
					idc = IDC_RSCDISPLAYADMIN_TEXTFREEZE;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "11.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Freeze";
				};

				class CheckFreeze: NMD_RscCheckbox
				{
					idc = IDC_RSCDISPLAYADMIN_CHECKFREEZE;
					x = "12.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "11.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "1 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
				};

				class TextNeutral: NMD_RscText
				{
					idc = IDC_RSCDISPLAYADMIN_TEXTNEUTRAL;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "12.9 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Neutral";
				};

				class CheckNeutral: NMD_RscCheckbox
				{
					idc = IDC_RSCDISPLAYADMIN_CHECKNEUTRAL;
					x = "12.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "12.9 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "1 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
				};

				class TextImmune: NMD_RscText
				{
					idc = IDC_RSCDISPLAYADMIN_TEXTIMMUNE;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "14 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Immune";
				};

				class CheckImmune: NMD_RscCheckbox
				{
					idc = IDC_RSCDISPLAYADMIN_CHECKIMMUNE;
					x = "12.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "14 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "1 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
				};

				class TextAdmin: NMD_RscText
				{
					idc = IDC_RSCDISPLAYADMIN_TEXTADMIN;
					x = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "15.1 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "13 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

					colorBackground[] = { 0, 0, 0, 0.5 };
					text = "Admin";
				};

				class CheckAdmin: NMD_RscCheckbox
				{
					idc = IDC_RSCDISPLAYADMIN_CHECKADMIN;
					x = "12.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					y = "15.1 *					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
					w = "1 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
					h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
				};

			};

		};
		
		class ButtonIntel: NMD_RscButtonMenu
		{
			idc = IDC_RSCDISPLAYADMIN_BUTTONINTEL;
			x = "safezoneX + safezoneW - ( 15.5 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "23 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "7 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Intel";
		};

		class ButtonOK: NMD_RscButtonMenuOK
		{			
			x = "safezoneX + safezoneW - ( 8 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "23 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "7 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Close";
		};

		class BackgroundOverlay: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYADMIN_BACKGROUNDOVERLAY;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
			
			colorBackground[] = { 0, 0, 0, 0.3 };
		};

		class Intel: NMD_RscDisplayChildIntel {};

	};
};