_keys=(_this select 1);

	if (_keys == 203) then {_nil=[false]call findSpawn_fnc;};	
	if (_keys == 30) then {_nil=[false]call findSpawn_fnc;};
	if (_keys == 205) then {_nil=[true]call findSpawn_fnc;};
	if (_keys == 32) then {_nil=[true]call findSpawn_fnc;};
	if (_keys == 28) then {_nil=[]call squadRespawn_fnc;};
	if (_keys == 156) then {_nil=[]call squadRespawn_fnc;};
	if (_keys == 49) then {
	if (BRS_nvgON) then {
		_display = uiNamespace getVariable "BRS_RespawnDialog";
			camUseNVG false;BRS_nvgON=false;
			(_display displayCtrl 30052) ctrlShow false;
			(_display displayCtrl 30051) ctrlShow true;
					}else{
			_display = uiNamespace getVariable "BRS_RespawnDialog";
				camUseNVG true;BRS_nvgON=true; 
			(_display displayCtrl 30052) ctrlShow true;
			(_display displayCtrl 30051) ctrlShow false;
						};
						};
	if (_keys == 1) then {
				_display = uiNamespace getVariable "BRS_RespawnDialog";
				(_display) displayRemoveAllEventHandlers "KeyDown";
				_var=player getvariable "BRSAddAction";
				null=[true,_var] execVM "BRS\BRS_init.sqf";
						};
	if (_keys == 50) then {
	if (BRS_mapClose) then {
	
	null = [false] execVM "BRS\BRS_map\map_close.sqf";
	}else{
	null = [true] execVM "BRS\BRS_map\map_close.sqf";};
						};



