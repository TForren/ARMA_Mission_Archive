// Pickupscript
_clacker = _this select 0; 
_hero = _this select 1;
_id = _this select 2;  


//Check if its opfor that picks up the clacker.
if (side _hero == west) then
{


// Search for clacker animation
_hero playMove "AinvPknlMstpSlayWrflDnon_medic";


// Remove action and give information! 
_clacker removeAction _id;
_smoke = "SmokeShellYellow" createVehicle (position box);
_light = "Chemlight_yellow" createVehicle (position box);
_hero sidechat "Activating clacker!"; 
sleep 40;
_smoke = "SmokeShellYellow" createVehicle (position box);

} else

{
_hero sidechat "Confirmed Hostiles Down."; 
 }; 