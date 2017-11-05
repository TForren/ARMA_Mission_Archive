#include "GUI_OPTIONS.hpp" //Loading additional name and file definitions
#include "Radios.hpp"
//#define getUsableChannels (([call UsableStations,call UsableTransmitters,CommunicationMatrix]call UsableChannels)select 0)
#define UsableCH_ID(NUM) (_usable_channels select NUM)
#define notUsableCH_ID(NUM) (_not_usable_channels select NUM)
private["_mode"];
_mode=_this select 0;//expects true or false , for true the tab list of channels becomes updated

//_gui_channel=player getVariable "GUI_CHANNEL";
_displayed_channels=call GUI_displayedCH;
_channel_array=player getVariable "ACTIVE_CHANNEL_ARRAY";
_channel_names=player getVariable "GUI_CHANNEL_NAMES";
_active_lines=player getVariable "OPEN_CHANNEL_LINES";

_usable_channels=player getVariable "USABLE_CHANNEL_ARRAY";
_usable_ch_count=count _usable_channels;
_usable_channels_id=player getVariable "USABLE_CHANNEL_ID_ARRAY";
_not_usable_channels=player getVariable "NOTUSABLE_CHANNEL_ARRAY";
_not_usable_ch_count=count _not_usable_channels;
//Update Headline
//ctrlSetText[IDC_CHANNEL_HEADLINE,format["Channel %1-%2",(_displayed_channels select 0),(_displayed_channels select 2)]];
//TriChannelDisplay
//Deactivate all not needed buttons

for[{_i=0},{_i<=2},{_i=_i+1}]do{
_ch=(_displayed_channels select _i);
_idc=(IDC_CHANNEL_NAMES select _i);
if((_usable_channels_id select _ch)>=0)then{//_ch in _usable_channels==true
ctrlSetText[_idc,format["%1 : %2",_ch,(_channel_names select _ch)]];
	if(_channel_array select _ch)then{
	ctrlSetText[(IDC_CHECKBOXES_BACKGROUND select _i),guiChBoxAct];}else{
	if((_active_lines==get_TM_MAXPORTS(0)))then{// All station lines are taken
	ctrlSetText[(IDC_CHECKBOXES_BACKGROUND select _i),guiChBoxOff];}else{// There is at least on station line still available
	ctrlSetText[(IDC_CHECKBOXES_BACKGROUND select _i),guiChBoxInAct];}};}else{
//will only be needed when max_chat_lines less than 3 need to rework that
    ctrlSetText[_idc,""];//delete any text might not be needed as the initial text is empty anyway
    ctrlEnable[(IDC_CHECKBOXES_BUTTON select _i),false];//disable button of checkbox
    ctrlSetText[(IDC_CHECKBOXES_BACKGROUND select _i),{0,0,0,0}];//disable background picture	
	};
};
		      
//Update of channel tab list (not always needed)
for[{_i=0},{_i<_not_usable_ch_count},{_i=_i+1}]do{
_ch=notUsableCH_ID(_i);
ctrlEnable[(IDC_CHANNEL_BUTTONS select _ch),false];
ctrlSetText[(IDC_CHANNEL_BUTTONS select _ch),""];};
for[{_i=0},{_i<_usable_ch_count},{_i=_i+1}]do{
_ch=UsableCH_ID(_i);
//ctrlEnable[(IDC_CHANNEL_BUTTONS select _ch),true];
ctrlSetText[(IDC_CHANNEL_BUTTONS select _ch),format["Ch. %1",_ch]];};

if(_mode)then{
with uiNamespace do{
display=findDisplay IDD_GUI;
for[{_i=0},{_i<_usable_ch_count},{_i=_i+1}]do{
control=display displayCtrl(IDC_CHANNEL_BUTTONS select(_usable_channels select _i));
	if(_channel_array select(_usable_channels select _i))then{
	control ctrlSetTextColor GreyOn;}else{
	control ctrlSetTextColor GreyOff;};	
		};
	};
};