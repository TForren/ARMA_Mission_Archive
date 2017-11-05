if (!isServer) exitWith {};


_flareLoc = getmarkerpos "flares";


for "_i" from 1 to 4 + random(3) do {
	_flrObj = "F_20mm_Green" createvehicle [(_flareLoc select 0) + (random(300) - 150),
											(_flareLoc select 1) + (random(300) - 150), 
											250 + random(90)]; 
	_flrObj setVelocity [0,0,(-0.5 + random(-0.5))];
	sleep random(8);
};