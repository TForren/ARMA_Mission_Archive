 
 
 _cycles = _this select 4; 
 
  //--- [mortar, target, radius, rounds, cycles] execVM "scripts/art";
 
   _mortar = _this select 0;
   _uni = _this select 1;
   _radius = _this select 2;  		 //--- random radius from the center turn lower for closer hits   
   _rounds = _this select 3; 
   _center = getpos _uni;              //--- central point around which the mortar rounds will hit  
   
   
 while {_cycles > 0} do {
  
_pos = [  
    (_center select 0) - _radius + (2 * random _radius),  
    (_center select 1) - _radius + (2 * random _radius),  
    0  
    ];  

_mortar commandArtilleryFire [  
    _pos,  
    getArtilleryAmmo [_mortar] select 0,  
    _rounds 
    ];                              

sleep 30;
_cycles = _cycles - 1;
}
