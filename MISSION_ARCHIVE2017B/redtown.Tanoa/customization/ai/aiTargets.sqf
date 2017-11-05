//Written by beta
//sorting by WaterIsPoison
//AI strategic support, targets array loop


private ["_detected", "_resultArray"];

//infinite loop
while {true} do
{
	private ["_tempArray", "_unit", "_xPos", "_yPos", "_nextUnit", "_xPosNext", "_yPosNext", "_xResult", "_yResult"];
	
	_detected = [];  //BLUFOR detected list
	_resultArray = [];  //sorting result array
	{
		_tUnit = _x;
		_tempArray = _x nearTargets 500;
		{
			if ((_x select 4) isKindOf "Man") then
			{
				if ((side (_x select 4) getFriend side _tUnit) < 0.6) then
				{
					_detected = _detected + [_x select 4];
				};
			};
		} forEach _tempArray;
	} forEach [(leader p1cb), (leader p2cb), (leader p3cb)];
	
	markedGroups = [];
	_tempArray = _detected;
	while {count _tempArray > 0} do
	{
		_resultArray = [];
		_unit = _tempArray select 0;
		_resultArray = _resultArray + [_unit];
		
		for [{_i=1}, {_i < count _tempArray}, {_i=_i+1}] do
		{
			_nextUnit = _tempArray select _i;
			
			if (_unit distance _nextUnit < 100) then
			{
				_resultArray = _resultArray + [_nextUnit];
			};
			
			sleep 0.001;
		};
		
		private ["_size", "_type", "_num", "_targetPos"];
		
		_size = "";
		_type = "";
		_num = 0;
		_targetPos = [0,0,0];
		
		if (count _resultArray > 0 && count _resultArray < 5) then
		{
			_size = "FT";
			_type = "inf";
			_num = count _resultArray;
			_targetPos = getPosASL (_resultArray select 0);
		};
		
		if (count _resultArray > 4 && count _resultArray < 13) then
		{
			_size = "SECT";
			_type = "inf";
			_num = count _resultArray;
			_targetPos = getPosASL (_resultArray select 0);
		};
		
		if (count _resultArray > 12 && count _resultArray < 50) then
		{
			_size = "PLT";
			_type = "inf";
			_num = count _resultArray;
			_targetPos = getPosASL (_resultArray select 0);
		};
		
		markedGroups = markedGroups + [[_targetPos, _num, _type, _size]];
		_tempArray = _tempArray - _resultArray;
	};
	
	//sorting by WaterIsPoison
	for [{_i=0}, {_i < count markedGroups}, {_i=_i+1}] do
	{
		private ["_firstAR", "_secondAR", "_firstNum", "_secondNum", "_temp"];
		
		for [{_k=1}, {_k < count markedGroups}, {_k=_k+1}] do
		{
			_firstAR = markedGroups select _k-1;
			_secondAR = markedGroups select _k;
			_firstNum = _firstAR select 1;
			_secondNum = _secondAR select 1;
			if (_secondNum > _firstNum) then
			{
				_temp = _firstAR;
				markedGroups set [_k-1, _secondAR];
				markedGroups set [_k, _temp];
			};
			sleep 0.01;
		};
		sleep 0.01;
	};
	
	sleep 10;
};
