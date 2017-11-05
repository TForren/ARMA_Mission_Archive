#include "Radios.hpp"
_ch=_this select 0;//should be 0,1 or 2
_channel_array=player getVariable "ACTIVE_CHANNEL_ARRAY";
_active_lines=player getVariable "OPEN_CHANNEL_LINES";

if((_channel_array select _ch))then{
_ch+1 radioChannelRemove[player];// Remove radio channel
_channel_array set[_ch,false];//set channel active value to false for _channel_array
player setVariable["OPEN_CHANNEL_LINES",_active_lines-1];//reduce the count of open lines by 1
}else{
//check if max station lines is reached and react accordingly
if(_active_lines<get_TM_MAXPORTS(0))then{// if not reached
_ch+1 radioChannelAdd[player];// Add radio channel 
_channel_array set[_ch,true];//set channel false value to true for _channel_array
player setVariable["OPEN_CHANNEL_LINES",_active_lines+1];//decrease the count of open lines by 1
}else{//if reached
//playSound "my_alarm";
hintSilent format["The Maximum number of possible open channels (%1) of your transmitter %2 are reached. Close any open line before selecting a new one",_active_lines,get_TM_NAME(0)];
}};
//Update active channels     
player setVariable["ACTIVE_CHANNEL_ARRAY",_channel_array];