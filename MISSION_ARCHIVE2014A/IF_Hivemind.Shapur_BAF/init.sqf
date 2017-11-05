ExecVM "briefing.sqf"; 
setviewdistance 4000;
execVM "weather.sqf";

		[] spawn {
			scriptName "initMission.hpp: mission start";
			["rsc\Intro.ogv", false] spawn BIS_fnc_titlecard;	
			//OR , The above is a bit more user friendly and easier to control.
			//[getPos orbit1,"Alpha and Bravo have been engaged by hostile forces, provide backup",300,200,180,0,[]] spawn BIS_fnc_establishingShot;   
		};



