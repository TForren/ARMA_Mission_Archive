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
		_hero sidechat "Hacking the Gibson..."; 
		task1 setdamage 1;
		[] spawn {
			sleep 5;
			hint "Laptop Hacked!";
		};
	}
	else{
		_hero sidechat "I need to get closer...";
	};
} else

{
_hero sidechat "The torrent is still running...I better leave it alone."; 
 }; 