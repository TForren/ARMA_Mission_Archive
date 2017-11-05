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

class RscText
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_MULTI;
    linespacing = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,.5};
    text = "";
    shadow = 2;
    font = "puristaMedium";
    SizeEx = 0.02300;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;
   
};


class RscText2
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_CENTER;
    colorBackground[] = {0,0,0,0};
    colorText[] = {0,0,0,.5};
    text = "";
    shadow = 2;
    font = "puristaMedium";
    SizeEx = 0.04;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;
   
};

class RscText3
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_LEFT;
    colorBackground[] = {0,0,0,0};
    colorText[] = {0,0,0,.5};
    text = "";
    shadow = 2;
    font = "puristaMedium";
    SizeEx = 0.04;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;
   
};

class RscVONText
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_LEFT;
    colorBackground[] = {0,0,0,0};
    colorText[] = {0,0,0,.5};
    text = "";
    shadow = 2;
    font = "puristaMedium";
    SizeEx = 0.04;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0;
   
};


class RscPicture
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_PICTURE;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    font = "puristaMedium";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    fixedWidth = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
};


class RscButton2
{
    
   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {0.7,0.7,0.7,0.5};
    colorDisabled[] = {0,0,0,0};
    colorBackground[] = {0.75,0.75,0.75,0};
    colorBackgroundDisabled[] = {0,0,0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,0};
    colorFocused[] = {0.75,0.75,0.75,0};
    colorShadow[] = {0.023529,0,0.0313725,0};
    colorBorder[] = {0.023529,0,0.0313725,0};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "puristaMedium";
    sizeEx = 0.025;
    offsetX = 0.003;
    offsetY = 0;
    offsetPressedX = 0.002;
    offsetPressedY = -0.002;
    borderSize = 0;
};

class RscHeaderButton
{
    
   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {0.7,0.7,0.7,0.5};
    colorDisabled[] = {0,0,0,0};
    colorBackground[] = {0.75,0.75,0.75,0};
    colorBackgroundDisabled[] = {0,0,0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,0};
    colorFocused[] = {0.75,0.75,0.75,0};
    colorShadow[] = {0.023529,0,0.0313725,0};
    colorBorder[] = {0.023529,0,0.0313725,0};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "puristaMedium";
    sizeEx = 0.05;
    offsetX = 0.003;
    offsetY = 0;
    offsetPressedX = 0.002;
    offsetPressedY = -0.002;
    borderSize = 0;
};


class RscRollButton
{
    
   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
    colorDisabled[] = {0.4,0.4,0.4,0};
    colorBackground[] = {0.75,0.75,0.75,0};
    colorBackgroundDisabled[] = {0,0,0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,0.2};
    colorFocused[] = {0.75,0.75,0.75,0};
    colorShadow[] = {0.023529,0,0.0313725,0};
    colorBorder[] = {0.023529,0,0.0313725,0};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "puristaMedium";
    sizeEx = 0.025;
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0;
    offsetPressedY = 0;
    borderSize = 0;
};

class RscButtonCheckBox
{
    
   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
    colorDisabled[] = {0.4,0.4,0.4,0};
    colorBackground[] = {0.75,0.75,0.75,0};
    colorBackgroundDisabled[] = {0,0,0,0};
    colorBackgroundActive[] = {0.75,0.75,0.75,0.2};
    colorFocused[] = {0.75,0.75,0.75,0};
    colorShadow[] = {0.023529,0,0.0313725,0};
    colorBorder[] = {0.023529,0,0.0313725,0};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "puristaMedium";
    sizeEx = 0.025;
    offsetX = 0;
    offsetY = 0;
    offsetPressedX = 0;
    offsetPressedY = 0;
    borderSize = 0;
};


class RscFrame
{
    type = CT_STATIC;
    idc = -1;
    style = ST_FRAME;
    shadow = 2;
    colorBackground[] = {1,1,1,1};
    colorText[] = {1,1,1,0.9};
    font = "puristaMedium";
    sizeEx = 0.03;
    text = "";
};

