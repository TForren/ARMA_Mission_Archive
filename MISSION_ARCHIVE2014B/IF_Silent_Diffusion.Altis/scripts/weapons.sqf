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
_hero sidechat "Planting tracking device..."; 
task5 setTaskState "SUCCEEDED";
completed = completed + 1;
task5 setmarkerColor "Green";
} else

{
_hero sidechat "This is a very important weapons shipment we are selling to a pack of bears. If the Blufor find out what we're doing with it, the consequences would be unbearable"; 
 }; 