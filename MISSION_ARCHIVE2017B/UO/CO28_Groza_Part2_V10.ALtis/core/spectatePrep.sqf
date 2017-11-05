#define MESSAGE "You are dead.\nEntering spectator mode..."

titleText [MESSAGE, "BLACK", 0.2];
sleep 1;
titleText [MESSAGE, "BLACK FADED", 10];

waitUntil {sleep 0.2; alive player};

player setVariable ["frameworkDead", true, true]; //Tells the framework the player is dead

player setPos [0,0,0];
[player] join grpNull;

player setCaptive true;
player addEventHandler ["HandleDamage", {false}];
removeAllWeapons player;
removeAllItems player;
removebackpack player;
removeAllAssignedItems player;
removeGoggles player;

_spectatorselection = 1; //0 = GDT 1 = ASP
[true] call acre_api_fnc_setSpectator;

if(_spectatorselection == 0) then
{
	if (!spectating) then 
	{	
		[] execVM "core\spectate.sqf";
	} 
	else
	{
		titleText [MESSAGE, "BLACK IN", 0.2];
	};
}
else
{
		
		[] execVM "core\spectate.sqf";
		//spectator slightly modifed by Sacher
};