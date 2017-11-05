// Pickupscript
_clacker = _this select 0; 
_hero = _this select 1;
_id = _this select 2;  

_text = "default";

//Check if its opfor that picks up the clacker.
if (side _hero == east) then
{
/*	if ((_hero distance _clacker) < 3) then {
		_hero playMove "AinvPknlMstpSlayWrflDnon_medic";
		_clacker removeAction _id;
		_hero sidechat "Sabotaging boats..."; 
		task4 setdamage 1;
		hint "Boats have been Sabatoged!";
	}
	else{
		_hero sidechat "I need to get closer...";
	}; */
	
	if (mayor distance (getmarkerpos "Homestead") < 45) then { //mayor is home
		_text = "Fresh information.. He hasn't left his homestead yet."
	}
	
	informant customChat [1, _text];
} else

{
_hero sidechat "Just some locals here."; 
 }; 