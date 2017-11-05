private ["_display"];
disableSerialization;
_close=(_this select 0);

_display = uiNamespace getVariable "BRS_RespawnDialog";
if (_close) then {
	BRS_mapClose=TRUE;
		if (!isnil ("_display")) then {
			(_display displayCtrl 42500) ctrlShow FALSE;	
			(_display displayCtrl 41000) ctrlShow FALSE;	
			(_display displayCtrl 41100) ctrlShow FALSE;
			(_display displayCtrl 41200) ctrlShow FALSE;
			(_display displayCtrl 39650) ctrlShow FALSE;
			
			// MAP BUTTONS
			(_display displayCtrl 31052) ctrlShow false;
			(_display displayCtrl 31051) ctrlShow true;
			BRS_cam_offset=0;
			BRS_cam attachto [(vehicle BRS_currentSpawn),[BRS_cam_offset,-5.5,-0], "neck"];
									};
			}else{
			(_display displayCtrl 39650) ctrlShow true;
			
			// MAP BUTTONS
			(_display displayCtrl 31052) ctrlShow True;
			(_display displayCtrl 31051) ctrlShow false;
				BRS_mapClose=FALSE;
				null = [] execVM "BRS\BRS_map\map_init.sqf";
			};