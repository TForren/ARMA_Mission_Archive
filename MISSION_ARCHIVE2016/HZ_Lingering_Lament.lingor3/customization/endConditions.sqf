_westCasualty = "GAL" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"

vehcount = ({(_x isKindOf "rhsusf_m113tank_base") && (_x distance (getmarkerpos "end") < 150)} count vehicles);
//hint format ["CHECKED FOR M113s\nFOUND %1 OF THE FUCKING THINGS",vehcount];
publicvariable "vehcount";
	
//Good ol time limit
if ((time / 60) >= FW_TimeLimit && FW_TimeLimit != 0) exitWith { //It is recommended that you do not remove the time limit end condition 

	if (_westCasualty >= 60) exitWith 
	{
	"With no time remaining for the operation, the breakthrough was unsuccessful. The GAL QRF has also taken heavy casualties<br/><br/>FAILURE<br/>" call FNC_EndMission;
	};
	if (_westCasualty < 60) exitWith 
	{
	"With no time remaining for the operation, the breakthrough was unsuccessful.<br/><br/>FAILURE<br/>" call FNC_EndMission;
	};

}; // End time limit

if (_westCasualty >= 85) exitWith 
{
	"The GAL have taken heavy casualties and cannot continue the operation.<br/><br/>FAILURE<br/>" call FNC_EndMission;
};

if (vehcount > 0) exitWith
{
	"the Government Army of Lingor M113 QRF has successfully broken out of the AFL encirclement with " + str vehcount + "x M113s.<br/><br/>MISSION VICTORY<br/>" call FNC_EndMission;
};


sleep 70;
