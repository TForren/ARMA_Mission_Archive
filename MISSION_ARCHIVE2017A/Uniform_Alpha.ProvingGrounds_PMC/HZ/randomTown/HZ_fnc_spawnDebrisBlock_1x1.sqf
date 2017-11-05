//[position,density,_dir] call HZ_fnc_spawnDebrisBlock_1x1
//[[0,0,0],0.8,70]

_spawnPos = _this select 0;
_blockSize = _this select 1;
_density = _this select 2;
_dir = _this select 3;

_debris = ["Land_smd_dumpster_trash","Land_smd_trashcan","Land_GarbageContainer_closed_F","Land_GarbageContainer_open_F","Land_BarrelTrash_grey_F","Land_GarbageBags_F","Land_GarbageBarrel_01_F","Land_GarbagePallet_F","Land_GarbageWashingMachine_F","Land_JunkPile_F","Land_Tyres_F","Land_Kontejner_plasty","Land_WheelieBin_01_F","Land_Kontejner_papir","Land_Misc_Garb_3_EP1","Land_Misc_Garb_4_EP1","Land_tires_EP1","Land_Wreck_Skodovka_F","Land_Wreck_UAZ_F","LADAWreck","hiluxWreck","datsun01Wreck","datsun02Wreck","SKODAWreck","Land_CanisterFuel_F","Land_Pallets_stack_F","Land_CratesShabby_F","Land_WaterBarrel_F","Land_Bucket_painted_F","Land_Campfire","Misc_concrete_High","Barrels","Fort_Crate_wood","Land_Ind_TankSmall2_ruins"];

_dirKeeper = "Sign_Arrow_Direction_F" createvehicle _spawnPos;
_dirKeepers = _dirKeepers + [_dirKeeper];
_dirKeeper setDir _dir;
_dirKeeper setpos _spawnPos;

_attempts = 0;
while {_attempts < _density} do {
	_obj = _debris call BIS_fnc_selectRandom;
	_obj = _obj createVehicle [0,0,0];
	_bbr = boundingBoxReal _obj;
	_p1 = _bbr select 0;
	_p2 = _bbr select 1;
	_maxW = abs ((_p2 select 0) - (_p1 select 0)) / 2;
	_maxL = abs ((_p2 select 1) - (_p1 select 1)) / 2;
	
	_spawnPos = ([_spawnPos, 1, _blockSize, _maxW max _maxL, 0, 5, 0,[],[[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos);
	_obj setpos _spawnPos;
	_obj setDir (random 360);
	if (_obj distance [0,0,0] < 10) then {
		deletevehicle _obj;
	};
	_attempts = _attempts + 1;
};


_dirKeeper;