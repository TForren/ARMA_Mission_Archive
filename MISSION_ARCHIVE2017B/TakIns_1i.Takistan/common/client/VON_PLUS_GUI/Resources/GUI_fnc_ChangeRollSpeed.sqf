//private[_idc1,_idc2,_idc3,_idc4];
#include "GUI_OPTIONS.hpp"//Loading additional name and file definitions
_rspeed=player getVariable "Channel_Roll_Speed";
switch(_rspeed)do{
case 1:{
	player setVariable["Channel_Roll_Speed",2];
	ctrlSetText[IDC_ROLL_ARROWS_0,guiLRollInAct];
	ctrlSetText[IDC_ROLL_ARROWS_1,guiLRollAct];
	ctrlSetText[IDC_ROLL_ARROWS_2,guiRRollAct];
	ctrlSetText[IDC_ROLL_ARROWS_3,guiRRollInAct];};
case 2:{
	player setVariable["Channel_Roll_Speed",3];
	ctrlSetText[IDC_ROLL_ARROWS_0,guiLRollAct];
	ctrlSetText[IDC_ROLL_ARROWS_1,guiLRollAct];
	ctrlSetText[IDC_ROLL_ARROWS_2,guiRRollAct];
	ctrlSetText[IDC_ROLL_ARROWS_3,guiRRollAct];};
case 3:{
	player setVariable["Channel_Roll_Speed",1];
	ctrlSetText[IDC_ROLL_ARROWS_0,guiLRollInAct];
	ctrlSetText[IDC_ROLL_ARROWS_1,guiLRollInAct];
	ctrlSetText[IDC_ROLL_ARROWS_2,guiRRollInAct];
	ctrlSetText[IDC_ROLL_ARROWS_3,guiRRollInAct];};
};