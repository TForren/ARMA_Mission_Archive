
///////////////////////////////////////////////////////////////////////////
/// Styles
///////////////////////////////////////////////////////////////////////////

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

//Procedural colors
#define ProcTextWhite "#(argb,8,8,3)color(1,1,1,1)"
#define ProcTextBlack "#(argb,8,8,3)color(0,0,0,1)"
#define ProcTextGray "#(argb,8,8,3)color(0.3,0.3,0.3,1)"
#define ProcTextRed "#(argb,8,8,3)color(1,0,0,1)"
#define ProcTextGreen "#(argb,8,8,3)color(0,1,0,1)"
#define ProcTextBlue "#(argb,8,8,3)color(0,0,1,1)"
#define ProcTextOrange "#(argb,8,8,3)color(1,0.5,0,1)"
#define ProcTextTransparent	"#(argb,8,8,3)color(0,0,0,0)"


///////////////////////////////////////////////////////////////////////////
/// Base Classes
///////////////////////////////////////////////////////////////////////////
class RscText
{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = {0,0,0,0.5};
	font = GUI_FONT_NORMAL;
	SizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
	linespacing = 1;
};
class RscStructuredText
{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {1,1,1,1};
	class Attributes
	{
		font = GUI_FONT_NORMAL;
		color = "#ffffff";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(			(			(1 / 1.2) / 20) * 0.9)";
	shadow = 1;
};
class RscPicture
{
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	fixedWidth = 0;
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	font = GUI_FONT_NORMAL;
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};
class RscEdit
{
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {0,0,0,1};
	colorText[] = {0.95,0.95,0.95,1};
	colorSelection[] = {0,0,0,1};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = GUI_FONT_NORMAL;
	shadow = 2;
	sizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
};
class RscCombo
{
	access = 0;
	type = 4;
	style = 0;
	colorSelect[] = {0.023529,0,0.0313725,1};
	colorText[] = {0.023529,0,0.0313725,1};
	colorBackground[] = {0.95,0.95,0.95,1};
	colorScrollbar[] = {0.023529,0,0.0313725,1};
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		shadow = 0;
		thumb = "\ca\ui_f\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui_f\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui_f\data\ui_arrow_top_ca.paa";
		border = "\ca\ui_f\data\ui_border_scroll_ca.paa";
	};
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	shadow = 0;
	colorSelectBackground[] = {0,0,0,1};
	arrowEmpty = "\ca\ui_f\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui_f\data\ui_arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	color[] = {0,0,0,0.6};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,0.3};
	font = GUI_FONT_NORMAL;
	sizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
};
class RscListBox
{
	access = 0;
	type = 5;
	w = 0.4;
	h = 0.4;
	rowHeight = 0;
	colorText[] = {1,1,1,1};
	colorScrollbar[] = {0.95,0.95,0.95,1};
	colorSelect[] = {1,1,1,1};
	colorSelect2[] = {1,1,1,1};
	colorSelectBackground[] = {0,0,0,1};
	colorSelectBackground2[] = {0,0,0,1};
	colorBackground[] = {0,0,0,0.2};
	soundSelect[] = {"",0.1,1};
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		shadow = 0;
		thumb = "\ca\ui_f\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui_f\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui_f\data\ui_arrow_top_ca.paa";
		border = "\ca\ui_f\data\ui_border_scroll_ca.paa";
	};
	style = 16;
	font = GUI_FONT_NORMAL;
	sizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
	shadow = 1;
	colorShadow[] = {0,0,0,0.5};
	color[] = {1,1,1,1};
	period = 1.2;
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
class RscButton
{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {1,1,1,1};
	colorDisabled[] = {0.4,0.4,0.4,1};
	colorBackground[] = {0,0,0,1};
	colorBackgroundDisabled[] = {0.95,0.95,0.95,1};
	colorBackgroundActive[] = {0,0,0,1};
	colorFocused[] = {0,0,0,1};
	colorShadow[] = {0.023529,0,0.0313725,1};
	colorBorder[] = {0.023529,0,0.0313725,1};
	soundEnter[] = {"\ca\ui_f\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui_f\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui_f\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui_f\data\sound\onescape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = GUI_FONT_NORMAL;
	sizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
};
class RscShortcutButton
{
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0;
		top = "(			(			(1 / 1.2) / 20) - 		(			(			(1 / 1.2) / 20) * 0.9)) / 2";
		w = "(			(			(1 / 1.2) / 20) * 0.9) * (3/4)";
		h = "(			(			(1 / 1.2) / 20) * 0.9)";
	};
	class TextPos
	{
		left = "(			(			(1 / 1.2) / 20) * 0.9) * (3/4)";
		top = "(			(			(1 / 1.2) / 20) - 		(			(			(1 / 1.2) / 20) * 0.9)) / 2";
		right = 0.005;
		bottom = 0;
	};
	shortcuts[] = {};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = {1,1,1,1};
	color2[] = {0.95,0.95,0.95,1};
	colorDisabled[] = {1,1,1,0.25};
	colorBackground[] = {0,0,0,1};
	colorBackground2[] = {0,0,0,1};
	class Attributes
	{
		font = GUI_FONT_NORMAL;
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = 1;
	w = 0.183825;
	h = "(			(1 / 1.2) / 20)";
	animTextureDefault = "\ca\ui_f\data\ui_button_shortcut_normal_ca.paa";
	animTextureNormal = "\ca\ui_f\data\ui_button_shortcut_normal_ca.paa";
	animTextureDisabled = "\ca\ui_f\data\ui_button_shortcut_normal_ca.paa";
	animTextureOver = "\ca\ui_f\data\ui_button_shortcut_over_ca.paa";
	animTextureFocused = "\ca\ui_f\data\ui_button_shortcut_focus_ca.paa";
	animTexturePressed = "\ca\ui_f\data\ui_button_shortcut_down_ca.paa";
	periodFocus = 1.2;
	periodOver = 0.8;
	period = 0.4;
	font = GUI_FONT_NORMAL;
	size = "(			(			(1 / 1.2) / 20) * 0.9)";
	sizeEx = "(			(			(1 / 1.2) / 20) * 0.9)";
	text = "";
	soundEnter[] = {"\ca\ui_f\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui_f\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui_f\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui_f\data\sound\onescape",0.09,1};
	action = "";
	class AttributesImage
	{
		font = GUI_FONT_NORMAL;
		color = "#E5E5E5";
		align = "left";
	};
};
class RscShortcutButtonMain
{
	idc = -1;
	style = 0;
	default = 0;
	w = 0.313726;
	h = 0.104575;
	color[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.25};
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0.0145;
		top = "(			(			(1 / 1.2) / 20) - 			(			(			(1 / 1.2) / 20) * 1.1)) / 2";
		w = "(			(			(1 / 1.2) / 20) * 1.1) * (3/4)";
		h = "(			(			(1 / 1.2) / 20) * 1.1)";
	};
	class TextPos
	{
		left = "(			(1) / 32) * 1.5";
		top = "(			(			(1 / 1.2) / 20)*2 - 			(			(			(1 / 1.2) / 20) * 1.1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	animTextureNormal = "\ca\ui_f\data\ui_button_main_normal_ca.paa";
	animTextureDisabled = "\ca\ui_f\data\ui_button_main_disabled_ca.paa";
	animTextureOver = "\ca\ui_f\data\ui_button_main_over_ca.paa";
	animTextureFocused = "\ca\ui_f\data\ui_button_main_focus_ca.paa";
	animTexturePressed = "\ca\ui_f\data\ui_button_main_down_ca.paa";
	animTextureDefault = "\ca\ui_f\data\ui_button_main_normal_ca.paa";
	period = 0.5;
	font = GUI_FONT_NORMAL;
	size = "(			(			(1 / 1.2) / 20) * 1.1)";
	sizeEx = "(			(			(1 / 1.2) / 20) * 1.1)";
	text = "";
	soundEnter[] = {"\ca\ui_f\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui_f\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui_f\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui_f\data\sound\onescape",0.09,1};
	action = "";
	class Attributes
	{
		font = GUI_FONT_NORMAL;
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class AttributesImage
	{
		font = GUI_FONT_NORMAL;
		color = "#E5E5E5";
		align = "false";
	};
};
class RscFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = GUI_FONT_NORMAL;
	sizeEx = 0.02;
	text = "";
};
class RscSlider
{
	access = 0;
	type = 3;
	style = 1024;
	w = 0.3;
	color[] = {1,1,1,0.8};
	colorActive[] = {1,1,1,1};
	shadow = 0;
	h = 0.025;
};
class IGUIBack
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] = {0,0,0,0};
	font = GUI_FONT_NORMAL;
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = {0,0,0,1};
};
class RscControlsGroup
{
	class VScrollbar
	{
		color[] = {1,1,1,1};
		width = 0.021;
		autoScrollSpeed = -1;
		autoScrollDelay = 5;
		autoScrollRewind = 0;
		shadow = 0;
	};
	class HScrollbar
	{
		color[] = {1,1,1,1};
		height = 0.028;
		shadow = 0;
	};
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		shadow = 0;
		thumb = "\ca\ui_f\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui_f\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui_f\data\ui_arrow_top_ca.paa";
		border = "\ca\ui_f\data\ui_border_scroll_ca.paa";
	};
	class Controls
	{
	};
	type = 15;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = 16;
};

