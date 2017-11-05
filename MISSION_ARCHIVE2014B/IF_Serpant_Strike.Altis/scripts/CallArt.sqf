sleep 10;
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