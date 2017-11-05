// Scripts by Luiz Silveira
// Syntax: this addeventhandler ["killed", {poop = [_this select 1] execvm "civkilled.sqf"}]; 

_killer = _this select 0;

if (side _killer == independent) then {
				
	GUE_CivKilled = GUE_CivKilled + 1; publicVariable "GUE_CivKilled";
				
};
			

_killmsg = format ["%1 KILLED A CIVILIAN! One more and mission will fail.", name _killer];

[-1, {
	
	_killermsgg = _this select 0;
	_killerg = _this select 1;
	
	if (side player == side _killerg) then {
			
		hint format [_killermsgg]
		
	};
					
}, [_killmsg, _killer]] call CBA_fnc_globalExecute;
	
lastkiller = name (_this select 0); 

publicVariable "lastkiller";