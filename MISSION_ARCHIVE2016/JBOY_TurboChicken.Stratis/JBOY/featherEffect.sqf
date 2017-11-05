//////////////////////////////////////////////////////////
// featherEffect.sqf 
// Created by: johnnyboy
//
// Puff of feathers spawned around object.  Preferably a bird!!  Or a guy with down vest!
//
// nul = [bird] execVM "JBOY\featherEffect.sqf";
//////////////////////////////////////////////////////////
// Execute this on all clients
params["_bird"];
Private["_effect"];
_effect = "#particlesource" createVehicleLocal [0,0,0]; //(getPos player);
_effect setParticleParams [["\A3\data_f\cl_feathers2", 1, 0, 1], "", 
       "SpaceObject", 0.4, 1, [0, 0, 0], [0, 0, 2], 0, 8, 4, 0.075, [1.4, 2, 4], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], 
       [0.08], 0.9, 0.6, "", "", _bird];
_effect setParticleRandom [0, [0.25, 0.25, 0], [0.1, 0.1, 0], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
_effect setParticleCircle [0, [0, 0, 0]];
_effect setDropInterval 0.02;  
_effect attachTo [_bird,[0,0,0]];
sleep .5;
//_emitterArray = _effect getVariable "effects";
//{deleteVehicle _x} forEach _emitterArray;
deleteVehicle _effect;

/*
List of particle effects:  https://forums.bistudio.com/topic/148108-particle-editor/?p=2385330
interval =  0.02;
	 CircleRadius = 0;
	 CircleVelocity[] = {0,0,0};
	 particleShape ="\A3\data_f\cl_feathers2";
	 particleFSNtieth =1;
	 particleFSIndex =0;
	 particleFSFrameCount =1;
	 particleFSLoop =0;
	 angle =0;
	 angleVar =0;
	 animationName = "";
	 particleType = "SpaceObject";	             
     timerPeriod = 0.4 ;			    
     lifeTime = 1;			     
     moveVelocity[] = {0, 0, 2};	             
     rotationVelocity = 0;		   
     weight = 8;			             
     volume = 4;			            
     rubbing = 0.075;			  
     size[] = {1,1};			       
     animationSpeed[] = {1};		    	   
     lifeTimeVar = 0;			     
     positionVar[] = {0.25, 0.25, 0};		   
     positionVarConst[] = {0, 0, 0};	    
     moveVelocityVar[] = {0.1, 0.1, 0};	  
     moveVelocityVarConst[] = {0, 0, 0};     
     rotationVelocityVar = 0;		    
     sizeVar = 0.1;			     
     colorVar[] = {0, 0, 0, 0};		     
     randomDirectionPeriodVar = 1;	   
     randomDirectionIntensityVar = 1;	   
     sizeCoef = 1;                            
     colorCoef[]={0,0,0,0.1};                   
     animationSpeedCoef = 1;                  
     destroyOnWaterSurface = 0;               
     destroyOnWaterSurfaceOffset = 0;        
     onSurface = true;                        
     keepOnSurface = false;                   
     surfaceOffset = 0;                     
     bounceOnSurface = 0.6;                   
     bounceOnSurfaceVar = 0.0;               
     postEffects = "";           
     particleEffects = "";
	 
	 Size[]={1.4, 2, 4};color [] ={{0.1, 0.1, 0.1, 1}, {0.25, 0.25, 0.25, 0.5}, {0.5, 0.5, 0.5, 0}}; randomDirectionPeriod = 0.9;
	 randomDirectionIntensity = 0.6;	
	 onTimerScript = "";	
	 beforeDestroyScript = "";
     
     XXXPARTICLEEFFECTSOURCEXXX setParticleCircle [0, [0, 0, 0]];
     XXXPARTICLEEFFECTSOURCEXXX setParticleRandom [0, [0.25, 0.25, 0], [0.1, 0.1, 0], 0, 0.1, [0, 0, 0, 0.1], 1, 1];
     XXXPARTICLEEFFECTSOURCEXXX setParticleParams [["\A3\data_f\cl_feathers2", 1, 0, 1], "", "SpaceObject", 0.4, 1, [0, 0, 0], [0, 0, 2], 0, 8, 4, 0.075, [1.4, 2, 4], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 0.9, 0.6, "", "", XXXOBJECTXXX];
     XXXPARTICLEEFFECTSOURCEXXX setDropInterval 0.02;
     
*/