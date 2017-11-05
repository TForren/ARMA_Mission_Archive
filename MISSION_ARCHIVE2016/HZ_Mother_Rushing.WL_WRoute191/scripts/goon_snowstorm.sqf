/* 
Goon/Gooncorp 2015
call from init.sqf
[] execVM "goon_snowstorm.sqf"; 
*/

_alpha = .75 + random 0.25;// set the alpha of the particles
[_alpha] spawn {     

        while {true} do {		
	       _obj = (vehicle player);
	       _pos = getposASL _obj;
               setwind [0.401112*2,0.204166*2,false];
               _n =  abs(wind select 0) + abs(wind select 1) + abs(wind select 2);
               _velocity = wind;
               _color = [1, 1, 1];   


				filter = ppEffectCreate ["colorCorrections", 1501];
				filter ppEffectEnable true;
				filter ppEffectAdjust [1.0, 1.0, 0.0, [.3, .3, 1.0, .1], [.88, .88, .93, .45], [0.5, 0.5, 0.5, 0.03]];//white 
				filter ppEffectCommit 0;


               snowflakes1 = "#particlesource" createVehicleLocal _pos; 
	       //snowflakes1  attachto [player, [0,0,12]];
               snowflakes1 setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 14, 2, 0], "", "Billboard", 1, 22, [0, 0, 6], _velocity, (0), 1.69, 1, 1, [1.5], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj,
			   	360, //angle
				true, //onSurface (water)
				-1, //bounceOnSurface
				[[1,1,1,0]] //emissive color
				];
               snowflakes1  setParticleRandom [0, [24 + (random 2),24 + (random 2), 4], [0, 0, 0], 0, 0, [0, 0, 0, .03], 0, 0];
               snowflakes1  setParticleCircle [0, [0, 0, 0]];
               //snowflakes1  setDropInterval 0.001; 
               snowflakes1  setDropInterval 0.01; 


               snowflakes2 = "#particlesource" createVehicleLocal _pos; 
	       //snowflakes2  attachto [player, [0,0,12]];
               snowflakes2  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 2, 0], "", "Billboard", 1, 14, [0, 0, 6], _velocity, (0), 1.39, 0, 0, [.2], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj,
			   	360, //angle
				true, //onSurface (water)
				-1, //bounceOnSurface
				[[1,1,1,0]] //emissive color
				];
               snowflakes2  setParticleRandom [0, [14 + (random 2),14 + (random 2), 5], [0, 0, 0], 0, 0, [0, 0, 0, 2], 0, 0];
              snowflakes2  setParticleCircle [0, [0, 0, 0]];
            //   snowflakes2  setDropInterval 0.004; 
               snowflakes2  setDropInterval 0.01; 


/*
               _clouds1 = "#particlesource" createVehicleLocal _pos; 
	       //_clouds1  attachto [player, [0,0,12]];
               _clouds1  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 2, 0], "", "Billboard", 1,22, [0, 0, 16], _velocity, (_n * 4), 1.72, 1, 1, [22 + random 33], [[1,1,1,0],[1,1,1,1],[1,1,1,0]],[1000], 0, 0, "", "", _obj];
               _clouds1  setParticleRandom [3, [55 + (random 8),55 + (random 10), 55], [2, 2, 0], 0, 0, [0, 0, 0, 0], 0, 0];
               _clouds1  setParticleCircle [0, [0, 0, 0]];
               _clouds1  setDropInterval 0.05; 

*/
               _clouds2 = "#particlesource" createVehicleLocal _pos; 
	      // _clouds2  attachto [player, [0,0,12]];
               _clouds2  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 6, 0], "", "Billboard", 1, 22, [0, 0, 36], _velocity, (0), 1.52, 1, 1, [5 + random 23], [[1,1,1,0],[1,1,1,.4],[1,1,1,0]],[1000], 0, 0, "", "", _obj];
               _clouds2  setParticleRandom [5, [24 + (random 8),24 + (random 10), 15], [2, 2, 0], 0, 0, [0, 0, 0, 0], 0, 0];
               _clouds2  setParticleCircle [0, [0, 0, 0]];
              // _clouds2  setDropInterval 0.1; 
               _clouds2  setDropInterval 0.1; 


               _delay = 30;
               sleep _delay;
	       deletevehicle snowflakes1;
	       deletevehicle snowflakes2;
//	       deletevehicle _clouds1;
	       deletevehicle _clouds2;

        };
     };