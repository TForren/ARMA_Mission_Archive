
_opforDead = TriggerActivated (opfordead);

//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	"As listed in the military contract between ION and the UN, the time interval has passed and the PMC are forced to pull out of Aliabad.<br/><br/>STALEMATE<br/>" call FNC_EndMission;
	["end1",false,10] call BIS_fnc_endMission;
}; // End time limit

if (VIPKilled) exitWith {
	"The village Elder has been killed and cannot provide the UN with information on the local insurgents.<br/><br/>INSURGENT VICTORY<br/>" call FNC_EndMission;
	["end1",true,10] call BIS_fnc_endMission;
};

if (_opforDead && ((east call BIS_fnc_respawnTickets) <= 0) && time > 20 ) exitWith {
	"The local insurgents available to assassinate the village elder have been neutralized and the village elder will safely travel to the UN border.<br/><br/>PMC VICTORY<br/>" call FNC_EndMission;
	["end1",true,10] call BIS_fnc_endMission;
};

if (VIP distance (getmarkerpos "un") < 20) then {
	"The VIP has successfully made it to the UN border<br/><br/>PMC VICTORY<br/>" call FNC_EndMission;
	["end1",true,10] call BIS_fnc_endMission;
};


sleep (30); //This determines how frequently the end conditions should be checked in seconds