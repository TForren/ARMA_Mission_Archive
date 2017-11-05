//Mark the JUMP POINT of Aircraft

hint "Marked on Map. Aim for nearest DROPZONE.";

_markerC130 = createMarker["mkrC130",getPos VQIHALO2];
"mkrC130" setMarkerShape "ICON";
"mkrC130" setMarkerType "mil_end";
"mkrC130" setMarkerColor "ColorGreen";
"mkrC130" setMarkerText "C-130";
"mkrC130" setMarkerAlpha 1;
[] spawn {
while{not isnull VQIHALO2} do {"nkrC130" setMarkerPos getPos VQIHALO2; sleep 999;};
};



sleep 999;
deleteMarker "C130Marker";