sleep 10; // make sure the weather is init

while {true} do {
OvercastVar = Overcast;
publicVariable "OvercastVar";
sleep 120;
FogVar = fog;
publicVariable "FogVar";
sleep 120;
};