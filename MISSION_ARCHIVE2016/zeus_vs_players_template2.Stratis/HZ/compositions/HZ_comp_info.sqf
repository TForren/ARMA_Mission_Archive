_compInfo = (_this select 0);
_chosenComp = _compInfo select 0;
hint format ["%1",_compInfo];
switch (_chosenComp) do {

case "GAZ66MGNest": {
_veh = (_compInfo select 1);
_operator = (_compInfo select 2);
nestFloor = "PRAA_statics_woodenramp4x3m0_2" createVehicle getpos _veh;
nestFloor setpos getpos _veh;
nestFloor setdir getdir _veh;

//delete gaz and driver
deleteVehicle _veh;
deleteVehicle _operator;

sb1 = "Land_BagFence_Long_F" createVehicle getpos nestFloor;
sb1 setdir getdir nestfloor + 90;sb1 setpos (nestFloor modelToWorld [5,0,0]);
sb2 = "Land_BagFence_Round_F" createVehicle getpos nestFloor; 
sb2 setdir getdir nestfloor + 230;sb2 setpos (nestFloor modelToWorld [4.7,2.8,0]); 
sb3 = "Land_BagFence_Long_F" createVehicle getpos nestFloor; 
sb3 setdir getdir nestfloor;sb3 setpos (nestFloor modelToWorld [2,3.4,0]); 
sb4 = "Land_BagFence_Long_F" createVehicle getpos nestFloor;  
sb4 setdir getdir nestfloor;sb4 setpos (nestFloor modelToWorld [-0.9,3.4,0]);  
sb5 = "Land_BagFence_Long_F" createVehicle getpos nestFloor; 
sb5 setdir getdir nestfloor;sb5 setpos (nestFloor modelToWorld [-3.7,3.4,0]);   
sb6 = "Land_BagFence_Round_F" createVehicle getpos nestFloor; 
sb6 setdir getdir nestfloor - 230;sb6 setpos (nestFloor modelToWorld [-5.6,2.9,0]);  
sb7 = "Land_BagFence_Long_F" createVehicle getpos nestFloor;
sb7 setdir getdir nestfloor + 90;sb7 setpos (nestFloor modelToWorld [-6,0,0]);
sb8 = "Land_BagFence_Round_F" createVehicle getpos nestFloor;  
sb8 setdir getdir nestfloor + 40;sb8 setpos (nestFloor modelToWorld [-5.5,-2.5,0]); 
sb9 = "Land_BagFence_Long_F" createVehicle getpos nestFloor;  
sb9 setdir getdir nestfloor;sb9 setpos (nestFloor modelToWorld [-2.7,-2.8,0]);   
mg1 = "rhs_KORD_high_MSV" createVehicle getpos nestFloor;  
mg1 setdir getdir nestfloor - 30;mg1 setpos (nestFloor modelToWorld [-4,1.5,0]);   
mg2 = "rhs_KORD_high_MSV" createVehicle getpos nestFloor;   
mg2 setdir getdir nestfloor + 40;mg2 setpos (nestFloor modelToWorld [3,1.5,0]);    
ammo1 = "rhs_weapon_crate" createVehicle getpos nestFloor;
ammo1 setdir getdir nestfloor + 40;ammo1 setpos (nestFloor modelToWorld [0,1.5,0]);     
ammo2 = "rhs_mags_crate" createVehicle getpos nestFloor;
ammo2 setdir getdir nestfloor;ammo2 setpos (nestFloor modelToWorld [0,-1.5,0]);     
net = "CamoNet_BLUFOR_open_F" createVehicle getpos nestFloor;
net setpos getpos nestfloor;

_group = createGroup east;
_duder1 = _group createUnit ["rhs_msv_rifleman",  getpos nestfloor, [], 0, "FORM"];
_duder2 = _group createUnit ["rhs_msv_rifleman",  getpos nestfloor, [], 0, "FORM"];
_duder1 moveinGunner mg1;
_duder2 moveinGunner mg2;

};

};
