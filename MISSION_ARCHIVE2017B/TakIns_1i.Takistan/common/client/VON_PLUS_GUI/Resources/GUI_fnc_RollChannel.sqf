#include "GUI_OPTIONS.hpp" 
private["_forward","_roll_speed","_old_gui_channel","_usable_channels","_usable_channels_id","_usable_ch_count","_old_gui_id","_new_gui_id"];
_forward=_this select 0;

_roll_speed= player getVariable "Channel_Roll_Speed";
_old_gui_channel= player getVariable "GUI_CHANNEL";
_usable_channels=player getVariable "USABLE_CHANNEL_ARRAY";
_usable_channels_id=player getVariable "USABLE_CHANNEL_ID_ARRAY";
_usable_ch_count=count _usable_channels;
_old_gui_id=_usable_channels_id select _old_gui_channel;

_new_gui_id=0;
if(_forward)then{
_new_gui_id=_old_gui_id+_roll_speed;
}else{ 
_new_gui_id=_old_gui_id-_roll_speed;
};
//make sure it rolls right!
_new_gui_id=(_new_gui_id mod _usable_ch_count+_usable_ch_count)mod _usable_ch_count;

player setVariable["GUI_CHANNEL",_usable_channels select _new_gui_id];
[false]call GUI_refresh;