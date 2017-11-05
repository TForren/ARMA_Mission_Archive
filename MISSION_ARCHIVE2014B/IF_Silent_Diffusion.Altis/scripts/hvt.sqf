// Pickupscript
_clacker = _this select 0; 
_hero = _this select 1;
_id = _this select 2;  


//Check if its opfor that picks up the clacker.
if (side _hero == east) then
{
HVT sidechat "I was raised by bears. I am extremely important. If anything happens to me, the consequences will be unbearable."; 
} else

{
HVT setdamage 1;
 }; 