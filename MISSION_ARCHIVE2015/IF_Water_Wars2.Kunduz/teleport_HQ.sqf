// Pickupscript
_pole = _this select 0; 
_user = _this select 1;
_id = _this select 2;  

if (side _user == west) then {
_user setposATL getposATL respawnflagHQ;
}
else {
_user sidechat "I'M NOT SUPPOSED TO BE HERE!"; 
sleep 1;
_user setdamage 1;
};