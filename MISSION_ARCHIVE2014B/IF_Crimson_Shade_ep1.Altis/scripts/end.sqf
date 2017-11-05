// Pickupscript
_hero = _this select 1;
_id = _this select 2;  


//Check if its opfor that picks up the clacker.
if (mtrig1 && mtrig2 && mtrig3 && aatrig) then
{
_hero sidechat "Mission Complete"; 
hint "Mission Complete";
endMission "END1"
} else
{
_hero sidechat "Not all tasks have been acomplished!"; 
 }; 