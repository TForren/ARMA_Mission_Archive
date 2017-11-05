if(!isServer)exitWith{};
private["_newpos","_cargoType","_vehType","_dGrp","_mkrAgl","_side","_bGroup","_civZone","_fGrp","_fSize","_fGrps","_eGrp","_eGrps","_dGrps","_aMin","_aSize","_aGrps","_aGrp","_bMin","_units","_bSize","_bGrps","_bGrp","_trig","_cache","_grp","_crew","_vehicle","_actCond","_mAN","_mAH","_distance","_mA","_settings","_cGrp","_cSize","_cGrps","_taken","_clear","_enemyFaction","_faction","_n","_eosAct","_eosActivated","_debug","_mkr","_mPos","_mkrX","_mkrY"];
_mkr=(_this select 0);_mPos=markerPos(_this select 0);
_mkrX=getMarkerSize _mkr select 0;
_mkrY=getMarkerSize _mkr select 1;
_mkrAgl=markerDir _mkr;
_a=(_this select 1);_aGrps=_a select 0;_aSize=_a select 1;_aMin=_aSize select 0;
_b=(_this select 2);_bGrps=_b select 0;_bSize=_b select 1;_bMin=_bSize select 0;
_c=(_this select 3);_cGrps=_c select 0;_cSize=_c select 1;
_d=(_this select 4);_dGrps=_d select 0;_eGrps=_d select 1;_fGrps=_d select 2;_fSize=_d select 3;
_settings=(_this select 5);_faction=_settings select 0;_mA=_settings select 1;_distance=_settings select 2;_side=_settings select 3;
_heightLimit=if(count _settings > 4)then{_settings select 4}else{false};
_debug=if(count _settings > 5)then{_settings select 5}else{false};
_cache=if(count _this > 6)then{_this select 6}else{false};

if(_side==EAST)then{_enemyFaction="east";_civZone=false;};
if(_side==WEST)then{_enemyFaction="west";_civZone=false;};
if(_side==INDEPENDENT)then{_enemyFaction="GUER";_civZone=false;};
if(_side==CIVILIAN)then{_enemyFaction="civ";_civZone=true;};
if(_mA==0)then{_mAH=1;_mAN=0.5;};
if(_mA==1)then{_mAH=0;_mAN=0;};
if(_mA==2)then{_mAH=0.5;_mAN=0.5;};

//INITIATE ZONE
_trig=format["EOSTrigger%1",_mkr];
if(!_cache)then{
if isMultiplayer then{
	if(_heightLimit)then{
	_actCond="{vehicle _x in thisList && isPlayer _x &&((getPosATL _x)select 2)< 100}count playableUnits > 0";}else{
	_actCond="{vehicle _x in thisList && isPlayer _x}count playableUnits > 0";};}else{
	if(_heightLimit)then{
	_actCond="{vehicle _x in thisList && isPlayer _x &&((getPosATL _x)select 2)< 100}count allUnits > 0";}else{
	_actCond="{vehicle _x in thisList && isPlayer _x}count allUnits > 0";};};
_eosActivated=createTrigger["EmptyDetector",_mPos]; 
_eosActivated setTriggerArea[(_distance+_mkrX),(_distance+_mkrY),_mkrAgl,FALSE]; 
_eosActivated setTriggerActivation["ANY","PRESENT",true];
_eosActivated setTriggerTimeout[1,1,1,true];
_eosActivated setTriggerStatements[_actCond,"",""];
server setVariable[_trig,_eosActivated];}else{
_eosActivated=server getVariable _trig;};

_mkr setMarkerAlpha _mAN;
if(!(getMarkerColor _mkr==VictoryColor))then{
_mkr setMarkerColor hostileColor;};