class RscMapControl
{
	access = ReadAndWrite;
	type = CT_MAP_MAIN;
	idc = IDC_MAP;
	style = ST_PICTURE;
  // map background
	colorBackground[] = {1, 1, 1, 1};
  // area outside of map
  colorOutside[] = {0, 0, 0, 1};
	colorText[] = {0, 0, 0, 1};
	font = FontMAIN;
	sizeEx = Size_Text_Default;
	shadow = 0;

	colorSea[] = {0.46, 0.65, 0.74, 0.5};
	colorForest[] = {0.45, 0.64, 0.33, 0.5};
	colorRocks[] = {0, 0, 0, 0.3};
	colorCountlines[] = {0.85, 0.8, 0.65, 1};
	colorMainCountlines[] = {0.45, 0.4, 0.25, 1};
	colorCountlinesWater[] = {0.25, 0.4, 0.5, 0.3};
	colorMainCountlinesWater[] = {0.25, 0.4, 0.5, 0.9};
	colorPowerLines[] = {0.1, 0.1, 0.1, 1};
	colorRailWay[] = {0.8, 0.2, 0, 1};
	colorForestBorder[] = {0, 0, 0, 0};
	colorRocksBorder[] = {0, 0, 0, 0};
	colorNames[] = {0.1, 0.1, 0.1, 0.9};
	colorInactive[] = {1, 1, 1, 0.5};
	colorLevels[] = {0.65, 0.6, 0.45, 1};

