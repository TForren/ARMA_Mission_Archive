// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C
#define ST_GROUP_BOX       96
#define ST_GROUP_BOX2      112
#define ST_ROUNDED_CORNER  ST_GROUP_BOX + ST_CENTER
#define ST_ROUNDED_CORNER2 ST_GROUP_BOX2 + ST_CENTER

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar 
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4


////////////////
//Base Classes//
////////////////

class BRSspectate
{
idc = -1;
	type = CT_STATIC;
	style = ST_CENTER;
	colorBackground[] = {0.2,0,0,0};
	colorText[] = {1,0.937,0.835,1};
         x = 0.313 * safezoneW + safezoneX;
         y = 0 * safezoneH + safezoneY;
         w = 0.35 * safezoneW;
         h = 0.12 * safezoneH; 
	size = 0.05;
	text = "";  
	font = "EtelkaNarrowMediumPro";
	sizeEx = 0.12;
	toolTip = "Displays current spawn";
};
class BRSbuttonSpawn
{
    access = 0;
    type = CT_BUTTON;
    text = "";
	colorText[] = {1,0.937,0.835,1};
    colorDisabled[] = {0.4,0.4,0.4,0};
	colorBackground[] = {0.663,0.663,0.663,0};
    colorBackgroundDisabled[] = {1,1,1,1};
    colorBackgroundActive[] = {0.4,0.012,0.012,0};
    colorFocused[] = {0.663,0.663,0.663,0.8};
    colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,0};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
    style = ST_CENTER;
	toolTip = "Use 'A' & 'D' OR ARROW keys to cycle";
    x = 0;
    y = 0.880 * safezoneH + safezoneY;
    w = 0.0550;
    h = 0.09 * safezoneH;
    shadow = 2;
    font = "EtelkaNarrowMediumPro";
    sizeEx = 0.06021;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0.2;
};
class BRSnamesDial
{
idc = -1;
	type = CT_STRUCTURED_TEXT;
	style = ST_LEFT;
	colorBackground[] = {0.2,1,0,0};
	x = 0;
    y = 0;
    h = 0.09 * safezoneH;
    w = 0;  
	size = 0.024;
	text = "";
	class Attributes{
		font = "PuristaSemiBold";
		color = "#EDE3C7";
		align = "RIGHT";
		valign = "top";
		shadow = false;
		shadowColor = "#000000";
		underline = false;
		size = "2";
	};  
};
class BRS_subButton
{
   access = 0;
    type = CT_BUTTON ;
    text = "";
 colorText[] = {1,0.937,0.835,1};
    colorDisabled[] = {0.4,0.4,0.4,0};
	colorBackground[] = {0.2,0,0,0.4};
    colorBackgroundDisabled[] = {1,1,1,1};
    colorBackgroundActive[] = {0.4,0.012,0.012,0.6};
    colorFocused[] = {0.2,0,0,0.4};
    colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,0};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
    style = ST_CENTER;
    x = 0;
    y = 0;
    w = 0.131429 * safezoneW;
	h = 0.035  * safezoneH;
    shadow = 0;
    font = "EtelkaMonospacePro";
	sizeEx = 0.035;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};
