disableSerialization;
_next=(_this select 0);

// NEXT SPAWN
	if (_next) then {
		BRS_selectSpawn = BRS_selectSpawn + 1; 
		
			if (BRS_selectSpawn >= count BRS_spawnPoints) 
										then{
										BRS_selectSpawn = 0;
											};
// PREVIOUS SPAWN											
						}else{  
					BRS_selectSpawn = BRS_selectSpawn - 1; 
					
						if (BRS_selectSpawn < 0) 
								then {
								BRS_selectSpawn = (count BRS_spawnPoints)-1;
									};
				};	
				
// DETACH BRS_cam AND APPLY TO NEXT SPAWN				
BRS_currentSpawn=(BRS_spawnPoints select BRS_selectSpawn);
			detach BRS_cam;
			BRS_cam_offset;
			BRS_cam attachto [(vehicle BRS_currentSpawn),[BRS_cam_offset,-5.5,0], "neck"];
			
		_display = uiNamespace getVariable "BRS_RespawnDialog";			
			(_display displayCtrl 42500) ctrlMapAnimAdd [0, 0.16, getpos BRS_currentSpawn];
			ctrlMapAnimCommit (_display displayCtrl 42500);
// SET CURRENT SPAWN POINT				

		
		_currentPoint = [0] call getSpawnText_fnc;		
		(_display displayCtrl 51500) ctrlSetText _currentPoint;


// SET NEXT SPAWN POINT		
		_currentPoint = [1] call getSpawnText_fnc;								
		(_display displayCtrl 71500)  ctrlSetStructuredText  _currentPoint;

		
// SET PREVIOUS SPAWN POINT
		_currentPoint = [2] call getSpawnText_fnc;
		(_display displayCtrl 61500)  ctrlSetStructuredText  _currentPoint;
