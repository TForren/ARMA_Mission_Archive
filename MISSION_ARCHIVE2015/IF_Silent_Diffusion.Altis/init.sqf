ExecVM "briefing.sqf";
0 setFog [0.23, .5, 6.8];

// LOADING TEXT
player addrating 99999; // because fuck that "player turns hostile" shit 
TF_give_microdagr_to_soldier = false; // Don't give people those stupid micro dagrs 


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
//AAR System
call compile ("AMET" callExtension "init" );
//New not-derp Spectator system
[] execVM "CSSA3\CSSA3_init.sqf";
