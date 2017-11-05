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
_hero sidechat "Badger-2, Requesting extract at my smoke."; 
_smoke = "SmokeShellYellow" createVehicle (position box);
sleep 5;
ifv sidechat "Roger, Badger-2 enroute."; 
ifv domove (position hvt);
} else
{
_hero sidechat "This is a NATO crate...I think that HVT is looking for this."; 
}; 