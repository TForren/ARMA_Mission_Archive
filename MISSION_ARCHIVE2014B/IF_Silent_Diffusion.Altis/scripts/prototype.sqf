// Pickupscript
_clacker = _this select 0; 
_hero = _this select 1;
_id = _this select 2;  


//Check if its opfor that picks up the clacker.
if (side _hero == west) then
{
// Remove action and give information! 
_hero playMove "AinvPknlMstpSlayWrflDnon_medic";
_clacker removeAction _id;
_hero sidechat "Removing the flux capacitor from the prototype..."; 
task4 setTaskState "SUCCEEDED";
completed = completed + 1;
task4 setmarkerColor "Green";
} else

{
_hero sidechat "This is a very important prototype that reminds me of a big metal bear. If it is somehow disabled, the consequences would be unbearable."; 
 }; 