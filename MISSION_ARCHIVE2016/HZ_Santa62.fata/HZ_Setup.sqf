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

if ((side player) == blufor ) then //blufor
{
	_draw3DCallsigns = addMissionEventHandler ["Draw3D",{ //staging area name tags 

			if ( (player distance (getmarkerpos "HQ")) < 100) then {

				drawIcon3D ["", [0.29,0.76,0.75,1], [(getpos b1) select 0,(getpos b1) select 1,((getpos b1) select 2) + 2.5], 0, 0, 0, "1'0 PL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b5) select 0,(getpos b5) select 1,((getpos b5) select 2) + 2.5], 0, 0, 0, "1'1 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos b6) select 0,(getpos b6) select 1,((getpos b6) select 2) + 2.5], 0, 0, 0, "1'1 Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b10) select 0,(getpos b10) select 1,((getpos b10) select 2) + 2.5], 0, 0, 0, "1'1 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b14) select 0,(getpos b14) select 1,((getpos b14) select 2) + 2.5], 0, 0, 0, "1'2 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos b15) select 0,(getpos b15) select 1,((getpos b15) select 2) + 2.5], 0, 0, 0, "1'2 Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b18) select 0,(getpos b18) select 1,((getpos b18) select 2) + 2.5], 0, 0, 0, "1'2 Bravo", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.85,0.81,0.52,1], [(getpos b23) select 0,(getpos b23) select 1,((getpos b23) select 2) + 2.5], 0, 0, 0, "1'3 SL", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,0,0,1], [(getpos b24) select 0,(getpos b24) select 1,((getpos b24) select 2) + 2.5], 0, 0, 0, "1'3 Alpha", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,0,1,1], [(getpos b26) select 0,(getpos b26) select 1,((getpos b26) select 2) + 2.5], 0, 0, 0, "1'3 Bravo", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0,1,0,1], [(getpos b28) select 0,(getpos b28) select 1,((getpos b28) select 2) + 2.5], 0, 0, 0, "1'3 Charlie", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [1,1,0,1], [(getpos b31) select 0,(getpos b31) select 1,((getpos b31) select 2) + 2.5], 0, 0, 0, "1'3 Delta", 1, 0.04, "TahomaB"]; 
				
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p1) select 0,(getpos p1) select 1,((getpos p1) select 2) + 2.5], 0, 0, 0, "Sleigh-1", 1, 0.04, "TahomaB"]; 
				drawIcon3D ["", [0.9,0.9,0.9,1], [(getpos p5) select 0,(getpos p5) select 1,((getpos p5) select 2) + 2.5], 0, 0, 0, "Sleigh-2", 1, 0.04, "TahomaB"]; 
			};
		}
	];


	sleep 1;
	player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; //crouch
	titleText ["Loading DAC", "BLACK FADED"];
	sleep 3;
	titleText ["Loading DAC.", "BLACK FADED"];
	sleep 3;
	titleText ["Loading DAC..", "BLACK FADED"];
	sleep 3;
	titleText ["Loading DAC...", "BLACK FADED"];
	sleep 3;
	titleText ["", "BLACK IN", 8];
	sleep 8;
	titleText ["", "PLAIN"];
	sleep 3;	
	
	
};



