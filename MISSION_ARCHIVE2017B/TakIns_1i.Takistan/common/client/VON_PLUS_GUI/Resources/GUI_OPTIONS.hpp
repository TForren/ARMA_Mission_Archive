//GUI Options
#define guisize 0.22 // Adjust the overall displayed gui size. Use values under 0.3 for 1920x1028. TODO: for big resolutions higher resolved ppa's might needed  
#include "Skins\BWFlecktarn.hpp"  //Loading skin definition, change skin here
#define checkRadio true // false dont check if player has radio 

// Color defines
#define GreyOff [0.7,0.7,0.7,0.5]
#define GreyOn [0.1,0.1,0.1,0.5]

//IDC definitions are going here. IDC used are 5000-5022. If you have trouble with overlapping idc's try changing these
#define IDD_GUI 4000
 
#define IDC_ROLL_ARROWS_0 5000 
#define IDC_ROLL_ARROWS_1 5001
#define IDC_ROLL_ARROWS_2 5002
#define IDC_ROLL_ARROWS_3 5003
#define IDC_ROLL_ARROWS [IDC_ROLL_ARROWS_0,IDC_ROLL_ARROWS_1,IDC_ROLL_ARROWS_2,IDC_ROLL_ARROWS_3]

#define IDC_ROLL_LEFT 5024
#define IDC_ROLL_RIGHT 5025

#define IDC_CHANNEL_HEADLINE 5004	

#define IDC_CHANNEL_NAMES_0 5005
#define IDC_CHANNEL_NAMES_1 5006
#define IDC_CHANNEL_NAMES_2 5007
#define IDC_CHANNEL_NAMES [IDC_CHANNEL_NAMES_0,IDC_CHANNEL_NAMES_1,IDC_CHANNEL_NAMES_2]
    
#define IDC_CHECKBOXES_BUTTON_0 5008
#define IDC_CHECKBOXES_BUTTON_1 5010
#define IDC_CHECKBOXES_BUTTON_2 5012
#define IDC_CHECKBOXES_BUTTON [IDC_CHECKBOXES_BUTTON_0,IDC_CHECKBOXES_BUTTON_1,IDC_CHECKBOXES_BUTTON_2]

#define IDC_CHECKBOXES_BACKGROUND_0 5009
#define IDC_CHECKBOXES_BACKGROUND_1 5011
#define IDC_CHECKBOXES_BACKGROUND_2 5013
#define IDC_CHECKBOXES_BACKGROUND [IDC_CHECKBOXES_BACKGROUND_0,IDC_CHECKBOXES_BACKGROUND_1,IDC_CHECKBOXES_BACKGROUND_2]

#define IDC_CHANNEL_BUTTONS_0 5023
#define IDC_CHANNEL_BUTTONS_1 5014
#define IDC_CHANNEL_BUTTONS_2 5015
#define IDC_CHANNEL_BUTTONS_3 5016
#define IDC_CHANNEL_BUTTONS_4 5017
#define IDC_CHANNEL_BUTTONS_5 5018
#define IDC_CHANNEL_BUTTONS_6 5019
#define IDC_CHANNEL_BUTTONS_7 5020
#define IDC_CHANNEL_BUTTONS_8 5021
#define IDC_CHANNEL_BUTTONS_9 5022
#define IDC_CHANNEL_BUTTONS [IDC_CHANNEL_BUTTONS_0,IDC_CHANNEL_BUTTONS_1,IDC_CHANNEL_BUTTONS_2,IDC_CHANNEL_BUTTONS_3,IDC_CHANNEL_BUTTONS_4,IDC_CHANNEL_BUTTONS_5,IDC_CHANNEL_BUTTONS_6,IDC_CHANNEL_BUTTONS_7,IDC_CHANNEL_BUTTONS_8,IDC_CHANNEL_BUTTONS_9]