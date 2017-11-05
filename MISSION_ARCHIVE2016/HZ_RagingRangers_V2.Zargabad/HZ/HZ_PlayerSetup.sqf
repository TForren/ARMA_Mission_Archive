//Hoizen Setup stuff. Contains all the stuff you'd expect a Hoizen misshon to have.
//Handles stuff like intro music, text, effects, the flaire jive.


//player switchMove "AmovPercMstpSlowWrflDnon_AmovPknlMstpSlowWrflDnon"; 

//Post processing Effects.
/*==================================================================
hndl = ppEffectCreate ["colorCorrections", 1501];
hndl ppEffectEnable true;

0 setFog [.25, 0.07, 10];
hndl ppEffectAdjust [.8, 1.0, 0.0, [0.1, 0.1, 0.1, -0.1], [0.8, 0.74, 0.63, 0.50], [0.8, 0.74, 0.63, 0.00]]; //Sandy



hndl ppEffectCommit 0;
*///==================================================================

[player, -1.0, .5, true] call BIS_fnc_sandstorm;
player allowdamage false;
[true, true] call acre_api_fnc_setupMission;

titleText ["", "BLACK IN", 8];
_any=[
	[
	["Raging Rangers","<t align = 'center' size = '1'>%1</t><br/>"],
	["By Hoizen","<t align = 'center' size = '0.7'>%1</t><br/>"],
	["","<t align = 'center' size = '0.7'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

[] spawn {
	while {true} do 
	{
		{
			if ("ACE_Banana" in items _x) then //player has Prototype
			{
				switch (side _x) do {
					case EAST: 
					{ 
					  hint "Spetsnaz have the Prototype!";
					  opforowned = true;
					  bluforowned = false; 
					};
					case WEST: 
					{ 
					  hint "Rangers have the Prototype!";
					  opforowned = false;
					  bluforowned = true;
					};
					
				};
				publicvariable "bluforowned";
				publicvariable "opforowned";
				_x say3D "ping";
				[_x,"ACE_insignia_banana"] call bis_fnc_setUnitInsignia;
			}
			else 
			{
			[_x,""] call bis_fnc_setUnitInsignia; //remove insignia if there
			
			 //Player doesn't have Prototype. Ignore	
			 //hint "this person doesn't have a Prototype";
			};
		} foreach allunits;
	sleep 25;
	};
};



if (isServer) then
{
	randTime = ((random 15) + 3) - daytime;
	publicVariable "randTime";
};

waitUntil{!isNil "randTime"};
skipTime randTime;

[] spawn {
	_done = false;
	while {!_done} do {
		if (vehicle player == player) then { //player not in helo
			sleep 3;
			player allowdamage true;
			_done = true;
		};
	sleep 1;
	};
};


