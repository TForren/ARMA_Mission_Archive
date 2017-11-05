//This function needs the global Variable TransmitterArray make sure you have initialised it!
//returns bool Array of usable Transmitters 
//#include "Stations.hpp"
#include "Radios.hpp"
private["_active","_i"];
_active=[];
for "_i" from 0  to(count TransmitterArray)-1 do{ 
if((get_TM_OBJECT(_i)in assignedItems player))then{_active=_active+[true];}else{_active=_active+[false];};
};
_active