// INCLUDES
#include "Resources\Stations.hpp"
#include "Resources\Radios.hpp"
#include "Resources\GUI_OPTIONS.hpp"
#include "GUI_initial_Channel_names.hpp"
// DEFINES
#define Fnc_Prepare(LOCATION) compile(preprocessFileLineNumbers LOCATION)
#define getUsableChannels ([call UsableStations,call UsableTransmitters,CommunicationMatrix]call UsableChannels)
// Function definitions
/*Trigger Functions*/
TriggerDeactivateStation=Fnc_Prepare("common\client\VON_PLUS_GUI\Resources\VPG_trigger_DectivateStation.SQF");
/*TMST Plug-in*/
TMST_INIT=Fnc_Prepare("common\client\VON_PLUS_GUI\init_stations.SQF");

/*GUI*/
GUI_toggleCH=Fnc_Prepare("common\client\VON_PLUS_GUI\Resources\GUI_fnc_ToggleChannel.SQF");
GUI_displayedCH=Fnc_Prepare("common\client\VON_PLUS_GUI\Resources\GUI_fnc_getDisplayedChannels.SQF");
GUI_refresh=Fnc_Prepare("common\client\VON_PLUS_GUI\Resources\GUI_fnc_UpdateDisplay.SQF");
GUI_Jump2CH=Fnc_Prepare("common\client\VON_PLUS_GUI\Resources\GUI_fnc_Jump2Channel.SQF");
GUI_RollCH=Fnc_Prepare("common\client\VON_PLUS_GUI\Resources\GUI_fnc_RollChannel.SQF");
GUI_changeRollSpeed=Fnc_Prepare("common\client\VON_PLUS_GUI\Resources\GUI_fnc_ChangeRollSpeed.SQF");

//additional INIT functions
[]call TMST_INIT;

//Create Channels on machine if the machine is either a server in a multiplayer game or if it is running a singleplayer game
if(isServer)then{
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_0,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_1,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_2,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_3,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_4,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_5,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_6,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_7,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_8,"%CHANNEL_LABEL %UNIT_NAME",[]];
_index=radioChannelCreate[[0.96,0.34,0.13,0.8],CH_name_9,"%CHANNEL_LABEL %UNIT_NAME",[]];

VPG_INIT=true;//To make sure that the option of channels isn't there without being initialised
publicVariable "VPG_INIT";
};
waitUntil{VPG_INIT};//Unless VPG is returned
if(!isDedicated)then{//On client side if machine is not an dedicated server
waitUntil{!isNull player};
waitUntil{player==player};

//Set local variables
player setVariable["Channel_Roll_Speed",1];
player setVariable["GUI_CHANNEL",0];
player setVariable["OPEN_CHANNEL_LINES",0];// Counts how many lines have been opened
player setVariable["GUI_CHANNEL_NAMES",[CH_name_0,CH_name_1,CH_name_2,CH_name_3,CH_name_4,CH_name_5,CH_name_6,CH_name_7,CH_name_8,CH_name_9]];
player setVariable["ACTIVE_CHANNEL_ARRAY",[false,false,false,false,false,false,false,false,false,false]];

_usable_channels=getUsableChannels;
player setVariable["USABLE_CHANNEL_ARRAY",_usable_channels select 0];	
player setVariable["USABLE_CHANNEL_ID_ARRAY",_usable_channels select 1];	
player setVariable["NOTUSABLE_CHANNEL_ARRAY",_usable_channels select 2];	
	//"hint fromat[""%1"",(inputAction ""LeanLeft"")];"
	//waitUntil{!isNull(findDisplay 46)};
    //(findDisplay 46)displayAddEventHandler["KeyDown","hint str actionName ""NextChannel"";player action[""NextChannel"",true];"];
	if(checkRadio)then{
	VPG_MENUE_ACTION=player addAction["<t shadow='1.5' color='#7A9174'>Radio Menu</t>","common\client\VON_PLUS_GUI\Resources\Display_GUI.SQF","",0,true,true,"","(""ItemRadio"" in assignedItems player)"];//Dialog only available when having a radio!		
	player addEventHandler["Respawn",{VPG_MENUE_ACTION=player addAction["<t size='1.1' shadow='2' color='#1F9CA2'>Radio Menu</t>","common\client\VON_PLUS_GUI\Resources\Display_GUI.SQF","",0,true,true,"","(""ItemRadio"" in assignedItems player)"];_nil=[]spawn PlayerReActivateAllCH}];
	player addEventHandler["Put","if(""ItemRadio"" in _this)then{[]spawn PlayerRemoveAllCH;};"];//dropping Radio means loosing all channels!
	}else{
	VPG_MENUE_ACTION=player addAction["<t shadow='1.5' color='#7A9174'>Radio Menu</t>","common\client\VON_PLUS_GUI\Resources\LoadGUI.SQF"];
	player addEventHandler["Respawn",{VPG_MENUE_ACTION=player addAction["Open Radio Menu","common\client\VON_PLUS_GUI\Resources\Display_GUI.SQF"]}];
	//"player action[""NextChannel"",true];"
	};
};