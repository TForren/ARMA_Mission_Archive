#include "GUI_OPTIONS.hpp"
#include "Radios.hpp"
_gui_channel=player getVariable "GUI_CHANNEL";
_usable_channels=(player getVariable "USABLE_CHANNEL_ARRAY");
_usable_ch_count=count _usable_channels;
_gui_id=_usable_channels find _gui_channel;
if(_gui_id==-1)then{_gui_id=0};
_array_id=[0,0,0];
switch(_gui_id)do{
case 0:{
	_array_id=[(_usable_ch_count-1),0,1];//for this to work max_chat_lines must be at least 1
};
case(_usable_ch_count-1):{
	_array_id=[(_usable_ch_count-2),(_usable_ch_count-1),0];//for this to work max_chat_lines must be at least 2 or else it would create errors as there is no channel -1
};
default {
	_array_id set[0,_gui_id-1];
	_array_id set[1,_gui_id];
	_array_id set[2,_gui_id+1];
	};
};

_ch1=_usable_channels select(_array_id select 0);
_ch2=_usable_channels select(_array_id select 1);
_ch3=_usable_channels select(_array_id select 2);
_displayed_channel=[_ch1,_ch2,_ch3];
_displayed_channel