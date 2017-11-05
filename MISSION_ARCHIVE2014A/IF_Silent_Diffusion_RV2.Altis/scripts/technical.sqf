// Pickupscript
_clacker = _this select 0; 
_hero = _this select 1;
_id = _this select 2;  


//Check if its opfor that picks up the clacker.
if (side _hero == west) then
{
	if ((_hero distance _clacker) < 3) then {
		_hero playMove "AinvPknlMstpSlayWrflDnon_medic";
		_clacker removeAction _id;
		_hero sidechat "Sabotaging the M2..."; 
		task2 setdamage 1;
	}
	else{
		_hero sidechat "I need to get closer...";
	};
} else
{
_hero sidechat "The Technician would be pissed if I messed with his latest work..."; 
 }; 