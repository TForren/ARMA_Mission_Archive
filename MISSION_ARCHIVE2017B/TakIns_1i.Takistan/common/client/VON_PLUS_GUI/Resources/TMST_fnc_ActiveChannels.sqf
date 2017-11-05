/*
There are max 10 channel - as array [0,1,2,3,4,5,6,7,8,9]
Due to losing channels by transmitters or station you normally use a reduce sorted array like _return1=[3,4,6,7]
This can be converted to _return2=[-1,-1,-1,0,1,-1,2,3,-1,-1]
for an array cyceling through the elements of the shortend array [3,4,6,7] it is possible to gain for a given
channel x the id of this channel in its shortened Version
the convert array must only be called once there is a change to the TMST system
*/
private["_ComMatrix","_return","_return1","_return2","_return3","_HasTransmitter","_HasStations","_i","_ch"];
_HasStations=_this select 0;//Bool Array input of TMST_fnc_ActiveStations
_HasTransmitter=_this select 1;//Bool Array input of TMST_fnc_ActiveTransmitters
_ComMatrix=_this select 2;
_index=0;
_return1=[];//something like[3,4,6,7]
_return2=[-1,-1,-1,-1,-1,-1,-1,-1,-1];//something like[-1,-1,-1,0,1,-1,2,3,-1,-1]  

for "_ch" from 0 to 9 do{
scopeName "search";
for "_i" from 0 to(count TransmitterArray)-1 do{
	for "_j" from 0 to(count StationArray)-1 do{
		if((_HasTransmitter select _i)&&{(_HasStations select _j)})then{
			if((_ch in((_ComMatrix select _i)select _j)))then{
			//_return1=_return1+[_ch];
			_return1 set[_index,_ch];
			_return2 set[_ch,_index];
			_index=_index+1;
			breakTo "search";};
			};
		};
	}; 	
};
_return3=[0,1,2,3,4,5,6,7,8,9]-_return1;//Inactive array
_return=[_return1,_return2,_return3];
_return