class BOX
{ 
   type = CT_STATIC;
    idc = -1;
    style = ST_CENTER;
    shadow = 2;
    colorText[] = {1,1,1,1};
    font = "puristaMedium";
    sizeEx = 0.02;
    colorBackground[] = { 0.2,0.2,0.2, 0.9 }; 
    text = ""; 

};


/*
class RscShortcutButton 
{ 
	idc = -1;
	style = 0;
	type = 16; 
	class HitZone { left = 0.0; top = 0.0; right = 1.0; bottom = 1.0; }; 
	class ShortcutPos { left = 0.005; top = 0.005; w = 0.0225; h = 0.03; }; 
	class TextPos { left = 0.02; top = 0.005; right = 0.005; bottom = 0.005; }; 
	animTextureNormal = "common\client\VON_PLUS_GUI\Skins\FlecktarnBW_paa.paa";// "#(argb,8,8,3)color(1,1,1,1)"; 
	animTextureDisabled = "#(argb,8,8,3)color(0.3,0.3,0.3,1)"; 
	animTextureOver = "#(argb,8,8,3)color(0.8,0.3,0,1)"; 
	animTextureFocused = "#(argb,8,8,3)color(1,0.5,0,1)"; 
	animTexturePressed = "#(argb,8,8,3)color(1,0,0,1)"; 
	animTextureDefault = "#(argb,8,8,3)color(0,1,0,1)"; 
	period = 0.1; periodFocus = 0.4; periodOver = 0.4; 
	shortcuts[] = {}; 
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)"; 
	color[] = {0,0,0,0.6}; color2[] = {0,0,0,1}; 
	colorDisabled[] = {0,0,0,0.3}; 
	colorBackground[] = {1,1,1,1}; 
	colorBackground2[] = {1,1,1,0.5}; 
	text = ""; 
	size = 0.04; 
	soundEnter[] = {"\A3\ui_f\data\sound\onover",0.09,1};
	soundPush[] = {"\A3\ui_f\data\sound\new1",0.0,0};
	soundClick[] = {"\A3\ui_f\data\sound\onclick",0.07,1};
	soundEscape[] = {"\A3\ui_f\data\sound\onescape",0.09,1};
	class Attributes 
	{ 
	font = "TahomaB"; 
	color = "#000000"; 
	align = "left"; 
	shadow = 0; 
	}; 
};

class RscButtonTest
{
	idc = -1;
	style = 0;
	default = 0;
	type = CT_SHORTCUTBUTTON;
	shadow = 1;
	//w = 0.183825;
	//h = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	color[] = {1,1,1,1.0};
	color2[] = {0.95,0.95,0.95,1};
	colorDisabled[] = {1,1,1,0.25};
	//colorActiveBackground= {1,1,1,0};
	//colorBackground[] = {"(profilenamespace getvariable['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable['GUI_BCG_RGB_B',0.5])",1};
	colorBackground[]= {1,1,1,1};
	colorBackground2[] = {1,1,1,1};
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus = 1.2;
	periodOver = 0.8;
	class HitZone
	{
		left = 0.0;
		top = 0.0;
		right = 0.0;
		bottom = 0.0;
	};
	class ShortcutPos
	{
		left = 0;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - 	(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos
	{
		left = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - 	(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0.0;
	};
	shortcuts[] = {};
	period = 0.4;//probably blinking
	font = "PuristaMedium";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	soundEnter[] = {"\A3\ui_f\data\sound\onover",0.09,1};
	soundPush[] = {"\A3\ui_f\data\sound\new1",0.0,0};
	soundClick[] = {"\A3\ui_f\data\sound\onclick",0.07,1};
	soundEscape[] = {"\A3\ui_f\data\sound\onescape",0.09,1};
	action = "";
	class Attributes
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	class AttributesImage
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
	};
};
*/