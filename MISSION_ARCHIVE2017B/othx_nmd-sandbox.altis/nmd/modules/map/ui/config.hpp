/* 
* @Author:  DnA
* @Profile: http://steamcommunity.com/id/dna_uk
* @Date:    2014-04-24 09:20:06
* @Last Modified by:   DnA
* @Last Modified time: 2014-05-27 13:44:39
*/
 
#include "scripts\define.inc"

class NMD_RscDisplayMap
{
	idd = IDD_RSCDISPLAYMAP;
	onLoad = "[ _this, ""NMD_RscDisplayMap"", ""map"" ] call NMD_fnc_initDisplay";

	class ControlsBackground 
	{

		class TitleBackground: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYMAP_TITLE;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorBackground[] = { 0.1, 0.1, 0.1, 1 };
		};

		class TitleGradient: NMD_RscPicture {
			idc = IDC_RSCDISPLAYMAP_TITLE;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "\A3\ui_f\data\map\diary\gradient_gs.paa";
			colorText[] = { 1, 1, 1, 0.15 };
		};

		class Map: NMD_RscMapControl
		{			
			idc = IDC_RSCDISPLAYMAP_MAP;
			x = "safezoneX";
			y = "SafeZoneY + 1.5 * 		( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			w = "safezoneW";
			h = "safezoneH";

			alphaFadeEndScale = 100;
			alphaFadeStartScale = 100;
			colorBackground[] = {1,1,1,1};
			colorCountlines[] = {0,0,0,0};
			colorCountlinesWater[] = {0,0,0,0};
			colorForest[] = {1,1,1,1};
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
		
		class TextTitle: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYMAP_TEXTTITLE;
			x = "0 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "-0.1 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY )";
			w = "16.5 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			font = "PuristaLight";
			shadow = 0;
			sizeEx = "1.4 * 			( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			text = "NMD MAP";
		};

		class TextLocation: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYMAP_TEXTLOCATION;
			x = "safezoneX + ( safezoneW / 2 ) - ( 10 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "-0.1 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY )";
			w = "20 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			
			colorText[] = { 1, 1, 1, 0.7 };
			font = "PuristaLight";
			shadow = 0;
			sizeEx = "1.4 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			style = 2;
		};

		class TextElevation: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYMAP_TEXTELEVATION;
			x = "safezoneX + safezoneW - ( 8.75 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "-0.1 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY )";
			w = "3.75 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorText[] = { 1, 1, 1, 0.7 };
			font = "PuristaLight";
			shadow = 0;
			sizeEx = "1.4 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			style = 1;
		};

		class Separator1: NMD_RscPicture
		{
			idc = IDC_RSCDISPLAYMAP_SEPARATOR1;
			x = "safezoneX + safezoneW - ( 5 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "0 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY )";
			w = "0.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "\A3\ui_f\data\map\diary\separator_ca.paa";
		};

		class TextGrid: NMD_RscText 
		{
			idc = IDC_RSCDISPLAYMAP_TEXTGRID;
			x = "safezoneX + safezoneW - ( 4.5 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "-0.1 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY )";
			w = "4.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			colorText[] = { 1, 1, 1, 0.7 };
			font = "PuristaLight";
			shadow = 0;
			sizeEx = "1.4 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
			style = 2;
		};

		class FadeEffect: NMD_RscText
		{
			idc = IDC_RSCDISPLAYMAP_FADEEFFECT;
			x = "safezoneXAbs";
			y = "safezoneY";
			w = "safezoneWAbs";
			h = "safezoneH";

			colorBackground[] = { 0, 0, 0, 1 };
		};

		class ButtonClose: NMD_RscButtonMenuOK
		{
			x = "safezoneX + safezoneW - ( 8 * ( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) )";
			y = "23 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "7 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";

			text = "Close";
		};
		
	};
};