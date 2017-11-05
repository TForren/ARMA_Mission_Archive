// Pickupscript
_pole = _this select 0; 
_user = _this select 1;
_id = _this select 2;  

if (side _user == east) then {
_user setposATL getposATL start2;
}
else {
_user sidechat "No"; 
};