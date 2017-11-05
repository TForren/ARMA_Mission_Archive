// Pickupscript
_civ = _this select 0; 
_user = _this select 1;
id = _this select 2;  

if (side _user == west) then {
_location2 = createMarker ["location2",(getpos hvt)];
_location2 setMarkerShape "ICON";
_location2 setMarkerType "mil_dot";
informer2 directSay "civResponse";
{informer2 removeaction inter } forEach allUnits; 
}
else {
informer2 directSay "Durka"; 
};

{ if (side _x == east) then {"location1" setmarkeralpha 0;};
} foreach allunits;