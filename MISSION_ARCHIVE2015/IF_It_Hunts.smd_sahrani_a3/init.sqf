/*
COBRA


*/


diag_log text "";
diag_log text format["|====================== %1 ======================|", missionName]; // stamp mission n
diag_log text "";
//diag_log text "JIP+++++++1";

execVM "briefing.sqf";

/*
swampmonster addEventHandler ["HandleDamage", {
    private ["_unit", _damage", "_source"];
    _unit = _this select 0;
    _damage = _this select 2;
    _source = _this select 4;
 
    if ( (_source == "") && !(isTouchingGround _unit) ) then {0} else {_damage};
}];
*/


//This should only appear in editor
//Warning, update this block for the mp version too
/*
if (!isMultiplayer) then
{






	[player] execVM "client\player\nametag.sqf";	//Add this to mp too
	player addAction ["<t color='#795c45'>Melee</t>", "client\player\beast_melee.sqf"];
	[swampmonster] execVM "client\player\removeweapons.sqf";

	
	
	
	
	

};	
	*/
	
	//[player] execVM "client\player\nametag.sqf";	//only the swampmonster gets this
	swampmonster addAction ["<t color='#795c45'>Attack</t>", "client\player\beast_melee.sqf","",10];	//and this
	[swampmonster] execVM "client\player\removeweapons.sqf";

if (isServer) then
{

	ammocar addItemCargoGlobal ["acc_flashlight", 10];
	ammocar addItemCargoGlobal ["optic_Holosight_smg", 1];
	ammocar addWeaponCargoGlobal ["SMG_02_F", 10];
	ammocar addMagazineCargoGlobal ["30Rnd_9x21_Mag", 20];
	ammocar addWeaponCargoGlobal ["srifle_EBR_F", 1];	 
	ammocar addWeaponCargoGlobal ["arifle_Mk20C_plain_F", 1];
		
	ammocar addItemCargoGlobal ["optic_Arco", 1];
	ammocar addItemCargoGlobal ["optic_SOS", 1];
	ammocar addItemCargoGlobal ["optic_Hamr", 1];
	ammocar addItemCargoGlobal ["optic_MRCO", 1];
	
	ammocar addWeaponCargoGlobal ["arifle_MXC_ACO_F", 1];
	
	ammocar addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag", 2];	
	ammocar addItemCargoGlobal ["V_TacVest_oli", 2];
	
	ammocar addMagazineCargoGlobal ["20Rnd_762x51_Mag", 2];	
	ammocar addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 2];	

	
};

			









