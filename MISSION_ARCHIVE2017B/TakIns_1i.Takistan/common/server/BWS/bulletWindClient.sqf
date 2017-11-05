BWS="
_info=_this;
_bullet=(_info select 0)select 6;
_filter=getText(configFile>>'CfgMagazines'>>(((_info select 0)select 5))>>'nameSound');
if(_filter=='handgrenade')exitWith{};
sleep 0.05;
while{alive _bullet}do{
	_windX=wind select 0;
	_windY=wind select 1;
	_windZ=(wind select 2) + random (0.2) - random (0.8);
	_velX=velocity _bullet select 0;
	_velY=velocity _bullet select 1;
	_velZ=velocity _bullet select 2;
	_coriolisX= -0.02;
	if(_filter=='magazine' || _filter=='mgun')then{_bullet setVelocity[(_velX+((random _windX)/30))+_coriolisX, _velY + (random _windY)/30, _velZ + (random _windZ)/30];};
	if(_filter=='grenadelauncher')then{_bullet setVelocity[(_velX+((random _windX)/80))+_coriolisX, _velY + ((random _windY)/80), _velZ + (random _windZ)/10];};
	sleep 0.01 + random 1;};";
bulletWindSimulation=compile BWS;
player addEventHandler["Fired","[_this]spawn bulletWindSimulation;"];