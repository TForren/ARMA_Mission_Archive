/* 
Goon/Gooncorp 2015
call from init.sqf
[] execVM "goon_snowstorm.sqf"; 
*/

_alpha = .55 + random 0.12;// set the alpha of the particles
[_alpha] spawn {     

        while {true} do {		
	       _obj = (vehicle player);
	       _pos = getposASL _obj;
               setwind [0.401112*2,0.204166*2,false];
               _n =  abs(wind select 0) + abs(wind select 1) + abs(wind select 2);
               _velocity = wind;
               _color = [1, 1, 1];   


				_hndl = ppEffectCreate ["colorCorrections", 1501];
				_hndl ppEffectEnable true;
				_hndl ppEffectAdjust [1.0, 1.0, 0.0, [.3, .3, 1.0, .1], [.88, .88, .93, .45], [1 , 1, 1, 0.03]];//white 
				_hndl ppEffectCommit 0;


       
               _snowflakes1 = "#particlesource" createVehicleLocal _pos; 
	       //_snowflakes1  attachto [player, [0,0,12]];
               _snowflakes1  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 14, 2, 0], "", "Billboard", 1, 22, [0, 0, 6], _velocity, (0), 1.69, 1, 1, [1.5], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj];
               _snowflakes1  setParticleRandom [0, [24 + (random 2),24 + (random 2), 4], [0, 0, 0], 0, 0, [0, 0, 0, .03], 0, 0];
               _snowflakes1  setParticleCircle [0, [0, 0, 0]];
               _snowflakes1  setDropInterval 0.001; 


               _snowflakes2 = "#particlesource" createVehicleLocal _pos; 
	       //_snowflakes2  attachto [player, [0,0,12]];
               _snowflakes2  setParticleParams [["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 2, 0], "", "Billboard", 1, 14, [0, 0, 6], _velocity, (0), 1.39, 0, 0, [.2], [[1,1,1,0],[1,1,1,1],[1,1,1,1]],[1000], 0, 0, "", "", _obj];
               _snowflakes2  setParticleRandom [0, [14 + (random 2),14 + (random 2), 5], [0, 0, 0], 0, 0, [0, 0, 0, 2], 0, 0];
              _snowflakes2  setParticleCircle [0, [0, 0, 0]];
               _snowflakes2  setDropInterval 0.004; 




               _delay = 30;
               sleep _delay;
	       deletevehicle _snowflakes1;
	       deletevehicle _snowflakes2;

        };
     };