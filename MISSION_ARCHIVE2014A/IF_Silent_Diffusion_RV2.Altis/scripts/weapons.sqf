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
		_hero sidechat "Planting tracker..."; 
		task3 setdamage 1;
	}
	else{
		_hero sidechat "I need to get closer...";
	};
} else 
{
_hero sidechat "This is a crate filled with AB-10s shipping to NJ. We can't let the blufor know where these are going..."; 
 }; 