 
 this addEventHandler ["HitPart",    
{     
 if (((_this select 0) select 6) select 0 > 15) then {
    deletevehicle ((_this select 0) select 0); 
  };
 }    
];  
 