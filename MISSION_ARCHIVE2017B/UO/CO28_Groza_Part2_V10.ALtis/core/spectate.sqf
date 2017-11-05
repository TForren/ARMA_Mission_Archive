spectating = true; 
viewMode = 0;
thirdPerson = true;
cameraHelp = false;

players = [];
{
	if (!(_x getVariable ["frameworkDead", false])) then {
		players set [count players, _x];
	}
} forEach playableUnits;

maxIndex = count players - 1;

target = deadBody;
selection = 0;

cutText ["GDT SPECTATOR\n----------------------------------------------------------------------------------------------\n\nPress your help button (Standard: H) for instructions","PLAIN"];
setAperture -1;
sleep 1;
camera = "camconstruct" camcreate [getPos deadBody select 0, (getPos deadBody select 1), (getPos deadBody select 2)];
camera setdir (getdir deadBody);
camera camConstuctionSetParams [getPos deadBody, 20000, 10000];
camera cameraeffect ["internal","back"];
titleText ["", "BLACK IN", 0.2];

	_keyDown_help = (finddisplay 46) displayaddeventhandler ["keydown", "
		if ((_this select 1) in (actionkeys 'Help')) then {
			if (!cameraHelp) then {
				cutText ['Mousewheel:                     Camera jumps to player positions\nLeft mouse button:                                     Freelock\nRight mouse button:                     Camera locked on Player\nMovement keys and mouse:                          Move camera\n\nQ:                                              Move camera up\nY or Z:                                      Move camera down\nSHIFT Left:                                      Slow movement\n\nNightvision key:                              Nightvision On/Off\n\nWhile the camera is locked on a player you can change between\n1st/3rd person, optics and group view.\nPress the help button to exit the help screen.', 'BLACK OUT'];
				cameraHelp = true;
			} else {
				cutText ['Mousewheel:                     Camera jumps to player positions\nLeft mouse button:                                     Freelock\nRight mouse button:                     Camera locked on Player\nMovement keys and mouse:                          Move camera\n\nQ:                                              Move camera up\nY or Z:                                      Move camera down\nSHIFT Left:                                      Slow movement\n\nNightvision key:                              Nightvision On/Off\n\nWhile the camera is locked on a player you can change between\n1st/3rd person, optics and group view.\nPress the help button to exit the help screen.', 'BLACK IN'];
				cameraHelp = false;
			};
		};
	"];
	
	_keyDown_nightVision = (finddisplay 46) displayaddeventhandler ["keydown", "
		if ((_this select 1) in (actionkeys 'NightVision')) then {
			switch (viewMode) do {
				case 0: {
					camUseNVG true;
				};
				case 1: {
					camUseNVG false;
					true setCamUseTi 0;
				};
				case 2: {
					false setCamUseTi 0;
					true setCamUseTi 1;
				};
				case 3: {
					false setCamUseTi 1;
				};
			};
			viewMode = viewMode + 1;
			if (viewMode > 3) then {
				viewMode = 0;
			};
		};
	"];
	
	_keyDown_camConstruct = (finddisplay 46) displayaddeventhandler ["MouseButtonDown", "
		if (((_this select 1) == 0) && (!thirdPerson)) then {
			camera cameraeffect ['internal', 'back'];
			camera setpos [((position target) select 0) + ((sin (getdir target)) * ( - 10)), ((position target) select 1) + ((cos (getdir target)) * (- 10)), ((position target) select 2) + 2];
			camera setdir getdir target;
			thirdPerson = true;
		};
	"];
	
	_keyDown_switchCamera = (finddisplay 46) displayaddeventhandler ["MouseButtonDown", "
		if (((_this select 1) == 1) && thirdPerson) then {
			camera cameraeffect ['Terminate', 'back'];
			cutText [format['                   %1', name target],'PLAIN DOWN'];
			target switchCamera 'EXTERNAL';
			thirdPerson = false;
		};
	"];
	
	_keydown_mouseZ = (findDisplay 46) displayAddEventHandler ["mousezchanged", "
		if (count players > 0) then {
			_z = _this select 1;
			if (_z  < 0) then {
				selection = selection - 1;
				if (selection < 0) then {
					selection = maxIndex;
				};
			}
			else {
				selection = selection + 1;
				if (selection > maxIndex) then {
					selection = 0;
				};
			};
			
			target = vehicle (players select selection);
			
			cutText [format['                   %1', name target], 'PLAIN DOWN'];
			
			if (thirdPerson) then {
				camera setpos [((position target) select 0) + ((sin (getdir target)) * ( - 10)), ((position target) select 1) + ((cos (getdir target)) * (- 10)), ((position target) select 2) + 2];
				camera setdir getdir target;
			} else {
				target switchCamera 'EXTERNAL';
			};
		} else {
			target = deadBody;
		};
	"];

while {true} do {
	players = [];
	{
		if (!(_x getVariable ["frameworkDead", false])) then {
			players set [count players, _x];
		}
	} forEach playableUnits;
	
	maxIndex = count players - 1;
	player setOxygenRemaining 100;
	sleep 0.25;
};