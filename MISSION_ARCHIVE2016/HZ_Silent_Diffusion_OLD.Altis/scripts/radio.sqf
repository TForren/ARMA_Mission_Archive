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
		_hero sidechat "Turning Radio Off..."; 
		task5 setdamage 1;
		deletevehicle radio;
		hint "Radio Turned Off!";
	}
	else{
		_hero sidechat "I need to get closer...";
	};
} else 
{
[_hero, "Cheeki1",60] call CBA_fnc_globalSay3d;

 }; 