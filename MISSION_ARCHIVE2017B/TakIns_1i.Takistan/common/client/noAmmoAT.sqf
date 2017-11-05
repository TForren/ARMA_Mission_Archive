wak_equipment_dependency=true;//true=on, false=off. Enables or disables the requirement of having a backpack or a vest. Used to stop civilians or other unequipped from firing rockets.
wak_spawn_props=true;//true=on, false=off.
wak_props_despawnTime=120;//Time of props despawning. 0 = no despawn, and ignore if wak_spawn_props is false.

wak_true=true;
publicVariable "wak_true";
publicVariable "wak_equipment_dependency";
publicVariable "wak_spawn_props";
publicVariable "wak_props_despawnTime";
//v1.1
[]spawn{
while{wak_true}do{
	while{currentWeapon player != "launch_NLAW_F";}do{sleep 0.5;};
	player removeWeapon "launch_NLAW_F";
	if(wak_equipment_dependency)then{
		if(isNull unitBackpack player)then{
		player addWeapon "launch_NLAW_F";
		(vestContainer player)addMagazineCargoGlobal["NLAW_F",1];}else{
		(backpackContainer player)addMagazineCargoGlobal["NLAW_F",1];};}else{
		player addWeapon "launch_NLAW_F";
		player addMagazine "NLAW_F";};
		player selectWeapon(secondaryWeapon player);
	_ehId=player addEventHandler["Fired",{[_this select 0,_this select 1]spawn{player removeMagazines "NLAW_F";while{currentWeapon player=="launch_NLAW_F" && isNull(findDisplay 106)}do{sleep 0.5;};(_this select 0)removeWeapon(_this select 1);};}];
	while{currentWeapon player=="launch_NLAW_F"}do{sleep 0.5;};
	player removeEventHandler["Fired",_ehId];
	if("NLAW_F" in magazines player)then{player removeMagazines "NLAW_F";};
	if(currentWeapon player != "launch_NLAW_F")then{
		if(wak_spawn_props)then{
		_prop=1;
		_prop=createVehicle["groundweaponHolder",position player,[],0,"can_collide"];_prop addWeaponCargoGlobal["launch_NLAW_F",1];
		_prop attachTo[player,[0,0,-25]];
		_dir=getDir player;
		_prop setDir _dir;
		_prop attachTo[player,[0.2,0.1,2.1]];
		sleep 0.3;
		detach _prop;
		_prop setPosATL[getPosATL _prop select 0,getPosATL _prop select 1,0];
		_prop enableSimulationGlobal false;
			if(wak_props_despawnTime != 0)then{
			sleep wak_props_despawnTime;
			deleteVehicle _prop;};};};};};