////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by [eXe.S]-Newton, v1.062, #Robiza)
////////////////////////////////////////////////////////

#include "Resources\GUI_OPTIONS.hpp"  //Loading name and file definitions

#define guisize           0.22                        // use values under 0.3 for 1920x1028 for big resolutions higher resolved ppa's are needed 
#define guiW              guisize*safezoneW           // GUI width
#define guiH              guisize*(getResolution select 4)*safezoneH    //GUI height
#define guiCenterX        (0.5*safezoneW+safezoneX)    //GUI initial center x
#define guiCenterY        (0.5*safezoneH+safezoneY)    //GUI initial center y
#define guiTopCornerX     (guiCenterX-guiW/2)          //GUI top left corner x value
#define guiLowCornerX     (guiCenterX+guiW/2)          //GUI bottom right corner x value
#define guiTopCornerY     (guiCenterY-guiH/2)          //GUI top left corner y value
#define guiLowCornerY     (guiCenterY+guiH/2)          //GUI bottom right corner y value


class Menue
{
idd=4000;
movingenable=true;
//onLoad = "myDisplay=(_this select 0)"; 
class Controls
{

//background image
class PicBg: RscPicture
{
	idc = 1200;
	text = guiSkin;
	x = guiTopCornerX;
	y = guiTopCornerY;
	w = guiW;
	h = guiH;
};

// RollBack Arrows of top Menue

//Left

class PicChannelRollLeft:  RscPicture
{
	idc = IDC_ROLL_ARROWS_0;
	text = guiLRollInAct; //--- ToDo: Localize;
	x = guiTopCornerX+0.12*guiW;
	y = guiTopCornerY+guiH/6;
	w = 0.075*guiW;
	h = 0.075*guiH;
};

class PicChannelRollLeft2:  RscPicture
{
	idc = IDC_ROLL_ARROWS_1;
	text = guiLRollInAct;//--- ToDo: Localize;
	x = guiTopCornerX+(0.12+0.047)*guiW;
	y = guiTopCornerY+guiH/6;
	w = 0.075*guiW;
	h = 0.075 * guiH;
};

class PicChannelRollLeft3:  RscPicture
{
	idc = -1;
	text = guiLRollAct; //--- ToDo: Localize;
	x = guiTopCornerX+(0.12+2*0.047)*guiW;
	y = guiTopCornerY+guiH/6;
	w = 0.075*guiW;
	h = 0.075 * guiH;
};

class ChannelLeftRoll: RscRollButton
{
	idc = IDC_ROLL_LEFT;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+0.12*guiW;
	y = guiTopCornerY+guiH/6;
	w = (2*0.047+0.075) * guiW;
	h = 0.075 * guiH;
        action="[false]spawn GUI_RollCH";
};

//Right

class PicChannelRollRight:  RscPicture
{
	idc = -1;
	text = guiRRollAct; //--- ToDo: Localize;
	x = guiTopCornerX+0.685*guiW;
	y = guiTopCornerY+guiH/6;
	w = 0.075 * guiW;
	h = 0.075 * guiH;
};

class PicChannelRollRight2:  RscPicture
{
	idc = IDC_ROLL_ARROWS_2;
	text = guiRRollInAct; //--- ToDo: Localize;
	x = guiTopCornerX+(0.685+0.047) * guiW;
	y = guiTopCornerY+guiH/6;
	w = 0.075 * guiW;
	h = 0.075 * guiH;
};

class PicChannelRollRight3:  RscPicture
{
	idc = IDC_ROLL_ARROWS_3;
	text = guiRRollInAct; //--- ToDo: Localize;
	x = guiTopCornerX+(0.685+2*0.047)*guiW;
	y = guiTopCornerY+guiH/6;
	w = 0.075 * guiW;
	h = 0.075 * guiH;
};

class ChannelRightRoll: RscRollButton
{
	idc = IDC_ROLL_RIGHT;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+0.685*guiW;
	y = guiTopCornerY+guiH/6;
	w = (2*0.047+0.075)* guiW;
	h = 0.075 * guiH;
    action="[true]spawn GUI_RollCH";
};

//Identifier Middle Menue

class TopChannelIdentifier: RscHeaderButton
{
	idc = IDC_CHANNEL_HEADLINE;
	text = "Channels"; //--- ToDo: Localize;
	x = guiTopCornerX+0.31*guiW;
	y = guiTopCornerY+guiH/6;
	w = 0.355 * guiW;
	h = 0.075 * guiH;
    action="[]spawn GUI_changeRollSpeed";
};

class VONchannelA: RscVONText
{
	idc = IDC_CHANNEL_NAMES_0;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+0.11*guiW;
	y = guiTopCornerY+0.29*guiH;
	w = 0.65 * guiW;
	h = 0.075 * guiH;
};

class VONchannelB: RscVONText
{
	idc = IDC_CHANNEL_NAMES_1;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+0.11*guiW;
	y = guiTopCornerY+0.385*guiH;
	w = 0.65 * guiW;
	h = 0.075 * guiH;
};

class VONchannelC: RscVONText
{
	idc = IDC_CHANNEL_NAMES_2;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+0.11*guiW;
	y = guiTopCornerY+0.48*guiH;
	w = 0.65 * guiW;
	h = 0.075 * guiH;
};


class VONchannelCheckA: RscButtonCheckBox
{
	idc = IDC_CHECKBOXES_BUTTON_0;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+(0.11+0.67+0.01) * guiW;
	y = guiTopCornerY+(0.29+0.01)*guiH;
	w = 0.055 * guiW;
	h = 0.055 * guiH;
    action="[0]spawn GUI_toggleCH";
};


class PicCheckboxA: RscPicture
{
	idc = IDC_CHECKBOXES_BACKGROUND_0;
	text = guiChBoxInAct;
	x = guiTopCornerX+(0.11+0.67)*guiW;
	y = guiTopCornerY+0.29*guiH;
	w = 0.075 * guiW;
	h = 0.075 * guiH;
};

class VONchannelCheckB: RscButtonCheckBox
{
	idc = IDC_CHECKBOXES_BUTTON_1;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+(0.11+0.67+0.01) * guiW;
	y = guiTopCornerY+(0.385+0.01)*guiH;
	w = 0.055 * guiW;
	h = 0.055 * guiH;
    action="[1]spawn GUI_toggleCH";
};


class PicCheckboxB: RscPicture
{
	idc = IDC_CHECKBOXES_BACKGROUND_1;
	text = guiChBoxInAct;
	x = guiTopCornerX+(0.11+0.67)*guiW;
	y = guiTopCornerY+0.385*guiH;
	w = 0.075 * guiW;
	h = 0.075 * guiH;
};

class VONchannelCheckC: RscButtonCheckBox
{
	idc = IDC_CHECKBOXES_BUTTON_2;
	text = ""; //--- ToDo: Localize;
	x = guiTopCornerX+(0.11+0.67+0.01)*guiW;
	y = guiTopCornerY+(0.48+0.01)*guiH;
	w = 0.055 * guiW;
	h = 0.055 * guiH;
    action="[2]spawn GUI_toggleCH";
};


class PicCheckboxC: RscPicture
{
	idc = IDC_CHECKBOXES_BACKGROUND_2;
	text = guiChBoxInAct;
	x = guiTopCornerX+(0.11+0.67) * guiW;
	y = guiTopCornerY+0.48*guiH;
	w = 0.075 * guiW;
	h = 0.075 * guiH;
};


class VONchannelNUM1: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_0;
	text = "CH. 0"; //--- ToDo: Localize;
	x = guiTopCornerX+0.146*guiW;
	y = guiTopCornerY+0.59*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[0]spawn GUI_Jump2CH";
};

class VONchannelNUM2: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_1;
	text = "CH. 1"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+0.136) * guiW;
	y = guiTopCornerY+0.59*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[1]spawn GUI_Jump2CH";
};

