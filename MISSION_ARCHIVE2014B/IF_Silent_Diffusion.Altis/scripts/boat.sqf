// Pickupscript
_clacker = _this select 0; 
_hero = _this select 1;
_id = _this select 2;  


//Check if its opfor that picks up the clacker.
if (side _hero == west) then
{
// Remove action and give information! 
_clacker removeAction _id;
_hero sidechat "Boat is rigged. Stay clear."; 
task3 setTaskState "SUCCEEDED";
completed = completed + 1;
sleep 20;
boat1 setdamage 1;
task3 setmarkerColor "Green";
} else

{
_hero sidechat "This is a boat that we nicknamed The Bear. If someone were to destroy it, the consequences would be unbearable."; 
 }; 