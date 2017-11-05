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
deletevehicle _clacker; 
_hero sidechat "Copying down intel..."; 
task1 setTaskState "SUCCEEDED";
completed = completed + 1;
task1 setmarkerColor "Green";
} else

{
_hero sidechat "This Whiteboard has a picture of a bear on it.. If someone steal this, the consequences would be unbearable."; 
 }; 