class BRSinfoText
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = 0;
    linespacing = 0;
    colorBackground[] = {0,0,0,0};
    colorText[] = {0.9,0.9,0.9,0.9};
    text = "";
    shadow = 2;
    font = "TahomaB";
    SizeEx = 0.03300;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;  
};
class BRSbackground
{
    access = 0;
    idc = 39650;
    type = CT_STATIC;
    style = 0;
    linespacing = 0;
    colorBackground[] = {0,0,0,1};
    colorText[] = {1,0.937,0.835,1};
    text = "";
    shadow = 0;
    font = "PuristaSemiBold";
    SizeEx = 0.06300;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;   
};
class BRSopenMap
{
	type = 101;
	style = 48;
	x = 0.05; 
	y = 0.08; 
	w = 0.90;
	h = 0.90;  
	colorBackground[] = {0.969,0.957,0.949,1}; 
	colorText[] = {0,0,0,1}; 
	colorSea[] = {0.467,0.631,0.851,0.5}; 
	colorForest[] = {0.624,0.78,0.388,0.5}; 
	colorRocks[] = {0,0,0,0.3};
	colorCountlines[] = {0.572,0.354,0.188,0.25};
	colorCountlinesWater[] = {0.491,0.577,0.702,0.3};
	colorMainCountlinesWater[] = {0.491,0.577,0.702,0.6}; 
	colorMainCountlines[] = {0.572,0.354,0.188,0.5};
	colorForestBorder[] = {0,0,0,0}; 
	colorRocksBorder[] = {0,0,0,0}; 
	colorPowerLines[] = {0.1,0.1,0.1,1}; 
	colorNames[] = {0.1,0.1,0.1,0.9}; 
	colorInactive[] = {1,1,1,0.5}; 
	colorLevels[] = {0.286,0.177,0.094,0.5};
	colorOutside[] = {0,0,0,1};
	colorRailWay[] = {0.8,0.2,0,1};
	colorTracks[] = {0.84,0.76,0.65,0.15};
	colorRoads[] = {0.7,0.7,0.7,1};
	colorRoadsFill[] = {1,1,1,1};
	colorMainRoads[] = {0.9,0.5,0.3,1};
	colorMainRoadsFill[] = {1,0.6,0.4,1};
	colorTracksFill[] = {0.84,0.76,0.65,1};
	colorGrid[] = {0.1,0.1,0.1,0.6};
	colorGridMap[] = {0.1,0.1,0.1,0.6};
	
	alphaFadeEndScale = 2;
	alphaFadeStartScale = 2;
	font = "TahomaB";
	fontGrid = "TahomaB";
	fontInfo = "PuristaMedium";
	fontLabel = "PuristaMedium";
	fontLevel = "TahomaB";
	fontNames = "EtelkaNarrowMediumPro";
	fontUnits = "TahomaB";
	sizeEx = 0.04;
	sizeExLabel = 0.02; 
	sizeExGrid = 0.02;
	sizeExUnits = 0.02; 
	sizeExNames = 0.08; 
	sizeExInfo = 0.02; 
	sizeExLevel = 0.02; 
	stickX[] = {0.2,["Gamma",1,1.5]};
	stickY[] = {0.2,["Gamma",1,1.5]};
	ptsPerSquareSea = 5;
	ptsPerSquareTxt = 20;
	ptsPerSquareCLn = 10;
	ptsPerSquareExp = 10;	
	ptsPerSquareCost = 10;
	ptsPerSquareFor = 9;
	ptsPerSquareForEdge = 9;
	ptsPerSquareRoad = 6; 
	ptsPerSquareObj = 9;
	
	maxSatelliteAlpha = 0.85;
	text = ""; //TODO
	showCountourInterval = 0;
	scaleDefault = 0.16;
	scaleMax = 1;
	scaleMin = 0.001;
	shadow = 0;
	onMouseButtonClick = ""; 
	onMouseButtonDblClick = "";
	moveOnEdges = 0;
	