class VONchannelNUM3: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_2;
	text = "CH. 2"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+2*0.136)*guiW;
	y = guiTopCornerY+0.59*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[2]spawn GUI_Jump2CH";
};

class VONchannelNUM4: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_3;
	text = "CH. 3"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+3*0.136)*guiW;
	y = guiTopCornerY+0.59*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[3]spawn GUI_Jump2CH";
};

class VONchannelNUM5: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_4;
	text = "CH. 4"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+4*0.136)*guiW;
	y = guiTopCornerY+0.59*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[4]spawn GUI_Jump2CH";
};

class VONchannelNUM6: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_5;
	text = "CH. 5"; //--- ToDo: Localize;
	x = guiTopCornerX+0.146*guiW;
	y = guiTopCornerY+(0.59+0.055)*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[5]spawn GUI_Jump2CH";
};


class VONchannelNUM7: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_6;
	text = "CH. 6"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+0.136)*guiW;
	y = guiTopCornerY+(0.59+0.055)*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[6]spawn GUI_Jump2CH";
};

class VONchannelNUM8: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_7;
	text = "CH. 7"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+2*0.136)*guiW;
	y = guiTopCornerY+(0.59+0.055)*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[7]spawn GUI_Jump2CH";
};

class VONchannelNUM9: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_8;
	text = "CH. 8"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+3*0.136)*guiW;
	y = guiTopCornerY+(0.59+0.055)*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[8]spawn GUI_Jump2CH";
};

class VONchannelNUM0: RscButton2
{
	idc = IDC_CHANNEL_BUTTONS_9;
	text = "CH. 9"; //--- ToDo: Localize;
	x = guiTopCornerX+(0.146+4*0.136)*guiW;
	y = guiTopCornerY+(0.59+0.055)*guiH;
	w = 0.136 * guiW;
	h = 0.055 * guiH;
    action="[9]spawn GUI_Jump2CH";
};};};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
