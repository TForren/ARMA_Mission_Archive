_chosenGroup = _this select 3; //select 3 for addAction arguments
//hint format ["%1",_chosenGroup];
[_chosenGroup] remoteExec ["HZ_fnc_spawner", 2];