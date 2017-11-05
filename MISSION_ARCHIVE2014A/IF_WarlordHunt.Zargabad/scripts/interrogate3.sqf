// Pickupscript
_civ = _this select 0; 
_user = _this select 1;
id = _this select 2;  

if (side _user == west) then {
_location3 = createMarker ["location3",(getpos hvt)];
_location3 setMarkerShape "ICON";
_location3 setMarkerType "mil_dot";
informer3 directSay "civResponse";
{informer3 removeaction inter } forEach allUnits; 
}
else {
_civ directSay "Durka"; 
};

{ if (side _x == east) then {"location1" setmarkeralpha 0;};
} foreach allunits;