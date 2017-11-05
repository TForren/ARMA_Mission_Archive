//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.

/*
//Post processing Effects.
//==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy
[player, -1.0, .5, true] call BIS_fnc_sandstorm;

hndl ppEffectCommit 0;
//==================================================================
*/

//Littlebird 1
[] spawn {     
	while {true} do {	
		if ((speed lb1) > 5 && (alive lb1)) then {
			_obj = lb1;
			_pos = getposASL _obj;
		    speedX = abs (velocity lb1 select 0);
		    speedY = abs (velocity lb1 select 1);
		    speedZ = abs (velocity lb1 select 2);
		   // _velocity = [speedX * 6, speedY * 6, speedZ * 6];
		    _velocity = [0,0,1];
		    _color = [1, 1, 1];   
	//=======================LEFT SKID=========================================================
		   _snowflakes1 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes1 attachto [_obj, [0,0,-1]];
		   _snowflakes1 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[-1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes1 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes1  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes1  setDropInterval 0.0099999998; 
	//=========================RIGHT SKID=================================================
		   _snowflakes2 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes2 attachto [_obj, [0,0,-1]];
		   _snowflakes2 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes2 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes2  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes2  setDropInterval 0.0099999998; 

		   _delay = 7;
		   sleep _delay;
	    deletevehicle _snowflakes1;
	    deletevehicle _snowflakes2;
		};
		sleep 0.1;
	}; //while
}; //spawn

//Littlebird 2
[] spawn {     
	while {true} do {	
		if ((speed lb2) > 5 && (alive lb2)) then {
			_obj = lb2;
			_pos = getposASL _obj;
		    speedX = abs (velocity lb2 select 0);
		    speedY = abs (velocity lb2 select 1);
		    speedZ = abs (velocity lb2 select 2);
		   // _velocity = [speedX * 6, speedY * 6, speedZ * 6];
		    _velocity = [0,0,1];
		    _color = [1, 1, 1];   
	//=======================LEFT SKID=========================================================
		   _snowflakes1 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes1 attachto [_obj, [0,0,-1]];
		   _snowflakes1 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[-1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes1 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes1  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes1  setDropInterval 0.0099999998; 
	//=========================RIGHT SKID=================================================
		   _snowflakes2 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes2 attachto [_obj, [0,0,-1]];
		   _snowflakes2 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes2 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes2  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes2  setDropInterval 0.0099999998; 

		   _delay = 7;
		   sleep _delay;
	    deletevehicle _snowflakes1;
	    deletevehicle _snowflakes2;
		};
		sleep 0.1;
	}; //while
}; //spawn

//Littlebird 3
[] spawn {     
	while {true} do {	
		if ((speed lb3) > 5 && (alive lb3)) then {
			_obj = lb3;
			_pos = getposASL _obj;
		    speedX = abs (velocity lb3 select 0);
		    speedY = abs (velocity lb3 select 1);
		    speedZ = abs (velocity lb3 select 2);
		   // _velocity = [speedX * 6, speedY * 6, speedZ * 6];
		    _velocity = [0,0,1];
		    _color = [1, 1, 1];   
	//=======================LEFT SKID=========================================================
		   _snowflakes1 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes1 attachto [_obj, [0,0,-1]];
		   _snowflakes1 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[-1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes1 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes1  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes1  setDropInterval 0.0099999998; 
	//=========================RIGHT SKID=================================================
		   _snowflakes2 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes2 attachto [_obj, [0,0,-1]];
		   _snowflakes2 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes2 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes2  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes2  setDropInterval 0.0099999998; 

		   _delay = 7;
		   sleep _delay;
	    deletevehicle _snowflakes1;
	    deletevehicle _snowflakes2;
		};
		sleep 0.1;
	}; //while
}; //spawn

//Littlebird 3
[] spawn {     
	while {true} do {	
		if ((speed lb4) > 5 && (alive lb4)) then {
			_obj = lb4;
			_pos = getposASL _obj;
		    speedX = abs (velocity lb4 select 0);
		    speedY = abs (velocity lb4 select 1);
		    speedZ = abs (velocity lb4 select 2);
		   // _velocity = [speedX * 6, speedY * 6, speedZ * 6];
		    _velocity = [0,0,1];
		    _color = [1, 1, 1];   
	//=======================LEFT SKID=========================================================
		   _snowflakes1 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes1 attachto [_obj, [0,0,-1]];
		   _snowflakes1 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[-1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes1 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes1  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes1  setDropInterval 0.0099999998; 
	//=========================RIGHT SKID=================================================
		   _snowflakes2 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes2 attachto [_obj, [0,0,-1]];
		   _snowflakes2 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "","Billboard", 1,7.5,[1, 0.1, -1.8],_velocity,(1), 1, 1, 0, [0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], [[1,1,1,1], [1,1,1,1], [1,1,1,1]], [1000], 0.5,0.55000001,"","", _obj, 360, false,0.5,[[300,300,300,0]]];	
		   _snowflakes2 setParticleRandom [ 1.5, [0.2,0.2,0],[0.4,1,0.6],2, 0.039999999,[00,0.15000001,0.15000001,0], 0.60000001,  0.15000001 ]; 
		  _snowflakes2  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes2  setDropInterval 0.0099999998;  

		   _delay = 7;
		   sleep _delay;
	    deletevehicle _snowflakes1;
	    deletevehicle _snowflakes2;
		};
		sleep 0.1;
	}; //while
}; //spawn
