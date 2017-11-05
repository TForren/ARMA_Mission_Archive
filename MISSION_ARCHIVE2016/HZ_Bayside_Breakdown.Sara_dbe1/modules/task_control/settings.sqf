/*
	Task Control Module by Briland

	This module allows easy control of local ARMA 3 task in a multiplayer environment.


	ADD a task with:
	ADDTASK(TARGET, POSITION, TITLE, DESCRIPTION, WPTITLE);

	TARGET is who you want to see the task, can be a SIDE (west, east, etc.) or a GROUP
	POSITION is the location the task will be set to. It can be an object (unit or gamelogic or vehicle) or a position (getmarkerpos "marker1"). If you don't want a marker on the map use: objNull
	TITLE is what you want the task to be called and is used to refrence what task you want to edit in this file.
	DESCRIPTION is the detailed description of the task, this can be as long as you want it to be.
	WPTITLE the title of the task as it shows up on the map.

	Update a task with:
	COMPLETETASK(TITLE);  	// sets the task to Succeeded
	FAILTASK(TITLE);		// sets the task to Failed
	CANCELTASK(TITLE);		// sets the task to Canceled
	RESETTASK(TITLE);		// sets the task to outstanding but not currently assigned
	ASSIGNTASK(TITLE);		// sets the task to currently Assigned
	REMOVETASK(TITLE);		// removes the task from the task list. THIS IS NOT RECCOMENDED TO BE USED. YOU SHOULD USE FAILED OR CANCELED INSTEAD

	TITLE is the same as the title you set when you added the task.

	GET a task's current state with:
	_state = [TITLE] call FNC_GETTASKSTATE;

	Possible states:
	"Succeeded"
	"Failed"
	"Canceled"
	"Created"
	"Assigned"

	EXAMPLE:
	ADDTASK(west, position obj1, "Objective 1", "Go to this point and Destroy Objective #1 with the explosive charges that your engineers have.", "OBJ 1");
	ASSIGNTASK("Objective 1");							// make objective 1 the active objective
*/
[] spawn {
	while {!FW_MissionEnded} do {
		sleep 30;
		if (!(alive hans)) exitwith {
			COMPLETETASK("CLASSIFIED");
		};	

	};
};
[] spawn {
	while {!FW_MissionEnded} do {
		sleep 30;
		if (!(alive md1) && !(alive md2) && !(alive md3)) exitwith {
			COMPLETETASK("Destroy Enemy Mortars");
		};		
	};
};
[] spawn {
	while {!FW_MissionEnded} do {
		sleep 30;
		if (!(alive strLead)) exitwith {
			COMPLETETASK("Stronghold");
		};							
	};
};
[] spawn {
	while {!FW_MissionEnded} do {
		sleep 30;
		if ( (mi8 distance (getmarkerpos "helos") > 500) || (mi82 distance (getmarkerpos "helos") > 500)) exitwith {
			FAILTASK("Destroy Enemy CAS");
		};							
	};
};
[] spawn {
	while {!FW_MissionEnded} do {
		sleep 30;
		if (evidence distance longcat < 500) exitwith {
			//if !(["Stronghold"] call FNC_GETTASKSTATE == "Succeeded") then {CANCELTASK("Stronghold")};
			//if !(["Destroy AA"] call FNC_GETTASKSTATE == "Succeeded") then {CANCELTASK("Destroy AA")};
			//if !(["Destroy Enemy CAS"] call FNC_GETTASKSTATE == "Succeeded") then {CANCELTASK("Destroy Enemy CAS")};
			//if !(["Destroy Enemy Mortars"] call FNC_GETTASKSTATE == "Succeeded") then {CANCELTASK("Destroy Enemy Mortars")};
			//if !(["CLASSIFIED"] call FNC_GETTASKSTATE == "Succeeded") then {CANCELTASK("CLASSIFIED")};
			ASSIGNTASK("Extract");
			COMPLETETASK("Evidence");
			ASSIGNTASK("Extract");
		};							
	};
};

	


ADDTASK(west, position evidence, "Evidence", "PRIMARY OBJECTIVE: Secure the blue binder containing all evidence of SLA/Russian dealings.", "PRI");
ADDTASK(west, (getmarkerpos "stronghold"), "Stronghold", "SECONDARY OBJECTIVE: Neutralize the SLA beach head stronghold.", "STR");
ADDTASK(group spectre1, (getmarkerpos "helos"), "Destroy Enemy CAS", "Destroy the SLA CAS in any way to prevent them from supporting the beach head.", "CAS");
ADDTASK(group spectre1, (getmarkerpos "mortars"), "Destroy Enemy Mortars", "Destroy the SLA mortar teams in any way to prevent them from supporting the beach head.", "MRT");
ADDTASK(group spectre1, hans, "CLASSIFIED", "UNOFFICIAL MISSION: Eliminate Hans Voltor.", "HV");
ADDTASK(west, position LHD1, "Extract", "When the Primary Objective complete, All USMC forces must extract from the AO.", "EXT");


ASSIGNTASK("Evidence");
//ASSIGNTASK("Objective 3");
//COMPLETETASK("Objective 3");