waitUntil{triggerActivated _eosActivated};
if(!(getMarkerColor _mkr=="colorBlack"))then{
	if(!(getMarkerColor _mkr==VictoryColor))then{_mkr setMarkerAlpha _mAH;};

// SPAWN HOUSE PATROLS
for "_counter" from 1 to _aGrps do{
if(isNil "_aGrp")then{_aGrp=[];};
	if(_cache)then{
	_cacheGrp=format["HP%1",_counter];
	_units=_eosActivated getVariable _cacheGrp;	
	_aSize=[_units,_units];
	_aMin=_aSize select 0;
		if(_debug)then{player sideChat format["ID:%1,restore - %2",_cacheGrp,_units];};};
			if(_aMin > 0)then{
			_aGroup=[_mPos,_aSize,_faction,_side]call EOS_fn_spawnGroup;	
				if(!surfaceIsWater _mPos)then{
				0=[_mPos,units _aGroup,_mkrX,0,[0,20],true,true]call shk_fn_fillHouse;}else{
				0=[_aGroup,_mkr]call EOS_fn_taskPatrol;};
				_aGrp set[count _aGrp,_aGroup];
				0=[_aGroup,"INFskill"]call eos_fn_groupHandlers;
if(_debug)then{player sideChat(format["Spawned House Patrol: %1",_counter]);0=[_mkr,_counter,"House Patrol",getPos(leader _aGroup)]call EOS_debug};};};

// SPAWN PATROLS
for "_counter" from 1 to _bGrps do{
if(isNil "_bGrp")then{_bGrp=[];};
if(_cache)then{
_cacheGrp=format["PA%1",_counter];
_units=_eosActivated getVariable _cacheGrp;	
_bSize=[_units,_units];
_bMin=_bSize select 0;
	if(_debug)then{player sideChat format["ID:%1,restore - %2",_cacheGrp,_units];};};
		if(_bMin > 0)then{
		_pos=[_mkr,true]call SHK_pos;			
		_bGroup=[_pos,_bSize,_faction,_side]call EOS_fn_spawnGroup;
		0=[_bGroup,_mkr]call EOS_fn_taskPatrol;
		_bGrp set[count _bGrp,_bGroup];
		0=[_bGroup,"INFskill"]call eos_fn_groupHandlers;
if(_debug)then{player sideChat(format["Spawned Patrol: %1",_counter]);0=[_mkr,_counter,"patrol",getPos(leader _bGroup)]call EOS_debug};};};	

//SPAWN LIGHT VEHICLES
for "_counter" from 1 to _cGrps do{	
if(isNil "_cGrp")then{_cGrp=[];};	

_newpos=[_mkr,50]call EOS_fn_findSafePos;
if(surfaceIsWater _newpos)then{_vehType=8;_cargoType=10;}else{_vehType=7;_cargoType=9;};

_cGroup=[_newpos,_side,_faction,_vehType]call EOS_fn_spawnVehicle;
if((_cSize select 0) > 0)then{
0=[(_cGroup select 0),_cSize,(_cGroup select 2),_faction,_cargoType]call eos_fn_setCargo;};
0=[(_cGroup select 2),"LIGskill"]call eos_fn_grouphandlers;
0=[(_cGroup select 2),_mkr]call EOS_fn_taskpatrol;
_cGrp set[count _cGrp,_cGroup];			
if(_debug)then{player sideChat format["Light Vehicle:%1 - r%2",_counter,_cGrps];0=[_mkr,_counter,"Light Veh",(getPos leader(_cGroup select 2))]call EOS_debug};};	

//SPAWN ARMOURED VEHICLES
for "_counter" from 1 to _dGrps do{
if(isNil "_dGrp")then{_dGrp=[];};
_newpos=[_mkr,50]call EOS_fn_findSafePos;
if(surfaceIsWater _newpos)then{_vehType=8;}else{_vehType=2;};
_dGroup=[_newpos,_side,_faction,_vehType]call EOS_fn_spawnVehicle;
0=[(_dGroup select 2),"ARMskill"]call eos_fn_groupHandlers;
0=[(_dGroup select 2),_mkr]call EOS_fn_taskPatrol;
_dGrp set[count _dGrp,_dGroup];
if(_debug)then{player sideChat format["Armoured:%1 - r%2",_counter,_dGrps];0=[_mkr,_counter,"Armour",(getPos leader(_dGroup select 2))]call EOS_debug};};

//SPAWN STATIC PLACEMENTS
for "_counter" from 1 to _eGrps do{
if(surfaceIsWater _mPos)exitWith{};
	if(isNil "_eGrp")then{_eGrp=[];};

_newpos=[_mkr,50]call EOS_fn_findSafePos;
_eGroup=[_newpos,_side,_faction,5]call EOS_fn_spawnVehicle;
0=[(_eGroup select 2),"STAskill"]call EOS_fn_groupHandlers;
_eGrp set[count _eGrp,_eGroup];
if(_debug)then{player sideChat format["Static:%1",_counter];0=[_mkr,_counter,"Static",(getPos leader(_eGroup select 2))]call EOS_debug};};	

//SPAWN CHOPPER
for "_counter" from 1 to _fGrps do{
if(isNil "_fGrp")then{_fGrp=[];};	
	if((_fSize select 0) > 0)then{_vehType=4}else{_vehType=3};
	_newpos=[(markerPos _mkr),2000,random 360]call BIS_fnc_relPos;	
	_fGroup=[_newpos,_side,_faction,_vehType,"fly"]call EOS_fn_spawnVehicle;	
	_fGrp set[count _fGrp,_fGroup];

if((_fSize select 0) > 0)then{
_cargoGrp=createGroup _side;
0=[(_fGroup select 0),_fSize,_cargoGrp,_faction,9]call EOS_fn_setCargo;
0=[_cargoGrp,"INFskill"]call EOS_fn_groupHandlers;
_fGroup set[count _fGroup,_cargoGrp];
null=[_mkr,_fGroup,_counter]execVM "eos\fn\TransportUnload_fn.sqf";}else{
_wp1=(_fGroup select 2)addWaypoint[(markerPos _mkr),0];  
_wp1 setWaypointSpeed "FULL";  
_wp1 setWaypointType "SAD";};
0=[(_fGroup select 2),"AIRskill"]call EOS_fn_groupHandlers;
if(_debug)then{player sideChat format["Chopper:%1",_counter];0=[_mkr,_counter,"Chopper",(getPos leader(_fGroup select 2))]call EOS_debug};};

//SPAWN ALT TRIGGERS	
	_clear=createTrigger["EmptyDetector",_mPos]; 
	_clear setTriggerArea[_mkrX,_mkrY,_mkrAgl,FALSE]; 
	_clear setTriggerActivation[_enemyFaction,"NOT PRESENT",true]; 
	_clear setTriggerStatements["this","",""]; 
	_taken=createTrigger["EmptyDetector",_mPos]; 
	_taken setTriggerArea[_mkrX,_mkrY,_mkrAgl,FALSE];
	_taken setTriggerActivation["ANY","PRESENT",true];
	_taken setTriggerStatements["{vehicle _x in thisList && isPlayer _x && ((getPosATL _x)select 2) < 5}count allUnits > 0","",""]; 
_eosAct=true;	
while{_eosAct}do{// IF player LEAVES THE AREA OR ZONE DEACTIVATED
if(!triggerActivated _eosActivated || getMarkerColor _mkr=="colorBlack")exitWith{
	if(_debug)then{if(!(getMarkerColor _mkr=="colorBlack"))then{hint "Restarting Zone AND deleting units";}else{hint "EOS zone deactivated";};};		
//CACHE LIGHT VEHICLES
if(!isNil "_cGrp")then{
{_vehicle=_x select 0;_crew=_x select 1;_grp=_x select 2;
	if(!alive _vehicle || {!alive _x}forEach _crew)then{_cGrps=_cGrps - 1;};	
	{deleteVehicle _x}forEach(_crew);		
		if(!(vehicle player==_vehicle))then{{deleteVehicle _x}forEach[_vehicle];};												
		{deleteVehicle _x} forEach units _grp;deleteGroup _grp;}forEach _cGrp;
if(_debug)then{player sideChat format["ID:c%1",_cGrps];};};

// CACHE ARMOURED VEHICLES
if(!isNil "_dGrp")then{
{_vehicle=_x select 0;_crew=_x select 1;_grp=_x select 2;
	if(!alive _vehicle || {!alive _x}forEach _crew)then{_dGrps=_dGrps - 1;};
	{deleteVehicle _x}forEach(_crew);
		if(!(vehicle player==_vehicle))then{{deleteVehicle _x}forEach[_vehicle];};
		{deleteVehicle _x}forEach units _grp;deleteGroup _grp;}forEach _dGrp;
if(_debug)then{player sideChat format["ID:c%1",_dGrps];};};

// CACHE PATROL INFANTRY					
if(!isNil "_bGrp")then{
_n=0;					
{_n=_n+1;_units={alive _x}count units _x;_cacheGrp=format["PA%1",_n];
if(_debug) then{player sideChat format["ID:%1,cache - %2",_cacheGrp,_units];};
	_eosActivated setVariable[_cacheGrp,_units];
	{deleteVehicle _x}forEach units _x;deleteGroup _x;}forEach _bGrp;};

// CACHE HOUSE INFANTRY
if(!isNil "_aGrp")then{
	_n=0;
	{_n=_n+1;_units={alive _x}count units _x;_cacheGrp=format["HP%1",_n];
if(_debug) then{player sideChat format["ID:%1,cache - %2",_cacheGrp,_units];};
	_eosActivated setVariable[_cacheGrp,_units];
	{deleteVehicle _x}forEach units _x;deleteGroup _x;}forEach _aGrp;};

// CACHE MORTARS			
if(!isNil "_eGrp")then{
{_vehicle=_x select 0;_crew=_x select 1;_grp=_x select 2;
	if(!alive _vehicle || {!alive _x}forEach _crew)then{_eGrps=_eGrps - 1;};			
	{deleteVehicle _x}forEach(_crew);
		if(!(vehicle player==_vehicle))then{{deleteVehicle _x}forEach[_vehicle];};													
		{deleteVehicle _x}forEach units _grp;deleteGroup _grp;}forEach _eGrp;};	

// CACHE HELICOPTER TRANSPORT
if(!isNil "_fGrp")then{
{_vehicle=_x select 0;_crew=_x select 1;_grp=_x select 2;_cargoGrp=_x select 3;
	if(!alive _vehicle || {!alive _x}forEach _crew)then{_fGrps= _fGrps - 1;};			
	{deleteVehicle _x}forEach(_crew);
		if(!(vehicle player==_vehicle))then{{deleteVehicle _x}forEach[_vehicle];};													
		{deleteVehicle _x}forEach units _grp;deleteGroup _grp;
			if(!isNil "_cargoGrp")then{
			{deleteVehicle _x}forEach units _cargoGrp;deleteGroup _cargoGrp;};}forEach _fGrp;};	
_eosAct=false;
if(_debug)then{hint "Zone Cached";};};
	if(triggerActivated _clear and triggerActivated _taken and !_civZone)exitWith{//IF ZONE CAPTURED BEGIN CHECKING FOR ENEMIES
	_cGrps=0;_aGrps=0;_bGrps=0;_dGrps=0;_eGrps=0;_fGrps=0;		
	while{triggerActivated _eosActivated && !(getMarkerColor _mkr=="colorBlack")}do{
		if(!triggerActivated _clear)then{
		_mkr setMarkerColor hostileColor;_mkr setMarkerAlpha _mAH;
			if(_debug)then{hint "Zone Lost";};
			}else{
			_mkr setMarkerColor VictoryColor;_mkr setMarkerAlpha _mAN;
				if(_debug)then{hint "Zone Captured";};};
sleep 1;};
//player LEFT ZONE				
_eosAct=false;		
};sleep 0.5;};

deleteVehicle _clear;deleteVehicle _taken;	

if(!(getMarkerColor _mkr=="colorBlack"))then{	
null=[_mkr,[_aGrps,_aSize],[_bGrps,_bSize],[_cGrps,_cSize],[_dGrps,_eGrps,_fGrps,_fSize],_settings,true]execVM "eos\core\eos_core.sqf";
}else{_Mkr setMarkerAlpha 0;};};