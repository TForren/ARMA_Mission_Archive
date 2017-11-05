private "_new_gui_channel";
_new_gui_channel=_this select 0;
player setVariable["GUI_CHANNEL",_new_gui_channel];
[false]call GUI_refresh;