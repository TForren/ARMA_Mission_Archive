ExecVM "briefing.sqf"; 

setviewdistance 6000;
// LOADING TEXT
if (time < 15) then
{  
    [] Spawn {
        cutText ["","BLACK FADED",99];
        waitUntil{!(isNil "BIS_fnc_init")};
        [str ("Altis") , "0" + str(date select 1) + "-" + str(date select 2) + "-" + str(date select 0), str("Serpent's Strike")] spawn BIS_fnc_infoText;
        sleep 8; 
        cutText ["","BLACK IN",10];
		
    };
};


sleep 300;
_cycles = 2;
_radius = 20;  
_rounds = 8;
_center1 = getpos t1;  
_center2 = getpos t2;

 while {_cycles > 0} do {
  
_pos1 = [  
    (_center1 select 0) - _radius + (2 * random _radius),  
    (_center1 select 1) - _radius + (2 * random _radius),  
    0  
    ];
	
_pos2 = [  
    (_center2 select 0) - _radius + (2 * random _radius),  
    (_center2 select 1) - _radius + (2 * random _radius),  
    0  
    ];  

s1 commandArtilleryFire [ _pos1, getArtilleryAmmo [s1] select 0, _rounds];                              
s2 commandArtilleryFire [ _pos2, getArtilleryAmmo [s2] select 0, _rounds];  

sleep 30;
_cycles = _cycles - 1;
}