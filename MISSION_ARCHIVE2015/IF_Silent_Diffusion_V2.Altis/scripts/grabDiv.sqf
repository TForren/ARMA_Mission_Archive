// Pickupscript
_clacker = _this select 0; 
_hero = _this select 1;
_id = _this select 2;  

	_hero playMove "AinvPknlMstpSlayWrflDnon_medic";
	_clacker removeAction _id;
	_hero sidechat "Equiping Diver Gear..."; 
	sleep 3;
	[_hero,"B_DIV","DIVERS"] call FNC_GearScript; 
