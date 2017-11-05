private["_channel_array","_usable_channel_array_id","_count_open"];
_channel_array=player getVariable "ACTIVE_CHANNEL_ARRAY";
_usable_channel_array_id=player getVariable "USABLE_CHANNEL_ID_ARRAY";	
_count_open=0;
for "_i" from 0 to 9 do{
	if((_channel_array select _i)&&{((_usable_channel_array_id select _i) >=0)})then{
	_i+1 radioChannelAdd [player]; 
	_count_open=_count_open+1;}else{
	_channel_array set[_i,false];
	_i+1 radioChannelRemove[player];};
};
player setVariable["ACTIVE_CHANNEL_ARRAY",_channel_array];
player setVariable["OPEN_CHANNEL_LINES",_count_open];   