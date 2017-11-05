FNC_ADDTASK = {

	private ["_target", "_destination", "_title", "_description", "_wpTitle"];

	_target = _this select 0;
	_destination = _this select 1;
	_title = _this select 2;
	_description = _this select 3;
	_wpTitle = _this select 4;

	[_target, [_title], [_description, _title, _wpTitle], _destination, "Created", 1, true] call BIS_fnc_taskCreate;
	//[_title, _target, [_description, _title, _wpTitle], _destination, "Created", 1, true, true] call BIS_fnc_setTask;
	[_title, _destination] call BIS_fnc_taskSetDestination;
};

FNC_SETTASKSTATE = {

	private ["_title", "_state"];

	_title = _this select 0;
	_state = _this select 1;

	[_title, _state] call BIS_fnc_taskSetState;
	
};

FNC_SETTASKDESTINATION = {

	private ["_title", "_destination"];

	_title = _this select 0;
	_destination = _this select 1;

	[_title, _destination] call BIS_fnc_taskSetDestination;
	
};

FNC_REMOVETASK = {

	private ["_title"];

	_title = _this select 0;

	[_title] call BIS_fnc_deleteTask;

};

FNC_GETTASKSTATE = {

	private ["_title", "_state"];

	_title = _this select 0;

	_state = [_title] call BIS_fnc_taskState;

	_state

};

FNC_TASKCOMPLETED = {

	private ["_title", "_state", "_completed"];

	_title = _this select 0;
	_state = [_title] call FNC_GETTASKSTATE;
	_completed = false;

	if (_state == "Succeeded") then {
		_completed = true;
	};

	_completed

};

FNC_ADDTASK = {

	private ["_target", "_destination", "_title", "_description", "_wpTitle"];

	_target = _this select 0;
	_destination = _this select 1;
	_title = _this select 2;
	_description = _this select 3;
	_wpTitle = _this select 4;

	[_target, [_title], [_description, _title, _wpTitle], _destination, "Created", 1, true] call BIS_fnc_taskCreate;
	//[_title, _target, [_description, _title, _wpTitle], _destination, "Created", 1, true, true] call BIS_fnc_setTask;
	[_title, _destination] call BIS_fnc_taskSetDestination;
};

FNC_SETTASKSTATE = {

	private ["_title", "_state"];

	_title = _this select 0;
	_state = _this select 1;

	[_title, _state] call BIS_fnc_taskSetState;
	
};

FNC_SETTASKDESTINATION = {

	private ["_title", "_destination"];

	_title = _this select 0;
	_destination = _this select 1;

	[_title, _destination] call BIS_fnc_taskSetDestination;
	
};

FNC_REMOVETASK = {

	private ["_title"];

	_title = _this select 0;

	[_title] call BIS_fnc_deleteTask;

};

FNC_GETTASKSTATE = {

	private ["_title", "_state"];

	_title = _this select 0;

	_state = [_title] call BIS_fnc_taskState;

	_state

};

FNC_TASKCOMPLETED = {

	private ["_title", "_state", "_completed"];

	_title = _this select 0;
	_state = [_title] call FNC_GETTASKSTATE;
	_completed = false;

	if (_state == "Succeeded") then {
		_completed = true;
	};

	_completed

};


if (isServer) then {
	serverTaskArray = [];
};

#define ADDTASK(TARGET, DESTINATION, TITLE, DESCRIPTION, WPTITLE) \
[TARGET, DESTINATION, TITLE, DESCRIPTION, WPTITLE] call FNC_ADDTASK;

#define COMPLETETASK(TITLE) \
[TITLE, "Succeeded"] call FNC_SETTASKSTATE;

#define FAILTASK(TITLE) \
[TITLE, "Failed"] call FNC_SETTASKSTATE;

#define CANCELTASK(TITLE) \
[TITLE, "Canceled"] call FNC_SETTASKSTATE;

#define RESETTASK(TITLE) \
[TITLE, "Created"] call FNC_SETTASKSTATE;

#define ASSIGNTASK(TITLE) \
[TITLE, "Assigned"] call FNC_SETTASKSTATE;

#define REMOVETASK(TITLE) \
[TITLE] call FNC_REMOVETASK;



