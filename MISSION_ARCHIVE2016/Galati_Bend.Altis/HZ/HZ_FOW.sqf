ZeusCommander = _this select 0;
enemyFaction = _this select 1;
emptyVics = [bv1,bv2,bv6,bv3,bv4,bv5,bv7,bv8,bv9,bv10,bv11,bv12,bv13,bv14,bv15,bv16,bv17];
publicVariable "emptyVics";
ZCommFaction = side ZeusCommander;
hiddenStuff = False;

while {alive ZeusCommander} do {
	
	if ((animationState ZeusCommander == "ainvpercmstpsraswrfldnon") ||
		(animationState ZeusCommander == "ainvpknlmstpsraswrfldnon") ||
		(animationState ZeusCommander == "ainvppnemstpsraswrfldnon")) 
		then {
	{
		hiddenStuff = True;
		if !(side _x == ZCommFaction) then { //not friendly
			_target = _x;
			_bestKnowledge = 0;
			{
				if (side _x == ZCommFaction) then { //iterate over all friendlies for given target
					_curknowledge = _x knowsAbout _target;
					//_los = [_x, "VIEW", _target] checkVisibility [getposASL (vehicle _x),getposASL blu1];
					//if ((_curknowledge >= _bestKnowledge) && (_los > 0)) then {
					if ((_curknowledge >= _bestKnowledge) && (_x distance _target < 2000)) then {
						_bestKnowledge = _curknowledge;
					};
					
					if (side _target == civilian) then {
						if (_x distance _target < 200) then {
							_curknowledge = 3;
						};
						if ((getpos _x select 2 > 50) && (_x distance _target < 700)) then {
							_curknowledge = 3;
						};
						if (_curknowledge >= _bestKnowledge) then {
							_bestKnowledge = _curknowledge;
						};
					}; 
				};

			} foreach AllUnits;
			
			if ((_bestKnowledge > 2) || (_target in forcedReveal)) then {
				_x hideObject false; 
			} else {
				_x hideObject true;
			};
		};
	} foreach AllUnits + emptyVics; 
	sleep 4;
	} else {
		if (hiddenStuff) then {
			{
				_x hideObject false;
			} foreach AllUnits + emptyVics; 
			hiddenStuff = False;
		};
	}; //end animation check
	sleep 1;
};