	//widthRailWay = 5.0;
	fontLabel = GUI_FONT_NORMAL;
	sizeExLabel = TextSizeXbox_GUI;
	fontGrid = GUI_FONT_NORMAL;
	sizeExGrid = 0.03;//TextSizeXbox_GUI;
	fontUnits = GUI_FONT_NORMAL;
	sizeExUnits = TextSizeXbox_GUI;
	fontNames = GUI_FONT_NORMAL;
	sizeExNames = 0.056; //Double the medium size
	fontInfo = GUI_FONT_NORMAL;
	sizeExInfo = TextSizeXbox_GUI;
	fontLevel = GUI_FONT_NORMAL;
	sizeExLevel = 0.024; //TextSizeXbox_GUI;
	text = "\ca\ui_f\data\map_background2_co.paa"; //"\ca\ui_f\data\map_background_co.paa";
	
	//text = ProcTextWhite;
	
	stickX[] = {0.2, {"Gamma", 1, 1.5}};
	stickY[] = {0.2, {"Gamma", 1, 1.5}};
	
	// Map drawing quality coefficients:
	//  units - the width of the screen == 800
	//  limits - size of the landscape square on screen when objects are drawn or single square content is drawn
	
	//@{ coefficients which determine rendering density / threshold
	ptsPerSquareSea = 6;   // seas
	ptsPerSquareTxt = 8;   // textures
	ptsPerSquareCLn = 8;   // count-lines
	ptsPerSquareExp = 8;   // exposure
	ptsPerSquareCost = 8;  // cost
	//@}
	
	//@{ coefficients which determine when rendering of given type is done
	ptsPerSquareFor = 4.0f;   // forests
	ptsPerSquareForEdge = 10.0f;   // forest edges
	ptsPerSquareRoad = 2;  // roads
	ptsPerSquareObj = 10;    // other objects
	//@}

