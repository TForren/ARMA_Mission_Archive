private ["_spawnSide","_limitEnemy"];
_addaction=player getvariable "BRSAddAction";
if (!ISNIL ("BRS_currentSpawn")) then {

if (_addaction)
			then{
			_spawnSide=player GetVARIABLE "AASpawnSide";
			_limitEnemy=player getVARIABLE "AAlimitEnemy";
					}else{
					_spawnSide=player GetVARIABLE "EVSpawnSide";
					_limitEnemy=player getVARIABLE "EVlimitEnemy";
					};
 if ({(_x distance BRS_currentSpawn < _limitEnemy) and 
 
			(
			IF (side _x != CIVILIAN) 
				THEN {
					
				side _x != _spawnSide;
					}
					)
 
					} count allunits  > 0) 
 
				then {
  
 					_display = uiNamespace getVariable "BRS_RespawnDialog";
					(_display displayCtrl 51500) ctrlSetText "  ENEMIES NEARBY!";
							}else{
// IF SPAWN IS NOT IN VEHICLE	
	IF (vehicle BRS_currentSpawn == BRS_currentSpawn) 
			THEN {
		exitBRS=TRUE;
		player cameraEffect ["terminate","back"];
		closeDialog 0;
			
		_display = uiNamespace getVariable "BRS_RespawnDialog";
		(_display) displayRemoveAllEventHandlers "KeyDown";
			BRS_selectSpawn=nil;
			BRS_mapClose=TRUE;				
			player setcaptive false;
			player allowdamage true;
			//camdestroy BRS_cam;

					cutText ["","BLACK IN",3];
					//_spawnPos = (BRS_currentSpawn modelToWorld [0,-5,0]);
					player setPosATL [getpos BRS_cam select 0,getpos BRS_cam select 1, 0];
					player setdir (((getpos BRS_currentSpawn select 0) - (getpos player select 0)) atan2 ((getpos BRS_currentSpawn select 1) - (getpos player select 1)));
					
// GET STANCE OF SPAWN				
				if (stance BRS_currentSpawn == "stand") then {player switchMove "amovpknlmstpsraswrfldnon";};
				if (stance BRS_currentSpawn == "crouch") then {player switchMove "amovpknlmstpsraswrfldnon";};
				if (stance BRS_currentSpawn == "prone") then {player switchMove "amovpknlmstpsraswrfldnon";};
		
					}else{
				
// IF SPAWN IS IN VEHICLE			
	if ((vehicle BRS_currentSpawn) emptyPositions "cargo" > 0) 
			THEN {
		exitBRS=TRUE;
		player cameraEffect ["terminate","back"];		
		closeDialog 0;
			
		_display = uiNamespace getVariable "BRS_RespawnDialog";
		(_display) displayRemoveAllEventHandlers "KeyDown";
			BRS_selectSpawn=nil;
			BRS_mapClose=TRUE;				
			player setcaptive false;
			player allowdamage true;
			//camdestroy BRS_cam;

					cutText ["","BLACK IN",3];
		player moveincargo vehicle BRS_currentSpawn;
							}else{			
					_display = uiNamespace getVariable "BRS_RespawnDialog";
					(_display displayCtrl 51500) ctrlSetText "  VEHICLE FULL";
					
								};
};};};