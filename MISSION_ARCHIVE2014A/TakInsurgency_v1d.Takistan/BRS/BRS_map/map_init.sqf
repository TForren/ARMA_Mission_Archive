private ["_currentName","_marker"];
disableSerialization;

	_display = uiNamespace getVariable "BRS_RespawnDialog";
	
	if (!isnil ("_display")) then {
			(_display displayCtrl 42500) ctrlShow true;	
			(_display displayCtrl 41000) ctrlShow true;	
			(_display displayCtrl 41100) ctrlShow true;
			(_display displayCtrl 41200) ctrlShow true;
			(_display displayCtrl 39650) ctrlShow true;
			(_display displayCtrl 42500) ctrlMapAnimAdd [0, 0.16, getpos BRS_currentSpawn];
			ctrlMapAnimCommit (_display displayCtrl 42500);
				};
BRS_mkr_array=[];
BRS_cam_offset=2.4;
BRS_cam attachto [(vehicle BRS_currentSpawn),[BRS_cam_offset,-5.5,-0], "neck"];

while {!BRS_mapClose} 
			do {
sleep 0.1;	
			{

		if (!(format ["%1",_x] in BRS_mkr_array)) 
				then {
				if (!(_x iskindof "man")) 
					then {
					_currentName=format ["%1",_x];
							}else{
							_currentName=format ["%1",name _x];
								};
		_marker= createMarkerLocal [format ["%1",_X], position _x];
		_marker setMarkerTextLocal _currentName;
		_marker setMarkerTypelocal "mil_triangle_noShadow";
		_marker setMarkerAlphaLocal 0.8; 
		_marker setMarkerColorLocal "ColorRed";
				BRS_mkr_array set [count BRS_mkr_array,_marker];
				
										}else{
									_marker=(format ["%1",_x]);
									_marker setmarkerposlocal (getpos _x);
									_marker setMarkerDirLOCAL getDir _x;
										if (!alive _X or (_x distance hideplayer < BRS_hideRadius))
											then {
											deletemarkerlocal _marker;
											BRS_mkr_array = BRS_mkr_array - [_marker];};
									};									
			}FOREACH BRS_spawnPoints;
};
{deletemarkerlocal format ["%1",_x];}foreach BRS_mkr_array;
