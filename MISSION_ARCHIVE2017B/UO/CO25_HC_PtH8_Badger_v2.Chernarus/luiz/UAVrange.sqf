// Script by Luiz Silveira

if (!local UAV) exitwith {};

_pos = getPos UAV;

while {true} do {

	if ((UAV distance Merlin) > 300 ) then {
	
		UAV setpos _pos;
		
	} else {
	
	_pos = getPos UAV;

	sleep 1;
	
	};
	
};