  showCountourInterval = "true";

  // _scale is % of map you can see;  satellite map alpha is
  // if map (_scale < alphaFadeStartScale) -> alpha = 1.0 * maxSatelliteAlpha;
  // else map (_scale > alphaFadeEndScale) -> alpha = 0.0;
  // else -> alpha = ((alphaFadeEndScale - _scale) / (alphaFadeEndScale - alphaFadeStartScale)) * maxSatelliteAlpha;  
  maxSatelliteAlpha = 0.66;
  alphaFadeStartScale = 0.05;
  alphaFadeEndScale = 0.15;

	
	class ActiveMarker
	{
		color[] = {0.3, 0.1, 0.9, 1};
		size = 50;
	};


  class Task
  {
    icon = ProcTextGreen;
    iconCreated = ProcTextWhite;
    iconCanceled = ProcTextBlue;
    iconDone = ProcTextBlack;
    iconFailed = ProcTextRed;

    colorCreated[] = {1, 1, 1, 1};
    colorCanceled[] = {1, 1, 1, 1};
    colorDone[] = {1, 1, 1, 1};
    colorFailed[] = {1, 1, 1, 1};

    color[] = {1, 1, 1, 1};
    size = 18;
    importance = 1; // not used
    coefMin = 1; // not used
    coefMax = 1; // not used
  };
  class CustomMark
  {
    icon = ProcTextOrange;
    color[] = {1, 1, 1, 1};
    size = 18;
    importance = 1; // not used
    coefMin = 1; // not used
    coefMax = 1; // not used
  };
	class Legend
	{
		//x = (SafeZoneW + SafeZoneX) - (1 - 0.616);
		//y = 0.065 + SafeZoneY;
		x = SafeZoneX;
		y = SafeZoneY;
		w = 0;
		h = 0;
		
		font = GUI_FONT_NORMAL;
		sizeEx = TextSizeXbox_normal;
		
		colorBackground[] = {0.906, 0.901, 0.88, 0};
		color[] = {0, 0, 0, 1};
	};
	class Bunker
	{
		icon = "\ca\ui_f\data\map_bunker_ca.paa";
		size = 14;
    		importance = 1.5 * 14 * 0.05; // limit for map scale
    		coefMin = 0.25;
    		coefMax = 4;
		color[] = {0, 0, 0, 1};
	};

	class Bush
	{
		icon = "\ca\ui_f\data\map_bush_ca.paa";
		color[] = {0.45, 0.64, 0.33, 0.4};
		size = 14;
    		importance = 0.2 * 14 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};

	class BusStop
	{
		icon = "\ca\ui_f\data\map_busstop_ca.paa";	
		color[] = {0.15, 0.26, 0.87, 1};
//		color[] = {0.78, 0, 0.05, 1};
		size = 12;
    		importance = 1 * 10 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};
	class Command
	{
		icon = "\ca\ui_f\data\map_waypoint_ca.paa";
		color[] = {0, 0.9, 0, 1};
		size = 18;
		importance = 1; // not used
		coefMin = 1; // not used
		coefMax = 1; // not used
	};
	class Cross
	{
		icon = "\ca\ui_f\data\map_cross_ca.paa";
		size = 16;
		color[] = {0, 0.9, 0, 1};		
    		importance = 0.7 * 16 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};

	class Fortress
	{
		icon = "\ca\ui_f\data\map_bunker_ca.paa";
		size = 16;
		color[] = {0, 0.9, 0, 1};		
    		importance = 2 * 16 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};

	class Fuelstation
	{
		icon = "\ca\ui_f\data\map_fuelstation_ca.paa";
		size = 16;
		color[] = {0, 0.9, 0, 1};		
    		importance = 2 * 16 * 0.05;
    		coefMin = 0.75;
    		coefMax = 4;
	};

	class Fountain
	{
		icon = "\ca\ui_f\data\map_fountain_ca.paa";
		color[] = {0.2, 0.45, 0.7, 1};
		size = 11;
    		importance = 1 * 12 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};

