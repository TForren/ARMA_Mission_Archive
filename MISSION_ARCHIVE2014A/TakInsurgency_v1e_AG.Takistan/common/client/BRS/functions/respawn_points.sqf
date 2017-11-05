		
			{

	// IF SPAWN POINT IS ALIVE AND IS NOT CURRENTLY IN SPAWN POINTS
	if (alive _x and !(_x in BRS_spawnPoints) and (_x != player) and (_x distance hideplayer > BRS_hideRadius)) 
												then {
												BRS_spawnPoints set [count BRS_spawnPoints,_x];
													};
			}foreach BRS_backUp;
		
		
		
			{
		// IF SPAWN POINT IS IN BRS THEN REMOVE
		if (_x distance hideplayer < BRS_hideRadius) 
		
							then {
							BRS_spawnPoints=BRS_spawnPoints - [_x];
							
								if (_x == BRS_currentSpawn) 
									then {
								_nil=[true]call findSpawn_fnc;
											};
								};
								
			// IF SPAWN POINTS ARE DEAD REMOVE FROM ARRAY
			if (!alive _x) 
					then {
						BRS_spawnPoints=BRS_spawnPoints - [_x];
						
						// IF CURRENT SPAWN IS KILLED THEN FIND NEXT SPAWN
						if (_x == BRS_currentSpawn) 
							then {
							_nil=[true]call findSpawn_fnc;
								};
							};
			}FOREACH BRS_spawnPoints;
				
				
