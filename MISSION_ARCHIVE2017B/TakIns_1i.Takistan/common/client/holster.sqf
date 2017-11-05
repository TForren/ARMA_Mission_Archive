HolsterEH=(findDisplay 46)displayAddEventHandler["KeyDown","if(_this select 1==35)then{[player]call Holster}"];
Holster={if(!alive player)exitWith{};
if((primaryWeapon player!="")||{(handgunWeapon player!="")})then{player action["SWITCHWEAPON",player,player,-1];};
};