	class Hospital
	{
		icon = "\ca\ui_f\data\map_hospital_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
		size = 16;
    		importance = 2 * 16 * 0.05;
    		coefMin = 0.5;
    		coefMax = 4;
	};

	class Chapel
	{
		icon = "\ca\ui_f\data\map_chapel_ca.paa";
		size = 16;
    		importance = 1 * 16 * 0.05;
		coefMin = 0.9;
    		coefMax = 4;
		color[] = {0, 0, 0, 1};
	};

	class Church
	{
		icon = "\ca\ui_f\data\map_church_ca.paa";
		size = 16;
		color[] = {0, 0.9, 0, 1};		
    		importance = 2 * 16 * 0.05;
    		coefMin = 0.9;
    		coefMax = 4;
	};

	class Lighthouse
	{
		icon = "\ca\ui_f\data\map_lighthouse_ca.paa";
		size = 14;
		color[] = {0, 0.9, 0, 1};		
    		importance = 3 * 16 * 0.05;
    		coefMin = 0.9;
    		coefMax = 4;
	};

	class Quay
	{
		icon = "\ca\ui_f\data\map_quay_ca.paa";
		size = 16;
		color[] = {0, 0.9, 0, 1};		
    		importance = 2 * 16 * 0.05;
    		coefMin = 0.5;
    		coefMax = 4;
	};

	class Rock
	{
		icon = "\ca\ui_f\data\map_rock_ca.paa";
		color[] = {0.1, 0.1, 0.1, 0.8};
		size = 12;
    		importance = 0.5 * 12 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};

  	class Ruin
 	{
		icon = "\ca\ui_f\data\map_ruin_ca.paa";
		size=16;
				color[] = {0, 0.9, 0, 1};
    		importance = 1.2 * 16 * 0.05;
    		coefMin = 1;
    		coefMax = 4;
	};

	class SmallTree
	{
		icon = "\ca\ui_f\data\map_smalltree_ca.paa";
		color[] = {0.45, 0.64, 0.33, 0.4};
		size = 12;
    		importance = 0.6 * 12 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};

  	class Stack
	{
		icon = "\ca\ui_f\data\map_stack_ca.paa";
    		size = 20;
				color[] = {0, 0.9, 0, 1};    		
    		importance = 2 * 16 * 0.05;
    		coefMin = 0.9;
    		coefMax = 4;
  	};

	class Tree
	{
		icon = "\ca\ui_f\data\map_tree_ca.paa";
		color[] = {0.45, 0.64, 0.33, 0.4};
		size = 12;
    		importance = 0.9 * 16 * 0.05;
    		coefMin = 0.25;
    		coefMax = 4;
	};

  	class Tourism
  	{
		icon = "\ca\ui_f\data\map_tourism_ca.paa";
		color[] = {0.78, 0, 0.05, 1};
    		size = 16;
    		importance = 1 * 16 * 0.05;
    		coefMin = 0.7;
    		coefMax = 4;
  	};

	class Transmitter
	{
		icon = "\ca\ui_f\data\map_transmitter_ca.paa";
				color[] = {0, 0.9, 0, 1};
    		size = 20;
    		importance = 2 * 16 * 0.05;
    		coefMin = 0.9;
    		coefMax = 4;
  	};

	class ViewTower
	{
		icon = "\ca\ui_f\data\map_viewtower_ca.paa";
				color[] = {0, 0.9, 0, 1};
		size = 16;
    		importance = 2.5 * 16 * 0.05;
    		coefMin = 0.5;
    		coefMax = 4;
	};

  	class Watertower
	{
		icon = "\ca\ui_f\data\map_watertower_ca.paa";
		color[] = {0.2, 0.45, 0.7, 1};
		size=20;
    		importance = 1.2 * 16 * 0.05;
    		coefMin = 0.9;
    		coefMax = 4;
  	};

	class Waypoint
	{
		icon = ProcTextBlack;
		color[] = {0, 0, 0, 1};
		size = 24;
		importance = 1; // not used
		coefMin = 1; // not used
		coefMax = 1; // not used
	};

	class WaypointCompleted
	{
		icon = ProcTextBlack;
		color[] = {0, 0, 0, 1};
		size = 24;
		importance = 1; // not used
		coefMin = 1; // not used
		coefMax = 1; // not used
	};
};
