_channel_array=player getVariable "ACTIVE_CHANNEL_ARRAY";
for[{_i=0},{_i<=10},{_i=_i+1}]do{
	if(_channel_array select _i)then{
	_channel_array set[_i,false];
	_i+1 radioChannelRemove[player]; 
	};
};
player setVariable["ACTIVE_CHANNEL_ARRAY",_channel_array];
player setVariable["OPEN_CHANNEL_LINES",0];