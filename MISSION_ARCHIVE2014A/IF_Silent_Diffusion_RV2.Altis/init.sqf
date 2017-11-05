
ExecVM "briefing.sqf";
0 setFog [0.23, .5, 6.8];

// LOADING TEXT


if (isServer) then {
{
_x setDamage 1;
sleep 0.01;
} forEach (getPos generator nearObjects ["Lamps_Base_F", 500]) + (getPos generator nearObjects ["PowerLines_base_F", 500]);

//laptop
light1="#lightpoint" createVehicle (getpos laptop);
light1 setLightBrightness 0.027;
light1 setLightAmbient [1,1,1];
light1 setLightColor [0,0,0];
light1 lightAttachObject [laptop,[0,0,0]];

};

ExecVM "scripts\music.sqf";
