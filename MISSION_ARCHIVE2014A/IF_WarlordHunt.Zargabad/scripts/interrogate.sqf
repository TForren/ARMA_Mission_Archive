// Pickupscript
_civ = _this select 0; 
_user = _this select 1;
id = _this select 2;  

if (side _user == west) then {
_location1 = createMarker ["location1",(getpos hvt)];
_location1 setMarkerShape "ICON";
_location1 setMarkerType "mil_dot";
informer1 directSay "civResponse";
{informer1 removeaction inter } forEach allUnits; 
}
else {
_civ directSay "Durka"; 
};

{ if (side _x == east) then {"location1" setmarkeralpha 0;};
} foreach allunits;