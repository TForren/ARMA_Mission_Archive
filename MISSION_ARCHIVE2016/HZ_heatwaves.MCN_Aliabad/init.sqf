//["Town",4000,42,[]] call bis_fnc_destroyCity;

if (isServer) then {
	_nearbyBuildings = nearestTerrainObjects [(getmarkerpos "town"), ["building","house"], 4000];
	
	{
		if (random 1 < .9) then {
			_x setdamage 1;
		};
		sleep 0.1;
	} foreach _nearbyBuildings;
};

{
_x setObjectTexture [0, "ghillie_coverall_des_co.jpg"];
_x setObjectTexture [1, "ghillie_threads_des_ca2.paa"];
_x setObjectTexture [2, "ghillie_threads_des_ca2.paa"];
_x setObjectTexture [3, "ghillie_threads_des_ca2.paa"];
_x setObjectTexture [4, "ghillie_threads_des_ca2.paa"];
_x setObjectTexture [5, "ghillie_threads_des_ca2.paa"];
_x setObjectTexture [6, "ghillie_threads_des_ca2.paa"];
} foreach allunits;