//Littlebird 1
[] spawn {     
	while {true} do {	
		if ((speed lb1) > 10 && (alive lb1)) then {
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
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "", // File,Ntieth,Index,Count,Loop(Bool)
			"Billboard", //Type
			1, //TimerPeriod
			7.5, //Lifetime
			[-1, 0.1, -1.8], //Position
			_velocity, //MoveVelocity
			(1), 1, 1, 0, //Simulation (rotationvel, weight, volume, rubbing)
			[0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], //size (scale)
			[[1,1,1,1], [1,1,1,1], [1,1,1,1]], //Color
			[1000], //animSpeed
			0.5, //RandomDirPeriod
			0.55000001, //RandDirIntensity
			"", //On Timer script
			"", //Destroy script
			_obj, // Follow Object
			360, //angle
			true, //onSurface (water)
			0.5, //bounceOnSurface
			[[300,300,300,0]] //emissive color
			];
			
		   _snowflakes1 setParticleRandom [
		   1.5,//Lifetime
		   [0.2,0.2,0], //Position
		   [0.4,1,0.6], //MoveVelocity
		   2, //RotationVelocity
		   0.039999999, //Size
		   [00,0.15000001,0.15000001,0], //Color
		   0.60000001, //RandomDirPeriod var
		   0.15000001 //RandomDirect Intensity var
		   ]; 
		  
		  _snowflakes1  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes1  setDropInterval 0.0099999998; 
	//=========================RIGHT SKID=================================================
		   _snowflakes2 = "#particlesource" createVehicleLocal _pos; 
		   _snowflakes2 attachto [_obj, [0,0,-1]];
		   _snowflakes2 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "", // File,Ntieth,Index,Count,Loop(Bool)
			"Billboard", //Type
			1, //TimerPeriod
			7.5, //Lifetime
			[1, 0.1, -1.8], //Position
			_velocity, //MoveVelocity
			(1), 1, 1, 0, //Simulation (rotationvel, weight, volume, rubbing)
			[0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], //size (scale)
			[[1,1,1,1], [1,1,1,1], [1,1,1,1]], //Color
			[1000], //animSpeed
			0.5, //RandomDirPeriod
			0.55000001, //RandDirIntensity
			"", //On Timer script
			"", //Destroy script
			_obj, // Follow Object
			360, //angle
			true, //onSurface (water)
			0.5, //bounceOnSurface
			[[300,300,300,0]] //emissive color
			];
			
		   _snowflakes2 setParticleRandom [
		   1.5,//Lifetime
		   [0.2,0.2,0], //Position
		   [0.4,1,0.6], //MoveVelocity
		   2, //RotationVelocity
		   0.039999999, //Size
		   [00,0.15000001,0.15000001,0], //Color
		   0.60000001, //RandomDirPeriod var
		   0.15000001 //RandomDirect Intensity var
		   ]; 
		  
		  _snowflakes2 setParticleCircle [0, [0, 0, 0]];
		  _snowflakes2 setDropInterval 0.0099999998; 
		   

		   _delay = 7;
		   sleep _delay;
	    deletevehicle _snowflakes1;
	    deletevehicle _snowflakes2;
		};
		
		if ((speed lb2) > 10 && (alive lb2)) then {
			_obj2 = lb2;
			_pos2 = getposASL _obj2;
		    speedX = abs (velocity lb2 select 0);
		    speedY = abs (velocity lb2 select 1);
		    speedZ = abs (velocity lb2 select 2);
		   // _velocity2 = [speedX * 6, speedY * 6, speedZ * 6];
		    _velocity2 = [0,0,1];
		    _color2 = [1, 1, 1];   
	//=======================LEFT SKID=========================================================
		   _snowflakes3 = "#particlesource" createVehicleLocal _pos2; 
		   _snowflakes3 attachto [_obj2, [0,0,-1]];
		   _snowflakes3 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "", // File,Ntieth,Index,Count,Loop(Bool)
			"Billboard", //Type
			1, //TimerPeriod
			7.5, //Lifetime
			[-1, 0.1, -1.8], //Position
			_velocity2, //MoveVelocity
			(1), 1, 1, 0, //Simulation (rotationvel, weight, volume, rubbing)
			[0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], //size (scale)
			[[1,1,1,1], [1,1,1,1], [1,1,1,1]], //Color
			[1000], //animSpeed
			0.5, //RandomDirPeriod
			0.55000001, //RandDirIntensity
			"", //On Timer script
			"", //Destroy script
			_obj2, // Follow Object
			360, //angle
			true, //onSurface (water)
			0.5, //bounceOnSurface
			[[300,300,300,0]] //emissive color
			];
			
		   _snowflakes3 setParticleRandom [
		   1.5,//Lifetime
		   [0.2,0.2,0], //Position
		   [0.4,1,0.6], //MoveVelocity
		   2, //RotationVelocity
		   0.039999999, //Size
		   [00,0.15000001,0.15000001,0], //Color
		   0.60000001, //RandomDirPeriod var
		   0.15000001 //RandomDirect Intensity var
		   ]; 
		  
		  _snowflakes3  setParticleCircle [0, [0, 0, 0]];
		  _snowflakes3  setDropInterval 0.0099999998; 
	//=========================RIGHT SKID=================================================
		   _snowflakes4 = "#particlesource" createVehicleLocal _pos2; 
		   _snowflakes4 attachto [_obj2, [0,0,-1]];
		   _snowflakes4 setParticleParams [
			["a3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 13, 2, 0], "", // File,Ntieth,Index,Count,Loop(Bool)
			"Billboard", //Type
			1, //TimerPeriod
			7.5, //Lifetime
			[1, 0.1, -1.8], //Position
			_velocity2, //MoveVelocity
			(1), 1, 1, 0, //Simulation (rotationvel, weight, volume, rubbing)
			[0.1,0.1,0.1,0.1,0.1,0.079999998,0.079999998,0.079999998,0.079999998,0], //size (scale)
			[[1,1,1,1], [1,1,1,1], [1,1,1,1]], //Color
			[1000], //animSpeed
			0.5, //RandomDirPeriod
			0.55000001, //RandDirIntensity
			"", //On Timer script
			"", //Destroy script
			_obj2, // Follow Object
			360, //angle
			true, //onSurface (water)
			0.5, //bounceOnSurface
			[[300,300,300,0]] //emissive color
			];
			
		   _snowflakes4 setParticleRandom [
		   1.5,//Lifetime
		   [0.2,0.2,0], //Position
		   [0.4,1,0.6], //MoveVelocity
		   2, //RotationVelocity
		   0.039999999, //Size
		   [00,0.15000001,0.15000001,0], //Color
		   0.60000001, //RandomDirPeriod var
		   0.15000001 //RandomDirect Intensity var
		   ]; 
		  
		  _snowflakes4 setParticleCircle [0, [0, 0, 0]];
		  _snowflakes4 setDropInterval 0.0099999998; 
		   

		   _delay2 = 7;
		   sleep _delay2;
	    deletevehicle _snowflakes3;
	    deletevehicle _snowflakes4;
		};
	};
};
