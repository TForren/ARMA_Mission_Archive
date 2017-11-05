#include "GUI_OPTIONS.hpp" //Loading additional name and file definitions
#include "Radios.hpp"
//hint format["%1",(_channel_array select _ch)];
private "_button";
_button= _this select 0;//should be 0,1 or 2
_displayed_channel=call GUI_displayedCH;
_ch=_displayed_channel select _button;
[_ch]call PlayerToggleChannel;
_nil=[true]call GUI_refresh;