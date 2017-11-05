#include "Stations.hpp"
#define getUsableChannels([call UsableStations,call UsableTransmitters,CommunicationMatrix]call UsableChannels)
private["_StationID"];
_StationID=_this select 0;
waitUntil{alive player};
//playSound "my_alarm";
ST_ACTIVE(_StationID)=false;
set_ST_ACTIVE(_StationID);
hintSilent format["Station %1 has been deactivated",get_ST_NAME(_StationID)]; 
_usable_channels=getUsableChannels;
player setVariable["USABLE_CHANNEL_ARRAY",_usable_channels select 0];	
player setVariable["USABLE_CHANNEL_ID_ARRAY",_usable_channels select 1];	
player setVariable["NOTUSABLE_CHANNEL_ARRAY",_usable_channels select 2];//Update Player status;
//hint format["%1",[]call UsableStations];
_nil=[]call PlayerReActivateAllCH;