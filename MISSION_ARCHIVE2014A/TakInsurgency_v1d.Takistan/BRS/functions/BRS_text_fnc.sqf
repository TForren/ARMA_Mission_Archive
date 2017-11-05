private ["_currentPoint","_tempPoint"];
_type=(_this select 0);
				
if (_type==0) then {						
			_currentPoint=(BRS_spawnPoints select BRS_selectSpawn);
			
				if (!(_currentPoint iskindof "man")) 
								then {
							_currentPoint=format["%1",_currentPoint];
									}else{
									_currentPoint=format["%1",name _currentPoint];
										};
				};
if (_type==1) then {
	_tempPoint = BRS_selectSpawn + 1; 
	
		if (_tempPoint >= count BRS_spawnPoints) 
						then {
						_tempPoint = 0;
								};	
								
			_currentPoint=(BRS_spawnPoints select _tempPoint);

				if (!(_currentPoint iskindof "man")) 
								then {
							
							_currentPoint=parseText format["<t align='left'>NEXT<br />-<br /><t size='2.5'>%1</t></t>", _currentPoint];	
									}else{
									_currentPoint=parseText format["<t align='left'>NEXT<br />-<br /><t size='2.5'>%1</t></t>",name _currentPoint];
										};

};

if (_type==2) then {
_tempPoint = BRS_selectSpawn - 1; 
	
		if (_tempPoint < 0) 
					then {
					_tempPoint = (count BRS_spawnPoints)-1;
						};		
								_currentPoint=(BRS_spawnPoints select _tempPoint);

				if (!(_currentPoint iskindof "man")) 
								then {
							_currentPoint=parseText format["PREVIOUS<br />-<br /><t size='2.5'>%1</t>", _currentPoint];	
									}else{
									_currentPoint=parseText format["PREVIOUS<br />-<br /><t size='2.5'>%1</t>",name _currentPoint];		
										};
};
_currentPoint