	class ActiveMarker { 
		color[] = {0.3,0.1,0.9,1};
		size = 50;
	}; 
	class Bunker { 
		coefMax = 4; 
		coefMin = 0.25;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		importance = "1.5 * 14 * 0.05";
		size = 14;
	}; 
	class Bush { 
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4}; 
		size = "14/2";
		importance = "0.2 * 14 * 0.05"; 
		coefMin = 0.25; 
		coefMax = 4.00; 
	}; 
	class BusStop { 
		icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa"; 
		color[] = {1,1,1,1};
		size = 10; 
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class Command { 
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		color[] = {1,1,1,1};
		size = 18; 
		importance = 1.00; 
		coefMin = 1;
		coefMax = 1.00; 
	}; 
	class Cross { 
		icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		color[] = {0,0,0,1}; 
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};	
	class Chapel { 
		icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
		color[] = {0,0,0,1}; 
		size = 24;
		importance = 1; 
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class Church { 
		icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
		color[] = {1,1,1,1}; 
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class CustomMark {
		icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		color[] = {0,0,0,1};
		size = 24;
		importance = 1;
		coefMin = 1;
		coefMax = 1.00; 
	};
	class Fortress { 
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		color[] = {0,0,0,1};
		size = 16; 
		importance = "2 * 16 * 0.05";
		coefMin = 0.25; 
		coefMax = 4.00; 
	}; 
	class Fuelstation { 
		icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = "2 * 16 * 0.05"; 
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class Fountain { 
		icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		color[] = {0,0,0,1};
		size = 11;
		importance = "1 * 12 * 0.05";
		coefMin = 0.25; 
		coefMax = 4.00; 
	}; 	
	class Hospital { 
		icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	}; 

	class Lighthouse { 
		icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class power { 
		icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class PowerSolar { 
		icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class PowerWave { 
		icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		color[] = {0.55, 0.64, 0.43, 1.00}; 
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
		class powerwind { 
		icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Quay { 
		icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	};
	class Rock {
		icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		color[] = {0.1,0.1,0.1,0.8};
		size = 12;
		importance = "0.5 * 12 * 0.05";
		coefMin = 0.25;
		coefMax = 4;
	};
	class Ruin {
		icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		color[] = {0,0,0,1};
		size = 16;
		importance = 1.2 * 16 * 0.05;
		coefMin = 1;
		coefMax = 4;
	};
		class Shipwreck { 
		icon = "\A3\ui_f\data\map\mapcontrol\Shipwreck_CA.paa";
		color[] = {0,0,0,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class SmallTree { 
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = 12; 
		importance = "0.6 * 12 * 0.05";
		coefMin = 0.25; 
		coefMax = 4.00; 
	}; 
		class Stack { 
		icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa"; 
		color[] = {0,0,0,1};
		size = 20; 
		importance = "2 * 16 * 0.05"; 
		coefMin = 0.90; 
		coefMax = 4.00; 
	}; 
	class Task {
		icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
		size = 27;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
		iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		colorCanceled[] = {0.7,0.7,0.7,1};
		colorCreated[] = {1,1,1,1};
		colorDone[] = {0.7,1,0.3,1};
		colorFailed[] = {1,0.3,0.2,1};
	};	
	
	class Tourism { 
		icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		color[] = {0,0,0,1};
		size = 16; 
		importance = "1 * 16 * 0.05";
		coefMin = 0.70; 
		coefMax = 4.00; 
	}; 
	class Transmitter { 
		icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa"; 
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class Tree { 
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		color[] = {0.45,0.64,0.33,0.4};
		size = 12; 
		importance = "0.9 * 16 * 0.05"; 
		coefMin = 0.25; 
		coefMax = 4.00; 
	}; 

	class ViewTower { 
		icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa"; 
		color[] = {0,0,0,1}; 
		size = 16; 
		importance = "2.5 * 16 * 0.05"; 
		coefMin = 0.50; 
		coefMax = 4.00; 
	}; 
	class Watertower { 
		icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
		color[] = {1,1,1,1};
		size = 24;
		importance = 1;
		coefMin = 0.85;
		coefMax = 1;
	}; 
	class Waypoint { 
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		color[] = {0,0,0,1};
		size = 24; 
		importance = 1.00; 
		coefMin = 1.00; 
		coefMax = 1.00; 
	}; 
	class WaypointCompleted { 
	icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
		color[] = {0.00, 0.00, 0.00, 1.00}; 
		size = 24; 
		importance = 1.00; 
		coefMin = 1.00; 
		coefMax = 1.00; 
	}; 
};
