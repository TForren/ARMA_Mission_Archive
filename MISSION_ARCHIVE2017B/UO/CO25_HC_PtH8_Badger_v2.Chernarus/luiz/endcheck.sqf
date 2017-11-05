// Script by Luiz Silveira

_team = fw_Teams select 0;
_alive = _team select 4;

if (_alive < 1) exitwith {"TOTAL FAILURE:<br /> Everyone's dead" call FNC_EndMission;};

sleep 1;

if (!firefight) exitwith {};

_westCasualty = "Militia" call FNC_CasualtyPercentage;

if (GUE_CivKilled > 1) exitWith { 
		
	format ["MISSION FAILED<br /> Two or more civilians were killed, last one by %1", lastkiller] call FNC_EndMission;
};

if (_westCasualty > 60) exitWith {
	
	"RUSSIAN VICTORY<br />Militia has sustained more than 60% casualties." call FNC_EndMission;
	
};

if (_westCasualty > 40) exitWith {
	
	"RUSSIAN MINOR VICTORY<br />Militia has sustained more than 40% casualties." call FNC_EndMission;
	
};

if ((!alive transf1) && (!alive transf2) && (!alive transf3) && (!alive transf4)) exitwith {

	"MISSION SUCCESS:<br /> All transformers destroyed in objective!" call FNC_EndMission;
	
};

if ((!alive transf1) OR (!alive transf2) OR (!alive transf3) OR (!alive transf4)) exitwith {

	"PARTIAL SUCCESS:<br /> Some of the transformers in the objective were destroyed!" call FNC_EndMission;

};

if ((alive transf1) && (alive transf2) && (alive transf3) && (alive transf4)) exitwith {

	"MINOR FAILURE:<br /> None of the transformers in the objective was destroyed!" call FNC_EndMission;

};