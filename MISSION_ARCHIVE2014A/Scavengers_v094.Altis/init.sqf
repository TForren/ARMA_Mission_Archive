if (hasInterface) then {
	titleText ["The ALiVE Team presents...", "BLACK IN",9999];
	0 fadesound 0;

	private ["_cam","_camx","_camy","_camz","_object"];
	_start = time;

	waituntil {(player getvariable ["alive_sys_player_playerloaded",false]) || ((time - _start) > 20)};
	sleep 10;
	
	_object = player;
	_camx = getposATL player select 0;
	_camy = getposATL player select 1;
	_camz = getposATL player select 2;
	
	_cam = "camera" CamCreate [_camx -500 ,_camy + 500,_camz+450];
	
	_cam CamSetTarget player;
	_cam CameraEffect ["Internal","Back"];
	_cam CamCommit 0;
	
	_cam camsetpos [_camx -15 ,_camy + 15,_camz+3];
	
	titleText ["A L i V E   |   S C A V E N G E R S ", "BLACK IN",10];
	10 fadesound 0.9;
	_cam CamCommit 20;
	sleep 5;
	sleep 15;
			
	_cam CameraEffect ["Terminate","Back"];
	CamDestroy _cam;

	player createDiaryRecord ["Diary", ["Intel",
"
2014 - Greece has failed to solve its financial crisis!
The greek government started to expropriate private property and sent out national forces to keep local civilians under control! 
As a loyal Altis citizen you have to defend your island! 
Refuel your jeeps at the gas station in Syrta! Take care, it is very likely guarded and its always important to not be detected near your camp!
Steal at least 20 weapons and bring them to your guerilla camp with your jeeps! The guerilla base is located <marker name='respawn_west'>near Syrta</marker>
"]];

};
sleep 30;
60 setfog [0.05,0.05,80];