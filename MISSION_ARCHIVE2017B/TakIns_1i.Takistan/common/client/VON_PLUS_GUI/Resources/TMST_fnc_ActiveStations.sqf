#include "Stations.hpp"
//#include "Radios.hpp"
//This function needs the global Variable StationArray make sure you have initialised it!
//returns bool Array of usable stations 
private["_active","_i"];
_active=[];
for "_i" from  0 to(count StationArray)-1 do{    
if(get_ST_ACTIVE(_i))then{
	if(!get_ST_FACONLY(_i) || {((side player)in get_ST_FACTION(_i))&&{get_ST_FACONLY(_i)}} )then{
	_active=_active+[true];
	}else{_active=_active+[false];};
}else{
_active=_active+[false];}; 
};
_active