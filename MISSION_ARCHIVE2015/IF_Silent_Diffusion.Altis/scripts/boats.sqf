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
		_hero sidechat "Sabotaging boats..."; 
		task4 setdamage 1;
		hint "Boats have been Sabatoged!";
	}
	else{
		_hero sidechat "I need to get closer...";
	};
} else

{
_hero sidechat "Without these boats, our operations wouldn't work too well.. being pirates and all..."; 
 }; 