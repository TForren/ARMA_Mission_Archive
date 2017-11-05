//#include "Stations.hpp"
//#include "Radios.hpp"
private["_Ch","_HasStations","_HasTransmitter","_ComMatrix","_ChMatrix","_i"];
_Ch=_this select 0;
_HasStations=_this select 1;//Bool Array of ActiveStations
_HasTransmitter=_this select 2;//Bool Array of ActiveTransmitters
_ComMatrix=_this select 3;//ComMatrix Array
_ChMatrix=[];

for "_i" from  0 to(count TransmitterArray)-1 do{
_TransmitChannelBool=[];
	for "_j" from 0 to(count StationArray)-1 do{
	if((_HasTransmitter select _i)&&{(_HasStations select _j)})then{
	_TransmitChannelBool=_TransmitChannelBool+[(_ch in((_ComMatrix select _i)select _j))];}else{
	_TransmitChannelBool=_TransmitChannelBool+[false];}
	};
_ChMatrix=_ChMatrix+[_TransmitChannelBool];}; 
_ChMatrix	